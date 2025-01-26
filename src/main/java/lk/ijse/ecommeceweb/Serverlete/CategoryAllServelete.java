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
@WebServlet(name = "CategoryAllServelete", value = "/category-all")
public class CategoryAllServelete extends HttpServlet {
    @Resource(name = "java:comp/env/jdbc/pool")
    private DataSource dataSource;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            System.out.println("Category all servlet");
            List<CategoryDto> categoryList = new ArrayList<>();

            try (Connection connection = dataSource.getConnection();
                 PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM category ORDER BY category_id ASC;");
                 ResultSet resultSet = preparedStatement.executeQuery()) {

                while (resultSet.next()) {
                    CategoryDto category = new CategoryDto(
                            resultSet.getString("category_id"),
                            resultSet.getString("name"),
                            resultSet.getString("description"),
                            resultSet.getString("image_url")
                    );
                    System.out.println("Catagory: " + category);
                    categoryList.add(category);
                }
                req.setAttribute("catagoryList", categoryList);
                RequestDispatcher dispatcher = req.getRequestDispatcher("catagory.jsp");
                dispatcher.forward(req, resp);
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }

}
