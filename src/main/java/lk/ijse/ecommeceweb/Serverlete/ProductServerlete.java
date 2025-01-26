package lk.ijse.ecommeceweb.Serverlete;

import jakarta.annotation.Resource;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.ecommeceweb.DTO.ProductDto;

import javax.sql.DataSource;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "product", value = "/product")

public class ProductServerlete extends HttpServlet {

    @Resource(name = "java:comp/env/jdbc/pool")
    private DataSource dataSource;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String productName = req.getParameter("productName");
        String description = req.getParameter("description");
        String quantity = req.getParameter("quantity");
        String price = req.getParameter("price");
        String url = req.getParameter("url");
        String categoryID = req.getParameter("categoryID");

        System.out.println(productName + description + quantity + price + url + categoryID);

        try {
            Connection connection = dataSource.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO product (category_Id,name, description, price, stock_quantity, image_url ) VALUES (?, ?, ?, ?, ?, ?)");
            preparedStatement.setString(2, productName);
            preparedStatement.setString(3, description);
            preparedStatement.setString(5, quantity);
            preparedStatement.setString(4, price);
            preparedStatement.setString(6, url);
            preparedStatement.setString(1, categoryID);
            int i = preparedStatement.executeUpdate();
            if (i > 0) {
                resp.sendRedirect("product.jsp?message=Product Saved Successfully");
            } else {
                resp.sendRedirect("product.jsp?message=Product Saved Failed");
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }


}
