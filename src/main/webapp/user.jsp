<%@ page import="lk.ijse.ecommeceweb.DTO.UserDto" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: User
  Date: 1/25/2025
  Time: 11:02 PM
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
            <a class="nav-link " aria-current="page" href="#">
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
            <a class="nav-link " href="#">
              <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-shopping-cart"><circle cx="9" cy="21" r="1"></circle><circle cx="20" cy="21" r="1"></circle><path d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"></path></svg>
              <span class="ml-2">Catogary</span>
            </a>
          </li>
          <li class="nav-item  ">
            <a class="nav-link " href="#">
              <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-users"><path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path><circle cx="9" cy="7" r="4"></circle><path d="M23 21v-2a4 4 0 0 0-3-3.87"></path><path d="M16 3.13a4 4 0 0 1 0 7.75"></path></svg>
              <span class="ml-2">Product</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" href="#">
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

      <div class="row">
        <div class="col-12 col-xl-8 mb-4 mb-lg-0">
          <div class="card">
            <h5 class="card-header">Users</h5>
            <div class="card-body">
              <div class="table-responsive">
                <% List<UserDto> users = (List<UserDto>) request.getAttribute("userDtoList");
                if(users!= null && !users.isEmpty()){
               %>

                <table class="table">
                  <thead>
                  <tr>
                    <th scope="col">Id</th>
                    <th scope="col">Name</th>
                    <th scope="col">email</th>
                    <th scope="col">role</th>

                    <th scope="col">is_active</th>

                    <th scope="col"></th>
                  </tr>
                  </thead>
                  <tbody>
                  <%
                for (UserDto user : users) {

                  %>
                   <tr>
                          <th scope="row"><%=user.getUserId()%></th>
                          <td><%=user.getName()%></td>
                          <td><%=user.getEmail()%></td>
                          <td><%=user.getRole()%></td>
                          <td><%=user.isActive()%></td>

                     <td>
                       <form id="deactivateUserForm" action="/EcommeceWeb_war_exploded/deactivateUser" method="POST" style="display:none;">
                         <input type="hidden" name="userId" value="<%=user.getUserId()%>"  > <!-- Pass any required data -->
                       </form>
                       <button class="btn btn-warning btn-sm" onclick="document.getElementById('deactivateUserForm').submit();">
                         Deactivate User
                       </button>
                       <form id="deleteUserForm" action="/EcommeceWeb_war_exploded/deleteUser" method="POST" style="display:none;">
                         <input type="hidden" name="userId"  value="<%=user.getUserId()%>"> <!-- Pass any required data -->
                       </form>

                       <button  class="btn btn-danger btn-sm" onclick="confirmDeletion();">
                         Delete User
                       </button>
                     </td>
                   </tr>
                  <%
                    }
                  %>
                  </tbody>
                </table>

                <% } else { %>
                <p>No products found.</p>
                <% } %>
              </div>


            </div>
            <button type="button" class="btn btn-primary mb-3 me-2 " data-bs-toggle="modal"
                    data-bs-target="#studentModal">
              Add New Admin
            </button>
            <button type="button"  class="btn btn-primary mb-3 text-end" onclick="window.location.href='/EcommeceWeb_war_exploded/addAdmin';" >
              All users
            </button>
          </div>
        </div>

      </div>

      <div class="modal fade" id="studentModal" tabindex="-1" aria-labelledby="studentModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="container m-2">
              <form action="addAdmin" method="post" >
                <div class="mb-3">
                  <label for="name" class="form-label">Name</label>
                  <input type="text" class="form-control" name="name" id="name">
                </div>
                <div class="mb-3">
                  <label for="email" class="form-label">Email</label>
                  <input type="email" class="form-control" name="email" id="email">
                </div>
                <div class="mb-3">
                  <label for="password" class="form-label">Password</label>
                  <input type="password" class="form-control" name="password" id="password">
                </div>
                <div class="mb-3">
                  <label for="confirmPassword" class="form-label"> Confirm Password</label>
                  <input type="password" class="form-control" name="confirmPassword" id="confirmPassword">
                </div>

                <button type="submit" class="btn btn-success" onclick="return confirm('Are you sure Do you want to add this Admin?');">Add Admin</button>
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
<script>
  function confirmDeletion() {
    if (confirm("Are you sure you want to delete this user?")) {
      document.getElementById('deleteUserForm').submit();
    }
  }
</script>
</body>
</html>
