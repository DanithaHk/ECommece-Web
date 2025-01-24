package lk.ijse.ecommeceweb.DTO;

public class CategoryDto {
    private String categoryid;
    private  String categoryname;
    private String description;
    private String url;

    public CategoryDto() {
    }

    public CategoryDto(String categoryid, String categoryname, String description, String url) {
        this.categoryid = categoryid;
        this.categoryname = categoryname;
        this.description = description;
        this.url = url;
    }

    public String getCategoryid() {
        return categoryid;
    }

    public void setCategoryid(String categoryid) {
        this.categoryid = categoryid;
    }

    public String getCategoryname() {
        return categoryname;
    }

    public void setCategoryname(String categoryname) {
        this.categoryname = categoryname;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    @Override
    public String toString() {
        return "CategoryDto{" +
                "categoryid='" + categoryid + '\'' +
                ", categoryname='" + categoryname + '\'' +
                ", description='" + description + '\'' +
                ", url='" + url + '\'' +
                '}';
    }
}
