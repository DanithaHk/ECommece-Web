package lk.ijse.ecommeceweb.Serverlete;

import jakarta.annotation.Resource;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import javax.sql.DataSource;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name = "CategoryUpdateServlet", value = "/category-update")
public class CategoryUpdateServlet extends HttpServlet {
    @Resource(name = "java:comp/env/jdbc/pool")
    private DataSource dataSource;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Category update servlet");

        String idParam = req.getParameter("id");
        String name = req.getParameter("name");
        String description = req.getParameter("description");
        String url = req.getParameter("url");

        System.out.println(idParam + " " + name);

        try {

            try (Connection connection = dataSource.getConnection();
                 PreparedStatement preparedStatement = connection.prepareStatement("UPDATE category SET name = ? , description = ?, image_url = ? WHERE category_id = ?")) {

                preparedStatement.setString(1, name);
                preparedStatement.setString(4, idParam);
                preparedStatement.setString(2, description);
                preparedStatement.setString(3, url);

                int i = preparedStatement.executeUpdate();
                if (i > 0) {
                    resp.sendRedirect("catagory.jsp");
                } else {
                    resp.sendRedirect("catagory.jsp");
                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }catch (NumberFormatException e){
            resp.sendRedirect("catagory.jsp");
        }

    }
}
