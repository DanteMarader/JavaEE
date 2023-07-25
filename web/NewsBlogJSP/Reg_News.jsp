<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Bitlab News</title>

  <%@include file="Css.jsp"%>

</head>
<body>

<%@include file="Navbar_News.jsp" %>

<div class="container mt-1">
  <div class="row mt-2">
    <div class="col-9 mx-auto">

      <%
        String code = request.getParameter("code");
        if (code != null) {
          if (code.equals("password")) {
      %>
      <div class="alert alert-danger alert-dismissible fade show w-75 mx-auto mt-2" role="alert">
        Passwords are not same!
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
      </div>
      <%

      } else if (code.equals("email")) {
      %>
      <div class="alert alert-danger alert-dismissible fade show w-75 mx-auto mt-2" role="alert">
        User email is busy!
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
      </div>
      <%
      } else if (code.equals("success")) {

      %>
      <div class="alert alert-success alert-dismissible fade show w-75 mx-auto mt-2" role="alert">
        User registered successfully!
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
      </div>
      <%
          }
        }
      %>

      <form action="/regNews" method="post"
            style="display: flex ;
             flex-direction: column ;
             margin: 40px auto;
             box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
             width: 80%;">
        <div style="background-color: #e5e5e5;
                padding-left: 15px">
          <h2> Registry Page </h2>
        </div>

        <div class="row mt-3">
          <div style="display: flex ;
                     flex-direction: row;
                     justify-content:flex-start;
                     margin-left: 10px">
            <h4 style="width: 30%">Email</h4>
            <input style="
                     padding: 5px;
                     border-radius: 5px;
                     box-sizing: border-box;
                     margin-bottom: 20px;
                     width: 65%"
                   type="email" class="form-control" name="email" required placeholder="Email" <%
              %>>
          </div>
        </div>
        <div class="row mt-3">
          <div style="display: flex ;
                    flex-direction: row;
                    justify-content: flex-start;
                    margin-left: 10px">
            <h4 style="width: 30%">Password</h4>
            <input style="
                     padding: 5px;
                     border-radius: 5px;
                     box-sizing: border-box;
                     margin-bottom: 20px;
                     width: 65%"
                   type="password" class="form-control" name="password" required placeholder="Password">
          </div>
        </div>
        <div class="row mt-3">
          <div style="display: flex ;
                    flex-direction: row;
                    justify-content: flex-start;
                    margin-left: 10px">
            <h4 style="width: 30%">Repeat Password</h4>
            <input style="
                     padding: 5px;
                     border-radius: 5px;
                     box-sizing: border-box;
                     margin-bottom: 20px;
                     width: 65%"
                   type="password" class="form-control" name="re_password" required
                   placeholder="Repeat Password">
          </div>
        </div>
        <div class="row mt-3">
          <div style="display: flex ;
                    flex-direction: row;
                    justify-content: flex-start;
                    margin-left: 10px">
            <h4 style="width: 30%">Full Name</h4>
            <input style="
                     padding: 5px;
                     border-radius: 5px;
                     box-sizing: border-box;
                     margin-bottom: 20px;
                     width: 65%"
                   type="text" class="form-control" name="full_name" required placeholder="Full Name">
          </div>
        </div>
        <div class="row mt-3 mb-4 ms-1 ">
          <div class="col-3 ">
            <button class="btn btn-success w-100">
              Registry
            </button>
          </div>
        </div>
      </form>

    </div>
  </div>
</div>

</body>
</html>
