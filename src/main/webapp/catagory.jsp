<%@ page import="lk.ijse.ecommeceweb.DTO.CategoryDto" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: User
  Date: 1/25/2025
  Time: 11:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    </div>

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
                        <a class="nav-link active" href="#">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-shopping-cart"><circle cx="9" cy="21" r="1"></circle><circle cx="20" cy="21" r="1"></circle><path d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"></path></svg>
                            <span class="ml-2">Catogary</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="product.jsp">
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
                Add Catagory
            </button>
            <button type="button"  class="btn btn-primary mb-3 " onclick="window.location.href='/EcommeceWeb_war_exploded/category-all';" >
                All Catagries
            </button>
            <div class="row">
                <div class="col-12 col-xl-8 mb-4 mb-lg-0">
                    <div class="card">
                        <h5 class="card-header">Catagory</h5>
                        <div class="card-body">
                            <div class="table-responsive">
                                <% List<CategoryDto> categoryDtoList = (List<CategoryDto>) request.getAttribute("catagoryList");
                                    if(categoryDtoList!= null && !categoryDtoList.isEmpty()){
                                %>
                                <table class="table">
                                    <thead>
                                    <tr>
                                        <th scope="col">Id</th>
                                        <th scope="col">Name</th>
                                        <th scope="col">Description</th>
                                        <th scope="col">Image_url</th>
                                        <th scope="col"></th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <%
                                        for (CategoryDto category : categoryDtoList) {
                                            System.out.println(category.getCategoryid());
                                            System.out.println(category.getCategoryname());
                                            System.out.println(category.getDescription());
                                            System.out.println(category.getUrl());
                                    %>
                                    <tr>
                                        <th scope="row"><%=category.getCategoryid()%></th>
                                        <td><%=category.getCategoryname()%></td>
                                        <td><%=category.getDescription()%></td>
                                        <td><%=category.getUrl()%></td>
                                        <td style="display: flex;flex-direction: row; ">
                                            <button class="btn btn-warning btn-sm"
                                                    style="padding: 2px 2px;display: flex;flex-direction: row; border-radius: 0; margin-right: 6px;"
                                                    onclick="editCategory('<%= category.getCategoryid() %>','<%= category.getCategoryname() %>','<%= category.getDescription() %>','<%= category.getUrl() %>')">
                                                Edit
                                            </button>

                                            <button class="btn btn-danger btn-sm"
                                                    style="padding: 2px 2px; display: flex; flex-direction: row; border-radius: 0;"
                                                    onclick="deleteCategory('<%= category.getCategoryid() %>')">
                                                Delete
                                            </button>
                                        </td>
                                    </tr>

                                    <%
                                        }
                                    %>

                                    </tbody>
                                </table>
                            </div>
                            <%
                            } else {
                            %>
                            <p>No user found.</p>
                            <%
                                }
                            %>

                        </div>

                    </div>

                </div>

            </div>

            <div class="modal fade" id="studentModal" tabindex="-1" aria-labelledby="studentModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="container m-2">
                            <form action="category" method="post" >
                                <div class="mb-3">
                                    <label for="name" class="form-label">Name</label>
                                    <input type="text" class="form-control" name="productName" id="name">
                                </div>
                                <div class="mb-3">
                                    <label for="description" class="form-label">description</label>
                                    <input type="text" class="form-control" name="description" id="description">
                                </div>

                                <div class="mb-3">
                                    <label for="img" class="form-label">Attach Catagory Image</label>
                                    <input type="file"  class="form-control" name="url" id="img" required/>
                                </div>
                                <button type="submit" class="btn btn-success" onclick="return confirm('Are you sure Do you want to add this Catagory?');">Add Catagory</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Update Product Modal -->
            <div class="modal fade" id="updateCategoryModal" tabindex="-1" aria-labelledby="updateCategoryLabel"
                 aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="updateCategoryModalLabel" style="color: #1C1F25">Update
                                Product</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form action="category-update" method="post">
                                <div class="mb-3">
                                    <label for="update_category_id" class="form-label">Product ID</label>
                                    <input type="text" class="form-control" name="id"
                                           id="update_category_id">
                                </div>
                                <div class="mb-3">
                                    <label for="update_category_name" class="form-label">Product Name</label>
                                    <input type="text" class="form-control" name="name"
                                           id="update_category_name">
                                </div>
                                <div class="mb-3">
                                    <label for="update_description" class="form-label">description</label>
                                    <input type="text" class="form-control" name="description" id="update_description">
                                </div>

                                <div class="mb-3">
                                    <label for="update_img" class="form-label">Attach Catagory Image</label>
                                    <input type="file"  class="form-control" name="url" id="update_img" required/>
                                </div>
                                <div id="current_product_image_wrapper" class="mb-3" style="display: none;">
                                    <label class="form-label">Current Product Image</label>
                                    <img id="current_product_image" src="assets/images/" name="current_product_image"
                                         alt="Product Image" style="width: 100%; max-height: 200px;">
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

    const editCategory = (categoryID, categoryName , description, productImageUrl) => {
        // Populate other modal fields
        document.getElementById('update_category_id').value = categoryID;
        document.getElementById('update_category_name').value = categoryName;
        document.getElementById('update_description').value = description;
        // document.getElementById('update_img').value = images;
        if (productImageUrl) {
            document.getElementById('current_product_image').src = productImageUrl;
            document.getElementById('current_product_image_wrapper').style.display = 'block'; // Make sure it's visible
        } else {
            document.getElementById('current_product_image_wrapper').style.display = 'none'; // Hide if no image
        }
        // Show the current image (if any) in an <img> element


        // Show the modal
        jQuery('#updateCategoryModal').modal('show');
    };


    <%--// Function to handle product deletion--%>
    <%--const deleteProduct = (productID) => {--%>
    <%--        console.log(productID)--%>
    <%--    if (confirm('Are you sure you want to delete this product?')) {--%>
    <%--        // Corrected string interpolation and redirect--%>
    <%--        window.location.href = `/AAD_Assingment_01_war_exploded/product-delete-servlet?productID=${productID}`;--%>
    <%--    }--%>
    <%--};--%>

    const deleteCategory = (id) => {
        if (confirm('Are you sure you want to delete this product?')) {
            fetch('/EcommeceWeb_war_exploded/category-delete', {
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
