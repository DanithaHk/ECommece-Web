package lk.ijse.ecommeceweb.Serverlete;

import jakarta.annotation.Resource;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.ecommeceweb.DTO.ProductDto;
import lk.ijse.ecommeceweb.DTO.UserDto;

import javax.sql.DataSource;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "AddToCard", value = "/addToCard")

public class AddToCard extends HttpServlet {
    @Resource(name = "java:comp/env/jdbc/pool")
    DataSource dataSource;

//    @Override
//    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//
//        System.out.println("AddToCard Servelet");
//
//        String productId = req.getParameter("productId");
//        System.out.println(productId);
//        List<ProductDto> productDtos = new ArrayList<>();
//        ServletContext context = getServletContext();
//        try {
//            Connection connection = dataSource.getConnection();
//            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM product WHERE product_id = ?");
//            preparedStatement.setString(1, productId);
//            ResultSet resultSet = preparedStatement.executeQuery();
//            while (resultSet.next()) {
//                String id = resultSet.getString(1);
//                String productName = resultSet.getString(3);
//                String description = resultSet.getString(4);
//                String quantity = resultSet.getString(6);
//                String price = resultSet.getString(5);
//                String url = resultSet.getString(7);
//                String catagoryId = resultSet.getString(2);
//
//                ProductDto productDto = new ProductDto(id, productName, description, quantity, price, url, catagoryId);
//                productDtos.add(productDto);
//            }
//            UserDto user = (UserDto) req.getServletContext().getAttribute("user");
//
//
//            if (user == null || user.getEmail() == null || user.getEmail().isEmpty()) {
//                    resp.sendRedirect("login.jsp?error=" + URLEncoder.encode("Please log in to continue.", "UTF-8"));
//                } else {
//                    req.setAttribute("email", user.getEmail());
//                    req.getRequestDispatcher("jewaraly.jsp").forward(req, resp);
//                }
//
//
//
//            String email =user.getEmail();
//            System.out.println(email);
//        } catch (SQLException e) {
//            throw new RuntimeException(e);
//        }
//    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("AddToCart Servlet");

        String productId = req.getParameter("productId");
        String jspProductName = req.getParameter("productName");
        System.out.println("Product ID: " + productId);
        System.out.println("product Name "+jspProductName);
        List<ProductDto> productDtoList = new ArrayList<>();
        ServletContext context = getServletContext();
        String quantity = "";
        String url = "";
        String productName = "";
        try (Connection connection = dataSource.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM product")) {

//            preparedStatement.setString(1, productId);
            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                while (resultSet.next()) {
                    String id = resultSet.getString(1);
                    productName = resultSet.getString(3);
                    String description = resultSet.getString(4);
                     quantity = resultSet.getString(6);
                    String price = resultSet.getString(5);
                     url = resultSet.getString(7);
                    String categoryId = resultSet.getString(2);
                    System.out.println(productName+"productName");

                    ProductDto productDto = new ProductDto(id, productName, description, quantity, price, url, categoryId);
                    productDtoList.add(productDto);
                }
            }

            // Check user authentication
            UserDto user = (UserDto) context.getAttribute("user");
            if (user == null || user.getEmail() == null || user.getEmail().isEmpty()) {
                System.out.println("User object is null.side servelet");
                resp.sendRedirect("login.jsp?error=" + URLEncoder.encode("Please log in to continue.", "UTF-8"));
                return; // Stop further execution
            }

            // Pass product details and email to JSP
            req.setAttribute("productDtoList", productDtoList);
            req.setAttribute("email", user.getEmail());
            req.getRequestDispatcher("jewaraly.jsp").forward(req, resp);
            String userId = user.getUserId();

            saveToCart(req, resp, userId, productId, quantity, url, jspProductName);
            req.setAttribute("productDtoList", productDtoList);
            // Forward the request to the JSP
            RequestDispatcher dispatcher = req.getRequestDispatcher("jewaraly.jsp");
            dispatcher.forward(req, resp);
        } catch (SQLException e) {
            e.printStackTrace();
            resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Database error occurred.");
        }

    }



    public void saveToCart (HttpServletRequest req, HttpServletResponse resp , String userId, String productId, String quantity , String url,String productName) throws SQLException, IOException {
        Connection connectionSave = dataSource.getConnection();
        PreparedStatement preparedStatementSave = connectionSave.prepareStatement("INSERT INTO cart (user_id, product_id, quantity,image,product_name) VALUES (?, ?, ?,?,?)");
        preparedStatementSave.setString(1, userId);
        preparedStatementSave.setString(2, productId);
        preparedStatementSave.setString(3, quantity);
        preparedStatementSave.setString(4, url);
        preparedStatementSave.setString(5, productName);
        int i = preparedStatementSave.executeUpdate();
        String alertMessage = "Item added TO Cart!";
        String errortMessage = "Item added TO Cart failed!";
        if (i > 0) {
            System.out.println("Item added TO Cart!");

            resp.sendRedirect("jewaraly.jsp?message=" + URLEncoder.encode(alertMessage, "UTF-8"));


        } else {

            resp.sendRedirect("jewaraly.jsp?error=" + URLEncoder.encode(errortMessage, "UTF-8"));
        }
    }
}
