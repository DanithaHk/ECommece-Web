package lk.ijse.ecommeceweb.DTO;

public class ProductDto {
    private String productId;
    private String productName;
    private String description;
    private String quantity;
    private String price;
    private String url;
    private String categoryid;

    public ProductDto() {
    }

    public ProductDto(String productId, String productName, String description, String quantity, String price, String url, String categoryid) {
        this.productId = productId;
        this.productName = productName;
        this.description = description;
        this.quantity = quantity;
        this.price = price;
        this.url = url;
        this.categoryid = categoryid;
    }

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getCategoryid() {
        return categoryid;
    }

    public void setCategoryid(String categoryid) {
        this.categoryid = categoryid;
    }

    @Override
    public String toString() {
        return "ProductDto{" +
                "productId='" + productId + '\'' +
                ", productName='" + productName + '\'' +
                ", description='" + description + '\'' +
                ", quantity='" + quantity + '\'' +
                ", price='" + price + '\'' +
                ", url='" + url + '\'' +
                ", categoryid='" + categoryid + '\'' +
                '}';
    }
}
