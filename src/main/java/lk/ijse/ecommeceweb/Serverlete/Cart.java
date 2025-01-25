package lk.ijse.ecommeceweb.Serverlete;

import jakarta.annotation.Resource;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.ecommeceweb.DTO.CartDto;
import lk.ijse.ecommeceweb.DTO.UserDto;

import javax.sql.DataSource;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "Cart", urlPatterns = "/cart")
public class Cart extends HttpServlet {
    @Resource(name = "java:comp/env/jdbc/pool")
    private DataSource dataSource;
    ServletContext context = getServletContext();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<CartDto> cartDtoList = new ArrayList<>();
        UserDto user = (UserDto) context.getAttribute("user");

        try {
            Connection connection = dataSource.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM cart");
            ResultSet resultSet = preparedStatement.executeQuery();
           while (resultSet.next()) {
               String cartId =resultSet.getString(1);
               String userId =resultSet.getString(2);
               String productId =resultSet.getString(3);
               String quantity =resultSet.getString(4);
               String url = resultSet.getString(5);
               String productName = resultSet.getString(6);
               CartDto cartDto = new CartDto(cartId,userId,productId,quantity,url,productName);
               cartDtoList.add(cartDto);
               System.out.println(cartDto +"cart not work");
           }
           if (user.getUserId().equals(cartDtoList.get(0).getUserId())) {
               req.setAttribute("cartDtoList", cartDtoList);

// Forward the request to the JSP
               RequestDispatcher dispatcher = req.getRequestDispatcher("cart.jsp");
               dispatcher.forward(req, resp);
           }else {

           }
            ;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
