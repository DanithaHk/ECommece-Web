<%@ page import="lk.ijse.ecommeceweb.DTO.ProductDto" %><%--
  Created by IntelliJ IDEA.
  User: User
  Date: 1/23/2025
  Time: 8:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="lk.ijse.ecommeceweb.DTO.ProductDto" %>
<%@ page import="java.util.List" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <style>
        .featured{
            margin-top: 15rem;
        }
        .img-mystery{
            width: 175px;
            height: 236px;
            margin-top: 44px;
            margin-left: 44px;
        }

    </style>
    <!--
      - primary meta tags
    -->
    <title>Booken - Get Your New Book Collections</title>
    <meta name="title" content="Booken - Get Your New Book Collections">
    <meta name="description" content="This is a Book eCommerce html template made by codewithsadee">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">


    <!--
      - favicon
    -->
    <link rel="shortcut icon" href="./favicon.svg" type="image/svg+xml">

    <!--
      - custom css link
    -->
    <link rel="stylesheet" href="assets/css/product.css">

    <!--
      - google font link
    -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
            href="https://fonts.googleapis.com/css2?family=Jost:wght@400;500;600&family=Work+Sans:wght@400;500;700&display=swap"
            rel="stylesheet">



</head>

<body id="top">

<!--
  - #HEADER
-->


<header class="header" data-header>
    <div class="container">

        <div class="overlay" data-overlay></div>

        <a href="#" class="logo">
            <img src="./assets/images/logo.jpg" width="100" height="80" alt="Footcap logo">
        </a>

        <button class="nav-open-btn" data-nav-open-btn aria-label="Open Menu">
            <ion-icon name="menu-outline"></ion-icon>
        </button>

        <nav class="navbar" data-navbar>

            <button class="nav-close-btn" data-nav-close-btn aria-label="Close Menu">
                <ion-icon name="close-outline"></ion-icon>
            </button>

            <!-- <a href="#" class="logo">
              <img src="/assets/images/360_F_645648541_cIh9efc38XC04EUMMjf8QzFAreGm7K8F.webp" width="190" height="50" alt="Footcap logo">
            </a> -->

            <ul class="navbar-list">

                <li class="navbar-item">
                    <a href="index.jsp" class="navbar-link">Home</a>
                </li>

                <li class="navbar-item">
                    <a href="about.jsp" class="navbar-link">About</a>
                </li>

                <li class="navbar-item">
                    <a href="#product" class="navbar-link">Categories</a>
                </li>


                <li class="navbar-item">
                    <a href="contact.jsp" class="navbar-link">Contact</a>
                </li>

                <li class="navbar-item">
                    <a href="contact.jsp" class="navbar-link">Products</a>
                </li>

            </ul>

            <ul class="nav-action-list">

                <li>
                    <button class="nav-action-btn">
                        <ion-icon name="search-outline" aria-hidden="true"></ion-icon>

                        <span class="nav-action-text">Search</span>
                    </button>
                </li>

                <li>
                    <a href="login.jsp" class="nav-action-btn">
                        <ion-icon name="person-outline" aria-hidden="true"></ion-icon>

                        <span class="nav-action-text">Login / Register</span>
                    </a>
                </li>


                <li>
                    <button class="nav-action-btn" id="btnCard">
                        <ion-icon name="bag-outline" aria-hidden="true"></ion-icon>
                        <data class="nav-action-text"   value="318.00">cart</data>


                    </button>
                </li>

            </ul>

        </nav>

    </div>

</header>



<main>
    <article>


        <!--
          - #FEATURED COLLECTION
        -->


        <div class="container mt-5">
            <h1 class="text-center">Product</h1>

            <hr/>
            <div class="d-flex ">
            <button type="button" class="btn btn-primary mb-3 me-2 text-right" data-bs-toggle="modal"
                    data-bs-target="#studentModal">
                Add New Product
            </button>
           <button type="button" class="btn btn-primary mb-3 text-end" onclick="window.location.href='<%= request.getContextPath() %>/productAll'">
                All Products
            </button>
        </div>


            <!--     add product  modal-->
            <div class="modal fade" id="studentModal" tabindex="-1" aria-labelledby="studentModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="container m-2">
                            <form action="product" method="post" >
                                <div class="mb-3">
                                    <label for="name" class="form-label">Name</label>
                                    <input type="text" class="form-control" name="productName" id="name">
                                </div>
                                <div class="mb-3">
                                    <label for="description" class="form-label">description</label>
                                    <input type="text" class="form-control" name="description" id="description">
                                </div>
                                <div class="mb-3">
                                    <label for="unitPrice" class="form-label">Unit Price</label>
                                    <input type="number" class="form-control" name="price" id="unitPrice">
                                </div>
                                <div class="mb-3">
                                    <label for="quntaty" class="form-label">Quntaty</label>
                                    <input type="number" class="form-control" name="quantity" id="quntaty">
                                </div>
                                <div class="mb-3">
                                    <label for="categoryID" class="form-label">Catagary ID</label>
                                    <input type="number" class="form-control" name="categoryID" id="categoryID">
                                </div>

                                <div class="mb-3">
                                    <label for="img" class="form-label">Attach Product Image</label>
                                    <input type="file"  class="form-control" name="url" id="img" required/>
                                </div>
                                <button type="submit" class="btn btn-success" onclick="return confirm('Are you sure Do you want to add this product?');">Add Product</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <%
                String message = request.getParameter("message");
                if (message != null && !message.isEmpty()) {
            %>
            <script>
                alert("<%= message %>");
            </script>
            <%
                }
            %>
            <%
                String error = request.getParameter("error");
                if (error != null) {
            %>
            <script>
                alert("<%= error %>");
            </script>
            <%
                }
            %>
            <!-- Update student Modal -->
            <div class="modal fade" id="updateStudentModal" tabindex="-1" aria-labelledby="updateStudentModalLabel"
                 aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="container m-2">
                            <form>
                                <div class="mb-3">
                                    <label for="updated_product_id" class="form-label">Product Id</label>
                                    <input type="text" class="form-control" id="updated_product_id" readonly>
                                </div>
                                <div class="mb-3">
                                    <label for="updated_name" class="form-label">Name</label>
                                    <input type="text" class="form-control" id="updated_name">
                                </div>
                                <div class="mb-3">
                                    <label for="updated_desc" class="form-label">Description</label>
                                    <input type="text" class="form-control" id="updated_desc">
                                </div>
                                <div class="mb-3">
                                    <label for="updated_price" class="form-label">Unit Price</label>
                                    <input type="number" class="form-control" id="updated_price">
                                </div>
                                <div class="mb-3">
                                    <label for="updated_qty" class="form-label">Qunataty</label>
                                    <input type="number" class="form-control" id="updated_qty">
                                </div>
                                <div class="mb-3">
                                    <label for="updated_catagary" class="form-label">Catagary</label>
                                    <select class="form-select form-select-lg mb-3" aria-label="Large select example" id="updated_catagary">
                                        <option selected>Catagary</option>
                                        <option value="1">Shoues</option>
                                        <option value="2">Clothes</option>
                                        <option value="3">Juweraly</option>
                                    </select>
                                </div>
                                <div class="mb-3">
                                    <label for="updated_img" class="form-label">Attach Product Image</label>
                                    <input type="file"  class="form-control" name="uploadLogo" id="updated_img" required/>
                                </div>
                                <button id="btn_update_student" type="submit" class="btn btn-primary"onclick="return confirm('Are you sure Do you want to Update this product?');">Update</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            </table>
        </div>
        <%
            List<ProductDto> productList = (List<ProductDto>) request.getAttribute("productDtoList");
            if (productList != null && !productList.isEmpty()) {
                System.out.println(productList+"jsp");

        %>
        <div class="container">
        <table class="table table-bordered ">
            <thead>
            <tr>
                <td>ID</td>
                <td>Description</td>
                <td>Image</td>
                <td>Name</td>
                <td>Price</td>
                <td>Qty</td>
                <td>Category ID</td>
                <td>Actions</td>
            </tr>
            </thead>
            <tbody>
            <%
                for (ProductDto product : productList) {

            %>
            <tr>
                <td><%= product.getProductId() %>
                </td>
                <td><%= product.getDescription() %>
                </td>
                <td><%= product.getUrl() %>
                </td>
                <td><%= product.getProductName() %>
                </td>
                <td><%= product.getPrice() %>
                </td>
                <td><%= product.getQuantity() %>
                </td>
                <td><%= product.getCategoryid() %>
                </td>
                <td class="d-flex">
                    <button type="button" class="btn btn-primary me-2 " data-bs-toggle="modal"
                            data-bs-target="#updateStudentModal" onclick="updateProduct('<%= product.getProductId() %>',
                            '<%= product.getProductName() %>',
                            '<%= product.getDescription() %>',
                            '<%= product.getQuantity() %>',
                            '<%= product.getPrice() %>',
                            '<%= product.getUrl() %>',
                            '<%= product.getCategoryid() %>')">update
                    </button>
                    <button type="button" class="btn btn-danger " onclick="deleteProduct('<%= product.getProductId() %>')">Delete</button>
                </td>

            </tr>
            <% } %>
            </tbody>
        </table>

        <%
        } else {
        %>
        <p>No product found.</p>
        <%
            }
        %></div>
        </section>
    </article>
</main>

<script src="./assets/js/app.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>



<!--
  - #BACK TO TOP
-->

<a href="#top" class="back-top-btn" aria-label="back to top" data-back-top-btn>
    <ion-icon name="chevron-up" aria-hidden="true"></ion-icon>
</a>
<!--
  - custom js link
-->
<script src="./assets/js/script.js" defer></script>

<!--
  - ionicon link
-->
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>
</html>
