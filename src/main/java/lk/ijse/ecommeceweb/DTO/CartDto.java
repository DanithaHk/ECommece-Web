package lk.ijse.ecommeceweb.DTO;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;

public class CartDto  {
    private String cartId;
    private String userId;
    private String productId;
    private String quantity;
    private String url;
    private String productName;

    public CartDto() {
    }

    public CartDto(String cartId, String userId, String productId, String quantity, String url, String productName) {
        this.cartId = cartId;
        this.userId = userId;
        this.productId = productId;
        this.quantity = quantity;
        this.url = url;
        this.productName = productName;
    }

    public String getCartId() {
        return cartId;
    }

    public void setCartId(String cartId) {
        this.cartId = cartId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }
}
