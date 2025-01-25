<%@ page import="lk.ijse.ecommeceweb.DTO.ProductDto" %>
<%@ page import="java.util.List" %>
<%@ page import="lk.ijse.ecommeceweb.DTO.UserDto" %>
<%@ page import="java.net.URLEncoder" %><%--
  Created by IntelliJ IDEA.
  User: User
  Date: 1/20/2025
  Time: 8:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MDG.LK</title>

    <!--
      - favicon
    -->
    <!-- <link rel="shortcut icon" href="./favicon.svg" type="image/svg+xml"> -->

    <!--
      - custom css link
    -->
    <link rel="stylesheet" href="assets/css/jewaraly.css">

    <!--
      - google font link
    -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
            href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@300;400;500;600;700&family=Roboto:wght@400;500;700&display=swap"
            rel="stylesheet">

    <!--
      - preload banner
    -->
    <link rel="preload" href="./assets/images/hero-banner.png" as="image">

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

            <a href="#" class="logo">
                <img src="/assets/images/360_F_645648541_cIh9efc38XC04EUMMjf8QzFAreGm7K8F.webp" width="190" height="50"
                     alt="Footcap logo">
            </a>

            <ul class="navbar-list">

                <li class="navbar-item">
                    <a href="#" class="navbar-link">Home</a>
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
                    <a href="product.jsp" class="navbar-link">Products</a>
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
                        <data class="nav-action-text" value="318.00">cart</data>


                    </button>
                </li>

            </ul>

        </nav>

    </div>
</header>


<section class="section product">
    <div class="container">

        <h2 class="h2 section-title">Jewellery</h2>


        <ul class="product-list">




            <%
                List<ProductDto> productList = (List<ProductDto>) request.getAttribute("productDtoList");
                if (productList != null && !productList.isEmpty()) {
                    System.out.println(productList + "jsp");

            %>

            <%
                for (ProductDto product : productList) {

            %>

            <li class="product-item">
                <div class="product-card" tabindex="0">

                    <figure class="card-banner">
                        <img src="./assets/images/<%=product.getUrl()%>" width="322" height="350" loading="lazy"
                             alt="Simple Fabric Shoe" class="image-contain">

                        <ul class="card-action-list">

                            <%--                <li class="card-action-item">--%>
                            <%--                  <form action="<%= request.getContextPath() %>/addToCard" method="POST" style="display:inline;">--%>
                            <%--                    <input type="hidden" name="productId" value="<%= product.getProductId() %>">--%>
                            <%--                    <button type="submit" class="card-action-btn" aria-labelledby="card-label-1">--%>
                            <%--                      <ion-icon name="cart-outline"></ion-icon>--%>
                            <%--                    </button>--%>
                            <%--                  </form>--%>
                            <%--                  <div class="card-action-tooltip" id="card-label-1">Add to Cart</div>--%>
                            <%--                </li>--%>

                            <%--                <%--%>
                            <%--                  UserDto user = (UserDto) request.getServletContext().getAttribute("user");--%>
                            <%--                  String email = user.getEmail();--%>
                            <%--                  System.out.println(email+"email");--%>
                            <%--                  if (email != null) {--%>
                            <%--                    System.out.println(email+"email after if");--%>
                            <%--                %>--%>
                            <%--                <% } %>--%>


                            <%--==============================--%>


                                <li class="card-action-item">
                                    <!-- Add to Cart Form -->
                                    <form action="addToCard" method="POST" style="display:inline;">
                                        <input type="hidden" name="productId" value="<%= product.getProductId() %>">
                                        <input type="hidden" name="productName" value="<%= URLEncoder.encode(product.getProductName(), "UTF-8") %>">
                                        <button type="submit" class="card-action-btn" aria-labelledby="card-label-1">
                                            <ion-icon name="cart-outline"></ion-icon>
                                        </button>
                                    </form>
                                    <div class="card-action-tooltip" id="card-label-1">Add to Cart</div>
                                </li>

                            <%
                                // Fetch user object from ServletContext

//                                UserDto user = (UserDto) request.getServletContext().getAttribute("user");
//                                System.out.println(user.getEmail()+"email");

//
//
//                                if (user != null) { // Check if user is not null
//                                    String email = user.getEmail(); // Retrieve email
//                                    if (email != null && !email.isEmpty()) {
//                                        // Display or process email
////                                        out.println("<p>User Email: " + email + "</p>");
//                                        System.out.println(email + " - Email retrieved successfully.");
//                                    } else {
//                                        System.out.println("Email is null or empty.");
//                                        response.sendRedirect("login.jsp?error=" + URLEncoder.encode("Please log in to continue.", "UTF-8"));
//                                        return;
//                                    }
//                                } else {
//
//                                    System.out.println("User object is null.");
//                                    // Ensure further JSP execution is stopped
//                                    // User object is null, display a message or handle this case
//                                }






                            %>


                        </ul>


                    </figure>

                    <div class="card-content">

                        <div class="card-cat">
                            <a href="#" class="card-cat-link"><%=product.getDescription()%>
                            </a>
                        </div>

                        <h3 class="h3 card-title">
                            <a name="productName" href="#"><%=product.getProductName()%>
                            </a>
                        </h3>

                        <data class="card-price" value="100.85"><%=product.getPrice()%>
                        </data>

                    </div>

                </div>
            </li>

            <%
                }

            %>
            <%
            } else {
            %>
            <p>No products found.</p>
            <%
                }
            %>

        </ul>

    </div>
</section>

<!--
  - #FOOTER
-->

<footer class="footer">

    <div class="footer-top section">
        <div class="container">


            <div class="footer-link-box">

                <ul class="footer-list">

                    <li>
                        <p class="footer-list-title">Contact Us</p>
                    </li>

                    <li>
                        <address class="footer-link">
                            <ion-icon name="location"></ion-icon>

                            <span class="footer-link-text">
                 25/4, Galleroad, nupe, Matara
                </span>
                        </address>
                    </li>

                    <li>
                        <a href="tel:+557343673257" class="footer-link">
                            <ion-icon name="call"></ion-icon>

                            <span class="footer-link-text">0412265762</span>
                        </a>
                    </li>

                    <li>
                        <a href="mailto:footcap@help.com" class="footer-link">
                            <ion-icon name="mail"></ion-icon>

                            <span class="footer-link-text">aduwata.lk@help.com</span>
                        </a>
                    </li>

                </ul>

                <ul class="footer-list">

                    <li>
                        <p class="footer-list-title">My Account</p>
                    </li>

                    <!-- <li>
                      <a href="#" class="footer-link">
                        <ion-icon name="chevron-forward-outline"></ion-icon>

                        <span class="footer-link-text">My Account</span>
                      </a>
                    </li> -->

                    <li>
                        <a href="#" class="footer-link">
                            <ion-icon name="chevron-forward-outline"></ion-icon>

                            <span class="footer-link-text">View Cart</span>
                        </a>
                    </li>


                    <!-- <li>
                      <a href="#" class="footer-link">
                        <ion-icon name="chevron-forward-outline"></ion-icon>

                        <span class="footer-link-text">Compare</span>
                      </a>
                    </li> -->

                    <li>
                        <a href="#" class="footer-link">
                            <ion-icon name="chevron-forward-outline"></ion-icon>

                            <span class="footer-link-text">New Products</span>
                        </a>
                    </li>

                </ul>

                <div class="footer-list">

                    <p class="footer-list-title">Opening Time</p>

                    <table class="footer-table">
                        <tbody>

                        <tr class="table-row">
                            <th class="table-head" scope="row">Mon - Tue:</th>

                            <td class="table-data">8AM - 10PM</td>
                        </tr>

                        <tr class="table-row">
                            <th class="table-head" scope="row">Wed:</th>

                            <td class="table-data">8AM - 7PM</td>
                        </tr>

                        <tr class="table-row">
                            <th class="table-head" scope="row">Fri:</th>

                            <td class="table-data">7AM - 12PM</td>
                        </tr>

                        <tr class="table-row">
                            <th class="table-head" scope="row">Sat:</th>

                            <td class="table-data">9AM - 8PM</td>
                        </tr>

                        <tr class="table-row">
                            <th class="table-head" scope="row">Sun:</th>

                            <td class="table-data">Closed</td>
                        </tr>

                        </tbody>
                    </table>

                </div>

                <div class="footer-list">

                    <p class="footer-list-title">Aduwata.lk</p>

                    <p class="newsletter-text">
                        Contact US
                    </p>

                    <div class="footer-brand">

                        <ul class="social-list">

                            <li>
                                <a href="#" class="social-link">
                                    <ion-icon name="logo-facebook"></ion-icon>
                                </a>
                            </li>

                            <li>
                                <a href="#" class="social-link">
                                    <ion-icon name="logo-twitter"></ion-icon>
                                </a>
                            </li>

                            <li>
                                <a href="#" class="social-link">
                                    <ion-icon name="logo-pinterest"></ion-icon>
                                </a>
                            </li>

                            <li>
                                <a href="#" class="social-link">
                                    <ion-icon name="logo-linkedin"></ion-icon>
                                </a>
                            </li>

                        </ul>

                    </div>


                </div>

            </div>

        </div>
    </div>

    <div class="footer-bottom">
        <div class="container">

            <p class="copyright">
                &copy; 2025 <a href="#" class="copyright-link">DanithaHK</a>. All Rights Reserved
            </p>

        </div>
    </div>

</footer>
<script>
    function sendToAddToCartServlet(productId, productName) {
        // Perform any custom logic before navigation (e.g., AJAX, logging, etc.)
        console.log('Sending product ID to servlet: ' + productId);
        console.log(productName)

        // Redirect to the servlet and pass the product ID as a query parameter
        window.location.href = 'addToCard?productId=' + encodeURIComponent(productId) + '&productName=' + encodeURIComponent(productName);
    }
</script>

<!--
  - custom js link
-->
<script src="/assets/js/script.js"></script>

<!--
  - ionicon link
-->
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>
</html>
