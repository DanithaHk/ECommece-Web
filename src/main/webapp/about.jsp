<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 1/20/2025
  Time: 6:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

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
        <link rel="stylesheet" href="./assets/css/about.css">

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
                <img src="/assets/images/360_F_645648541_cIh9efc38XC04EUMMjf8QzFAreGm7K8F.webp" width="190" height="50" alt="Footcap logo">
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
                        <data class="nav-action-text"   value="318.00">cart</data>


                    </button>
                </li>

            </ul>

        </nav>

    </div>
</header>
<main>
    <article>
        <section class="section hero" style="background-image: url('./assets/images/about/hero.png')">
            <div class="container">

                <h2 class="h1 hero-title">
                    Trust <strong>With 15 Years</strong>
                </h2>

                <p class="hero-text">

                    Elegant handmade jewelry, trendy clothing and stylish footwear. Known for quality and affordability</p>
                <button class="btn btn-primary">
                    <span>Visit Our Legecy</span>

                    <ion-icon name="arrow-forward-outline" aria-hidden="true"></ion-icon>
                </button>

            </div>
        </section>

        <section class="section shop">
            <div class="container">

                <h2 class="h2 section-title">Our Shop</h2>
                <div class="shopimg">
                    <img src="./assets/images/about/about.webp" alt="">

                </div>

                <div class="desc">
                    <p class="desc-text">
                        This shop began 15 years ago, offering elegant handmade jewelry, trendy clothing, and stylish footwear. Known for quality and affordability, it quickly became a favorite for fashion-conscious customers</p>

                </div>

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


    </article>
</main>

<!--
- #GO TO TOP
-->

<a href="#top" class="go-top-btn" data-go-top>
    <ion-icon name="arrow-up-outline"></ion-icon>
</a>

<!--
  - custom js link
-->
<script src="..assets/js/script.js"></script>

<!--
  - ionicon link
-->
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

</body>

</body>
</html>
