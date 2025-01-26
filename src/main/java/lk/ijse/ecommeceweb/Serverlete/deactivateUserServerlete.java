package lk.ijse.ecommeceweb.Serverlete;

import jakarta.annotation.Resource;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import javax.sql.DataSource;
import java.io.IOException;
import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name = "deactivateUserServerlete", value = "/deactivateUser")
public class deactivateUserServerlete extends HttpServlet {
    @Resource(name = "java:comp/env/jdbc/pool")
    private DataSource dataSource;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String idParam = req.getParameter("userId");
        /*String name = req.getParameter("name");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String role = req.getParameter("role");
        System.out.println(idParam + name + email + password + role);*/
        boolean isactive = false;

        try {
            Connection connection = dataSource.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("UPDATE users SET  is_active = ? WHERE id = ?");
           /* preparedStatement.setString(1, name);
            preparedStatement.setString(2, email);
            preparedStatement.setString(3, password);
            preparedStatement.setString(4, role);*/
            preparedStatement.setBoolean(1, isactive);
            preparedStatement.setString(2, idParam);
            int i = preparedStatement.executeUpdate();
            if (i > 0) {
                String alertMessage = "User Deactivated Successfully";
                resp.sendRedirect("user.jsp?message=" + URLEncoder.encode(alertMessage, "UTF-8"));
            } else {
                String errorMessage = "User Deactivation Failed";
                resp.sendRedirect("user.jsp?error=" + URLEncoder.encode(errorMessage, "UTF-8"));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
