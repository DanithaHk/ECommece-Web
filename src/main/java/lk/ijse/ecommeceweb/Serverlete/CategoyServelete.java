package lk.ijse.ecommeceweb.Serverlete;

import jakarta.annotation.Resource;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.ecommeceweb.DTO.CategoryDto;

import javax.sql.DataSource;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CategoryServelete", value = "/category")

public class CategoyServelete extends HttpServlet {
    @Resource(name = "java:comp/env/jdbc/pool")
    private DataSource dataSource;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("productName");
        String description = req.getParameter("description");
        String url = req.getParameter("url");
        System.out.println(name + description + url);
        try {
            Connection connection = dataSource.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO category (name, description, image_url) VALUES (?, ?, ?)");
            preparedStatement.setString(1, name);
            preparedStatement.setString(2, description);
            preparedStatement.setString(3, url);
            int i = preparedStatement.executeUpdate();
            if (i > 0) {
                resp.sendRedirect("catagory.jsp?message=Category Saved Successfully");
            } else {
                resp.sendRedirect("catagory.jsp?message=Category Saved Failed");
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }


}
