<%@ page import="jakarta.annotation.Resource" %>
<%@ page import="javax.sql.DataSource" %>
<%@ page import="lk.ijse.ecommeceweb.DTO.CartDto" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: User
  Date: 1/20/2025
  Time: 8:29 PM
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
  <link rel="stylesheet" href="assets/css/cart.css">

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
<servlet>
  <servlet-name>Cart</servlet-name>
  <servlet-class>lk/ijse/ecommeceweb/Serverlete/Cart.java</servlet-class>
</servlet>
<servlet-mapping>
  <servlet-name>Cart</servlet-name>
  <url-pattern>/cart.jsp</url-pattern>
</servlet-mapping>
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
    <c:if test="${not empty alertMessage}">
      <div class="alert-message">
          ${alertMessage}
      </div>
    </c:if>
    <%
      List<CartDto> cartDtoList = (List<CartDto>) request.getAttribute("cartDtoList");
      if (cartDtoList != null && !cartDtoList.isEmpty()) {
        System.out.println(cartDtoList + "jsp");

    %>
    <%
      for (CartDto cart : cartDtoList) {

    %>
    <div class="container">
      <div class="shop">
        <div class="box">
          <img src="./assets/images/<%cart.getUrl();%>">
          <div class="content">
            <h3><%%>cart.getProductName();<%%></h3>
            <h4>Price: $40</h4>
            <p class="unit">Quantity: <input name="" value="<%cart.getQuantity();%>"></p>
            <button class="submit" id="btnSubmit"> Purches</button>
            <button class="delete" id="btnDelete"> Remove</button>
          </div>
        </div>

      </div>
    </div>
    </div>
<%}%>
    <%}%>
  </article>
</main>
<!--
  - custom js link
-->
<script src="assets/js/script.js"></script>

<!--
  - ionicon link
-->
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

</body>
</body>
</html>
