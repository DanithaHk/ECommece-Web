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

@WebServlet (name = "productAllServerlete", value = "/productAll")
public class ProductAllServerlete extends HttpServlet {
    @Resource(name = "java:comp/env/jdbc/pool")
    private DataSource dataSource;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<ProductDto> productDtoList = new ArrayList<>();
        try {
            Connection connection = dataSource.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM product");
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                String id = resultSet.getString(1);
                String catagoryId = resultSet.getString(2);
                String productName = resultSet.getString(3);
                String description = resultSet.getString(4);
                String quantity = resultSet.getString(6);
                String price = resultSet.getString(5);
                String url = resultSet.getString(7);
                System.out.println(id + catagoryId + productName + description + quantity + price + url);

                ProductDto productDto = new ProductDto(id, productName, description, quantity, price, url, catagoryId);
                productDtoList.add(productDto);
            }
            req.setAttribute("productDtoList", productDtoList);

// Forward the request to the JSP
            RequestDispatcher dispatcher = req.getRequestDispatcher("product.jsp");
            dispatcher.forward(req, resp);

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
