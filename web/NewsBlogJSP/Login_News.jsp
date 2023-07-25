<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Bitlab NEWS</title>
    <link rel="stylesheet" href="/CSS/NewsBlog.css">
    <%@include file="Css.jsp"%>
</head>
<body>

<%@include file="Navbar_News.jsp" %>

<div class="container mt-1">
    <div class="row mt-2">
        <div class="col-9 mx-auto">

            <%
                String code = request.getParameter("code");

                if (code != null && code.equals("error")) {
            %>
            <div class="alert alert-danger alert-dismissible fade show w-75 mx-auto mt-2" role="alert">
                Incorrect email or password!
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
            <%
                }
            %>

            <form action="/loginNews" method="post"
                  style="display: flex ;
             flex-direction: column ;
             margin: 50px auto;
             box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
             width: 80%;">
                <div style="background-color: #e5e5e5;
                padding-left: 15px">
                    <h2> Login Page </h2>
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
                <div class="row mt-3 mb-4 ms-1 ">
                    <div class="col-3 ">
                        <button class="btn btn-success w-100">
                            Login
                        </button>
                    </div>
                </div>
                <div class="row mt-1 ms-1 mb-4">
                    <span>If you don't have an account, please <a
                            style="font-size: 18px; text-decoration: none ; font-weight: bold ; text-decoration-color: #6610f2"
                            href="#" data-bs-toggle="modal" data-bs-target="#exampleModal">Register</a></span>
                </div>
            </form>
        </div>
    </div>
</div>

<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div style="margin-left: 25%" class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Registration</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <%
                String modal = request.getParameter("code");
                if (modal != null) {
                    if (modal.equals("password")) {
            %>
            <div class="alert alert-danger alert-dismissible fade show w-75 mx-auto mt-2" role="alert">
                Passwords are not same!
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
            <%

            } else if (modal.equals("email")) {
            %>
            <div class="alert alert-danger alert-dismissible fade show w-75 mx-auto mt-2" role="alert">
                User email is busy!
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
            <%
            } else if (modal.equals("success")) {

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
