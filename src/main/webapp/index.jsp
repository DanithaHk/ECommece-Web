<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 1/20/2025
  Time: 6:38 PM
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
  <link rel="stylesheet" href="./assets/css/style.css">

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
<%--
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
--%>

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
          </form>
        </li>

        <li>
          <button class="nav-action-btn" id="btnAddCatagory"data-bs-toggle="modal"
                  data-bs-target="#studentModal">
            <ion-icon name="add-outline" aria-hidden="true" ></ion-icon>
            <data class="nav-action-text"   value="318.00">Add Category</data>


          </button>
        </li>

      </ul>

    </nav>

  </div>
</header>





<main>
  <article>

    <!--
      - #HERO
    -->

    <section class="section hero" style="background-image: url('./assets/images/hero-banner.png')">
      <div class="container">

        <h2 class="h1 hero-title">
          New Summer <strong>Vist Our Collection</strong>
        </h2>

        <p class="hero-text">
          Competently expedite alternative benefits whereas leading-edge catalysts for change. Globally leverage
          existing an
          expanded array of leadership.
        </p>

        <button class="btn btn-primary">
          <span>Shop Now</span>

          <ion-icon name="arrow-forward-outline" aria-hidden="true"></ion-icon>
        </button>

      </div>
    </section>



    <div class="modal fade" id="studentModal" tabindex="-1" aria-labelledby="studentModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="container m-2">
            <form action="category" method="post" >
              <div class="mb-3">
                <label for="name" class="form-label">Name</label>
                <input type="text" class="form-control" name="name" id="name">
              </div>
              <div class="mb-3">
                <label for="description" class="form-label">description</label>
                <input type="text" class="form-control" name="description" id="description">
              </div>
              <div class="mb-3">
                <label for="img" class="form-label">Attach Category Image</label>
                <input type="file"  class="form-control" name="url" id="img" required/>
              </div>
              <button type="submit" class="btn btn-success" onclick="return confirm('Are you sure Do you want to add this category?');">Add Category</button>
            </form>
          </div>
        </div>
      </div>
    </div>

    <!--
      - #COLLECTION
    -->

    <section class="section collection" id="product">
      <div class="container">

        <ul class="collection-list has-scrollbar">

          <li>
            <div class="collection-card" style="background-image: url('./assets/images/collecton-2.jpg')">
              <h3 class="h4 card-title">Clothes  Collections</h3>

              <a href="#" class="btn btn-secondary">
                <span>Explore All</span>

                <ion-icon name="arrow-forward-outline" aria-hidden="true"></ion-icon>
              </a>
            </div>
          </li>

          <li>
            <div class="collection-card" style="background-image: url('./assets/images/collection-3.jpg')">
              <h3 class="h4 card-title">Shoe Collections</h3>

              <a href="#" class="btn btn-secondary">
                <span>Explore All</span>

                <ion-icon name="arrow-forward-outline" aria-hidden="true"></ion-icon>
              </a>
            </div>
          </li>

          <li>
            <div class="collection-card" style="background-image: url('./assets/images/collection-1.jpg')">
              <h3 class="h4 card-title">jewellery Collections</h3>
<%--            <button class="btn " >--%>

              <a href="<%= request.getContextPath() %>/juweraly" class="btn btn-primary mb-3 text-right">

              <span>Explore All</span>

                <ion-icon name="arrow-forward-outline" aria-hidden="true"></ion-icon>
              </a>
<%--            </button>--%>

            </div>
          </li>

        </ul>

      </div>
    </section>





    <!--
      - #PRODUCT
    -->

    <section class="section product">
      <div class="container">

        <h2 class="h2 section-title">Bestsellers Products</h2>

        <ul class="filter-list">

          <li>
            <button class="filter-btn  active">All</button>
          </li>

          <li>
            <button class="filter-btn">Clothes</button>
          </li>

          <li>
            <button class="filter-btn">jewellery</button>
          </li>

          <li>
            <button class="filter-btn">Shoes</button>
          </li>

        </ul>

        <ul class="product-list">

          <li class="product-item">
            <div class="product-card" tabindex="0">

              <figure class="card-banner">
                <img src="./assets/images/product-22.jpg" width="312" height="350" loading="lazy"
                     alt="Running Sneaker Shoes" class="image-contain">




                <ul class="card-action-list">

                  <li class="card-action-item">
                    <button class="card-action-btn" aria-labelledby="card-label-1">
                      <ion-icon name="cart-outline"></ion-icon>
                    </button>

                    <div class="card-action-tooltip" id="card-label-1">Add to Cart</div>
                  </li>
                </ul>
              </figure>

              <div class="card-content">

                <div class="card-cat">
                  <a href="#" class="card-cat-link">Women</a>
                </div>

                <h3 class="h3 card-title">
                  <a href="#">Green Neckless</a>
                </h3>

                <data class="card-price" value="180.85">$180.85</data>

              </div>

            </div>
          </li>

          <li class="product-item">
            <div class="product-card" tabindex="0">

              <figure class="card-banner">
                <img src="./assets/images/product-12.jpg" width="312" height="350" loading="lazy"
                     alt="Leather Mens Slipper" class="image-contain">

                <ul class="card-action-list">

                  <li class="card-action-item">
                    <button class="card-action-btn" aria-labelledby="card-label-1">
                      <ion-icon name="cart-outline"></ion-icon>
                    </button>

                    <div class="card-action-tooltip" id="card-label-1">Add to Cart</div>
                  </li>



                </ul>
              </figure>

              <div class="card-content">

                <div class="card-cat">
                  <a href="#" class="card-cat-link">Men</a>
                </div>

                <h3 class="h3 card-title">
                  <a href="#"> Cotton Mens Shirt</a>
                </h3>

                <data class="card-price" value="190.85">$10.85</data>

              </div>

            </div>
          </li>

          <li class="product-item">
            <div class="product-card" tabindex="0">

              <figure class="card-banner">
                <img src="./assets/images/product-3.jpg" width="312" height="350" loading="lazy"
                     alt="Simple Fabric Shoe" class="image-contain">



                <ul class="card-action-list">

                  <li class="card-action-item">
                    <button class="card-action-btn" aria-labelledby="card-label-1">
                      <ion-icon name="cart-outline"></ion-icon>
                    </button>

                    <div class="card-action-tooltip" id="card-label-1">Add to Cart</div>
                  </li>


                </ul>
              </figure>

              <div class="card-content">

                <div class="card-cat">
                  <a href="#" class="card-cat-link">Men</a> /
                  <a href="#" class="card-cat-link">Women</a>
                </div>

                <h3 class="h3 card-title">
                  <a href="#">Simple Fabric Shoe</a>
                </h3>

                <data class="card-price" value="160.85">$45.85</data>

              </div>

            </div>
          </li>

          <li class="product-item">
            <div class="product-card" tabindex="0">

              <figure class="card-banner">
                <img src="./assets/images/product-14.jpg" width="312" height="350" loading="lazy"
                     alt="Air Jordan 7 Retro " class="image-contain">



                <ul class="card-action-list">

                  <li class="card-action-item">
                    <button class="card-action-btn" aria-labelledby="card-label-1">
                      <ion-icon name="cart-outline"></ion-icon>
                    </button>

                    <div class="card-action-tooltip" id="card-label-1">Add to Cart</div>
                  </li>


                </ul>
              </figure>

              <div class="card-content">

                <div class="card-cat">
                  <a href="#" class="card-cat-link">Women</a>

                </div>

                <h3 class="h3 card-title">
                  <a href="#">Mushroom Frock </a>
                </h3>

                <data class="card-price" value="160.85">$60.85</data>

              </div>

            </div>
          </li>

          <li class="product-item">
            <div class="product-card" tabindex="0">

              <figure class="card-banner">
                <img src="./assets/images/product-21.jpg" width="332" height="350" loading="lazy"
                     alt="Nike Air Max 270 SE" class="image-contain">

                <div class="card-badge">New</div>

                <ul class="card-action-list">

                  <li class="card-action-item">
                    <button class="card-action-btn" aria-labelledby="card-label-1">
                      <ion-icon name="cart-outline"></ion-icon>
                    </button>

                    <div class="card-action-tooltip" id="card-label-1">Add to Cart</div>
                  </li>


                </ul>
              </figure>

              <div class="card-content">

                <div class="card-cat">
                  <a href="#" class="card-cat-link">Women</a>
                </div>

                <h3 class="h3 card-title">
                  <a href="#">Gold Neckless</a>
                </h3>

                <data class="card-price" value="120.85">$120.85</data>

              </div>

            </div>
          </li>

          <li class="product-item">
            <div class="product-card" tabindex="0">

              <figure class="card-banner">
                <img src="./assets/images/product-11.jpg" width="312" height="350" loading="lazy"
                     alt="Adidas Sneakers Shoes" class="image-contain">

                <ul class="card-action-list">

                  <li class="card-action-item">
                    <button class="card-action-btn" aria-labelledby="card-label-1">
                      <ion-icon name="cart-outline"></ion-icon>
                    </button>

                    <div class="card-action-tooltip" id="card-label-1">Add to Cart</div>
                  </li>



                </ul>
              </figure>

              <div class="card-content">

                <div class="card-cat">
                  <a href="#" class="card-cat-link">Men</a>
                </div>

                <h3 class="h3 card-title">
                  <a href="#">Green Shirt</a>
                </h3>

                <data class="card-price" value="100.85">$50.85</data>

              </div>

            </div>
          </li>

          <li class="product-item">
            <div class="product-card" tabindex="0">

              <figure class="card-banner">
                <img src="./assets/images/product-3.jpg" width="312" height="350" loading="lazy"
                     alt="Nike Basketball shoes" class="image-contain">

                <ul class="card-action-list">

                  <li class="card-action-item">
                    <button class="card-action-btn" aria-labelledby="card-label-1">
                      <ion-icon name="cart-outline"></ion-icon>
                    </button>

                    <div class="card-action-tooltip" id="card-label-1">Add to Cart</div>
                  </li>


                </ul>
              </figure>

              <div class="card-content">

                <div class="card-cat">
                  <a href="#" class="card-cat-link">Men</a> /
                  <a href="#" class="card-cat-link">Sports</a>
                </div>

                <h3 class="h3 card-title">
                  <a href="#">Nike Basketball shoes</a>
                </h3>

                <data class="card-price" value="120.85">$120.85</data>

              </div>

            </div>
          </li>

          <li class="product-item">
            <div class="product-card" tabindex="0">

              <figure class="card-banner">
                <img src="./assets/images/product-20.jpg" width="322" height="350" loading="lazy"
                     alt="Simple Fabric Shoe" class="image-contain">

                <ul class="card-action-list">

                  <li class="card-action-item">
                    <button class="card-action-btn" aria-labelledby="card-label-1">
                      <ion-icon name="cart-outline"></ion-icon>
                    </button>

                    <div class="card-action-tooltip" id="card-label-1">Add to Cart</div>
                  </li>


                </ul>
              </figure>

              <div class="card-content">

                <div class="card-cat">
                  <a href="#" class="card-cat-link">Men</a> /
                  <a href="#" class="card-cat-link">Women</a>
                </div>

                <h3 class="h3 card-title">
                  <a href="#">Simple Baggy Trouser</a>
                </h3>

                <data class="card-price" value="100.85">$35 .85</data>

              </div>

            </div>
          </li>

        </ul>

      </div>
    </section>





    <!--
      - #CTA
    -->

    <section class="section cta">
      <div class="container">

        <ul class="cta-list">

          <li>
            <div class="cta-card" style="background-image: url('./assets/images/cta-1.jpg')">
              <p class="card-subtitle">Adidas Shoes</p>

              <h3 class="h2 card-title">The Summer Sale Off 50%</h3>

              <a href="#" class="btn btn-link">
                <span>Shop Now</span>

                <ion-icon name="arrow-forward-outline" aria-hidden="true"></ion-icon>
              </a>
            </div>
          </li>

          <li>
            <div class="cta-card" style="background-image: url('./assets/images/cta-2.jpg')">
              <p class="card-subtitle">Nike Shoes</p>

              <h3 class="h2 card-title">Makes Yourself Keep Sporty</h3>

              <a href="#" class="btn btn-link">
                <span>Shop Now</span>

                <ion-icon name="arrow-forward-outline" aria-hidden="true"></ion-icon>
              </a>
            </div>
          </li>

        </ul>

      </div>
    </section>










    <!--
      - #SERVICE
    -->

    <section class="section service">
      <div class="container">

        <ul class="service-list">

          <li class="service-item">
            <div class="service-card">

              <div class="card-icon">
                <img src="./assets/images/service-1.png" width="53" height="28" loading="lazy" alt="Service icon">
              </div>

              <div>
                <h3 class="h4 card-title">Free Shiping</h3>

                <p class="card-text">
                  All orders over <span>$150</span>
                </p>
              </div>

            </div>
          </li>

          <li class="service-item">
            <div class="service-card">

              <div class="card-icon">
                <img src="./assets/images/service-2.png" width="43" height="35" loading="lazy" alt="Service icon">
              </div>

              <div>
                <h3 class="h4 card-title">Quick Payment</h3>

                <p class="card-text">
                  100% secure payment
                </p>
              </div>

            </div>
          </li>

          <li class="service-item">
            <div class="service-card">

              <div class="card-icon">
                <img src="./assets/images/service-3.png" width="40" height="40" loading="lazy" alt="Service icon">
              </div>

              <div>
                <h3 class="h4 card-title">Free Returns</h3>

                <p class="card-text">
                  Money back in 30 days
                </p>
              </div>

            </div>
          </li>

          <li class="service-item">
            <div class="service-card">

              <div class="card-icon">
                <img src="./assets/images/service-4.png" width="40" height="40" loading="lazy" alt="Service icon">
              </div>

              <div>
                <h3 class="h4 card-title">24/7 Support</h3>

                <p class="card-text">
                  Get Quick Support
                </p>
              </div>

            </div>
          </li>

        </ul>

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
<script src="assets/js/script.js"></script>
<script type="text/javascript">
  // Retrieve the message from the URL query parameter
  const urlParams = new URLSearchParams(window.location.search);
  const message = urlParams.get("message");

  // Show an alert if the message is present
  if (message) {
    alert(message);
  }
</script>

<!--
  - ionicon link
-->
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
<%--<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>--%>
<%--<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>--%>

</body>


</html>

