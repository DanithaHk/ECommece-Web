<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 1/20/2025
  Time: 7:02 PM
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
    <link rel="stylesheet" href="./assets/css/contact.css">

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
<body>

<main>
    <article>
        <section class="section shop">
            <div class="container">

                <h2 class="h2 section-title">Locaton</h2>
                <div class="shopimg">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3968.33126427972!2d80.5341380105831!3d5.949009029547759!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae13f27e0544ea3%3A0xdcede6defcba5a3f!2sPrasad%20The%20Fashion%20Square%20-%20Matara!5e0!3m2!1sen!2slk!4v1737351152178!5m2!1sen!2slk" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>          </div>

                <div class="desc">
                    <ul class="service-list">

                        <li class="service-item">
                            <div class="service-card">

                                <div class="card-icon">
                                </div>

                                <div>
                                    <h3 class="h4 card-title">Address</h3>

                                    <p class="card-text">
                                        25/4, Galleroad, nupe, Matara
                                    </p>
                                </div>

                            </div>
                        </li>

                        <li class="service-item">
                            <div class="service-card">

                                <div class="card-icon">
                                </div>

                                <div>
                                    <h3 class="h4 card-title">Email</h3>

                                    <p class="card-text">
                                        aduwata.lk@help.com
                                    </p>
                                </div>

                            </div>
                        </li>

                        <li class="service-item">
                            <div class="service-card">

                                <div class="card-icon">
                                </div>

                                <div>
                                    <h3 class="h4 card-title"> number</h3>

                                    <p class="card-text">
                                        0412265762
                                    </p>
                                </div>

                            </div>
                        </li>
                    </ul>
                </div>

            </div>
        </section>
    </article>
</main>
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
