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
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bootstrap 5 Simple Admin Dashboard</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css" integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/chartist.js/latest/chartist.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .sidebar {
            position: fixed;
            top: 0;
            bottom: 0;
            left: 0;
            z-index: 100;
            padding: 90px 0 0;
            box-shadow: inset -1px 0 0 rgba(0, 0, 0, .1);
            z-index: 99;
        }

        @media (max-width: 767.98px) {
            .sidebar {
                top: 11.5rem;
                padding: 0;
            }
        }

        .navbar {
            box-shadow: inset 0 -1px 0 rgba(0, 0, 0, .1);
        }

        @media (min-width: 767.98px) {
            .navbar {
                top: 0;
                position: sticky;
                z-index: 999;
            }
        }

        .sidebar .nav-link {
            color: #333;
        }

        .sidebar .nav-link.active {
            color: #0d6efd;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-light bg-light p-3">
    <div class="d-flex col-12 col-md-3 col-lg-2 mb-2 mb-lg-0 flex-wrap flex-md-nowrap justify-content-between">
        <a class="navbar-brand" href="#">
            Aduwata.lk
        </a>

</nav>
<div class="container-fluid">
    <div class="row">
        <nav id="sidebar" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
            <div class="position-sticky">
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a class="nav-link " aria-current="page" href="adminDashbord.jsp">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-home"><path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path><polyline points="9 22 9 12 15 12 15 22"></polyline></svg>
                            <span class="ml-2">Dashboard</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="#">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-file"><path d="M13 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V9z"></path><polyline points="13 2 13 9 20 9"></polyline></svg>
                            <span class="ml-2">Orders</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="catagory.jsp">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-shopping-cart"><circle cx="9" cy="21" r="1"></circle><circle cx="20" cy="21" r="1"></circle><path d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"></path></svg>
                            <span class="ml-2">Catogary</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a class="nav-link active" href="#">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-users"><path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path><circle cx="9" cy="7" r="4"></circle><path d="M23 21v-2a4 4 0 0 0-3-3.87"></path><path d="M16 3.13a4 4 0 0 1 0 7.75"></path></svg>
                            <span class="ml-2">Product</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="user.jsp">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-bar-chart-2"><line x1="18" y1="20" x2="18" y2="10"></line><line x1="12" y1="20" x2="12" y2="4"></line><line x1="6" y1="20" x2="6" y2="14"></line></svg>
                            <span class="ml-2">users</span>
                        </a>
                    </li>


                    <li class="nav-item">
                        <button class="btn btn-sm btn-danger ml-3 mt-2">
                            Log Out
                        </button>

                    </li>
                </ul>
            </div>
        </nav>
        <main class="col-md-9 ml-sm-auto col-lg-10 px-md-4 py-4">
            <button type="button" class="btn btn-primary mb-3 me-2 " data-bs-toggle="modal"
                    data-bs-target="#studentModal">
                Add New Products
            </button>
            <button type="button" class="btn btn-primary mb-3 text-end"  onclick="window.location.href='/EcommeceWeb_war_exploded/productAll';">
                All Products
            </button>
            <%-- Display Product List --%>
            <%
                List<ProductDto> productList = (List<ProductDto>) request.getAttribute("productDtoList");
                if (productList != null && !productList.isEmpty()) {
            %>

            <div class="row">
                <div class="col-12 col-xl-8 mb-4 mb-lg-0">
                    <div class="card">
                        <h5 class="card-header">Products</h5>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                    <tr>
                                        <th scope="col">Id</th>
                                        <th scope="col">Name</th>
                                        <th scope="col">Description</th>
                                        <th scope="col">Price</th>
                                        <th scope="col">Qty</th>
                                        <th scope="col">Image_url</th>
                                        <th scope="col">CategoryID</th>
                                        <th scope="col"></th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <% for (ProductDto product : productList) { %>
                                    <tr>
                                        <th scope="row"><%= product.getProductId() %></th>
                                        <td><%= product.getProductName() %></td>
                                        <td><%= product.getDescription() %></td>
                                        <td><%= product.getPrice() %></td>
                                        <td><%= product.getQuantity() %></td>
                                        <td><%= product.getUrl() %></td>
                                        <td><%= product.getCategoryid() %></td>
                                        <td> <button class="btn btn-warning btn-sm"

                                                     onclick="editProduct('<%= product.getProductId() %>','<%= product.getProductName() %>', '<%= product.getPrice() %>', '<%= product.getQuantity() %>', '<%= product.getDescription() %>', '<%= product.getCategoryid() %>', '<%= product.getUrl() %>')">
                                            Edit
                                        </button>
                                            <button class="btn btn-danger btn-sm" onclick="deleteProduct('<%= product.getProductId() %>')">
                                                Delete
                                            </button>
                                        </td>
                                    </tr>
                                    <% } %>

                                    </tbody>
                                </table>
                                <% } else { %>
                                <p>No products found.</p>
                                <% } %>
                            </div>

                        </div>

                    </div>
                </div>

            </div>

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
            <!-- Update Product Modal -->
            <div class="modal fade" id="updateProductModal" tabindex="-1" aria-labelledby="updateProductModalLabel"
                 aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="updateProductModalLabel" style="color: #1C1F25">Update
                                Product</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form id="updateProductForm" action="product-update" method="post">
                                <div class="mb-3">
                                    <label for="update_product_id" class="form-label">Product ID</label>
                                    <input type="text" class="form-control" name="update_product_id"
                                           id="update_product_id">
                                </div>
                                <div class="mb-3">
                                    <label for="update_product_name" class="form-label">Product Name</label>
                                    <input type="text" class="form-control" name="update_product_name"
                                           id="update_product_name">
                                </div>
                                <div class="mb-3">
                                    <label for="update_product_description" class="form-label">Description</label>
                                    <input type="text" class="form-control" name="update_product_description"
                                           id="update_product_description" placeholder="Enter product description"
                                           required>
                                </div>
                                <div class="mb-3">
                                    <label for="update_product_price" class="form-label">Price</label>
                                    <input type="number" class="form-control" name="update_product_price"
                                           id="update_product_price" placeholder="Enter product price" required>
                                </div>
                                <div class="mb-3">
                                    <label for="update_product_quantity" class="form-label">Quantity</label>
                                    <input type="number" class="form-control" name="update_product_quantity"
                                           id="update_product_quantity" placeholder="Enter product quantity"
                                           required>
                                </div>
                                <div class="mb-3">
                                    <label for="update_product_category" class="form-label">Category ID</label>
                                    <input type="text" class="form-control" name="update_product_category"
                                           id="update_product_category" placeholder="Enter category ID" required>
                                </div>
                                <div id="current_product_image_wrapper" class="mb-3" style="display: none;">
                                    <label class="form-label">Current Product Image</label>
                                    <img id="current_product_image" src="" name="current_product_image"
                                         alt="Product Image" style="width: 100%; max-height: 200px;">
                                </div>
                                <div class="form-group mb-4">
                                    <label>Attach New Product Image</label>
                                    <input type="file" id="update_product_image" name="update_product_image"/>
                                </div>
                                <div class="d-flex justify-content-end">
                                    <button type="button" class="btn btn-secondary me-2" data-bs-dismiss="modal">
                                        Cancel
                                    </button>
                                    <button id="btn_update_product" type="submit" class="btn btn-primary">Update
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <footer class="pt-5 d-flex justify-content-between">
                <span>Copyright © 2025 </span>
                <ul class="nav m-0">
                    <li class="nav-item">
                        <a class="nav-link text-secondary" aria-current="page" href="#">Privacy Policy</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-secondary" href="#">Terms and conditions</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-secondary" href="#">Contact</a>
                    </li>
                </ul>
            </footer>
        </main>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js" integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/chartist.js/latest/chartist.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
    const editProduct = (productID, productName, productPrice, productQuantity, productDescription, productCategory, productImageUrl) => {
        // Populate other modal fields
        document.getElementById('update_product_id').value = productID || '';
        document.getElementById('update_product_name').value = productName || '';
        document.getElementById('update_product_price').value = productPrice || '';
        document.getElementById('update_product_quantity').value = productQuantity || '';
        document.getElementById('update_product_description').value = productDescription || '';
        document.getElementById('update_product_category').value = productCategory || '';

        // Show the current image (if any) in an <img> element
        if (productImageUrl) {
            document.getElementById('current_product_image').src = productImageUrl;
            document.getElementById('current_product_image_wrapper').style.display = 'block'; // Make sure it's visible
        } else {
            document.getElementById('current_product_image_wrapper').style.display = 'none'; // Hide if no image
        }

        // Show the modal
        $('#updateProductModal').modal('show');
    };

    const deleteProduct = (id) => {
        if (confirm('Are you sure you want to delete this product?')) {
            fetch('/EcommeceWeb_war_exploded/product-delete-servlet', {
                method: 'POST',
                body: new URLSearchParams({productID: id}),
                headers: {'Content-Type': 'application/x-www-form-urlencoded'}
            }).then(response => {
                if (response.ok) {
                    window.location.reload();
                } else {
                    alert('Error deleting product');
                }
            }).catch(err => console.error(err));
        }
    };
</script>

</body>
</html>
