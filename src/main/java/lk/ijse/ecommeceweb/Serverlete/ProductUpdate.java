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

@WebServlet(name = "ProductUpdateServlet", value = "/product-update")
public class ProductUpdate extends HttpServlet {
    @Resource(name = "java:comp/env/jdbc/pool")
    private DataSource dataSource;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Product update");

        String productIDParam = req.getParameter("update_product_id");
        String name = req.getParameter("update_product_name");
        String description = req.getParameter("update_product_description");
        String priceParam = req.getParameter("update_product_price");
        String qtyParam = req.getParameter("update_product_quantity");
        String categoryIdParam = req.getParameter("update_product_category");
        String imageUrl = req.getParameter("update_product_image");

        try {


            try (Connection connection = dataSource.getConnection();
                 PreparedStatement preparedStatement = connection.prepareStatement("UPDATE product SET category_id = ?, name = ?, description = ?, price = ?, stock_quantity = ?, image_url = ? WHERE product_id = ?")) {

                preparedStatement.setString(3, description);
                preparedStatement.setString(6, imageUrl);
                preparedStatement.setString(2,name);
                preparedStatement.setString(4, priceParam);
                preparedStatement.setString(5, qtyParam);
                preparedStatement.setString(1, categoryIdParam);
                preparedStatement.setString(7, productIDParam);

                int i = preparedStatement.executeUpdate();

                preparedStatement.close();
                connection.close();

                if (i > 0) {
                    System.out.println("Product updated successfully");
                    resp.sendRedirect("product.jsp");
                } else {
                    System.out.println("Product update failed");
                    resp.sendRedirect("product.jsp");
                }

            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        } catch (RuntimeException e) {
            throw new RuntimeException(e);
        }
    }
}
