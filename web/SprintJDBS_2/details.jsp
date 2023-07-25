<%@ page import="servlets.SprintJDBC_2.db.Tovary" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Bitlab Shop</title>
    <link rel="stylesheet" href="/CSS/bootstrap.css">
    <link rel="stylesheet" href="/CSS/Shop_Sprint_Task.css">
    <script src="/js/bootstrap.js"></script>
</head>
<body>

<%@include file="NavbarShop.jsp" %>

<div class="container mt-3" style="background-color: #d4e7d8; border-radius: 10px">
    <div class="row">
        <div class="col-6 mx-auto">
                <%
                Tovary tovary = (Tovary) request.getAttribute("tovar");
                if (tovary != null) {
            %>
            <div class="row">
                <div class="col-12">
                    <label>IMAGE : </label>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <img class="card-img-top mt-2"
                         name="phone_image"
                         src="<%=tovary.getImage()%>">
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <label>NAME : </label>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <input type="text" class="form-control"
                           name="phone_name" required
                           value="<%=tovary.getName()%>" readonly>
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-12">
                    <label>PRICE : </label>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <input type="text" class="form-control"
                           name="phone_price" required
                           value="<%=tovary.getPrice()%>" readonly>
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-12">
                    <label>DESCRIPTION : </label>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <input type="text" class="form-control"
                           name="phone_description" required
                           value="<%=tovary.getDescription()%>" readonly>
                </div>
                <%
                    if (userNavbar != null) {
                %>
                <div class="row mt-3 mb-4">
                    <div class="col-12">
                        <button type="button" class="btn btn-warning" data-bs-toggle="modal"
                                data-bs-target="#editPhone">
                            EDIT PHONE
                        </button>
                    </div>
                </div>
                <%
                    }
                %>
            </div>
            <!--Modal-->
                <%
                    if (userNavbar!=null){
                %>
            <div class="modal fade" id="editPhone" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
                 aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="/savePhone" method="post">
                            <input type="hidden" name="phone_id" value="<%=tovary.getId()%>">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="staticBackdropLabel">Edit Phone</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-12">
                                        <label>IMAGE : </label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12">
                                        <input type="text" class="form-control"
                                               name="phone_image" value="<%=tovary.getImage()%>">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12">
                                        <label>NAME : </label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12">
                                        <input type="text" class="form-control"
                                               name="phone_name" value="<%=tovary.getName()%>">
                                    </div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-12">
                                        <label>PRICE : </label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12">
                                        <input type="text" class="form-control"
                                               name="phone_price" value="<%=tovary.getPrice()%>">
                                    </div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-12">
                                        <label>DESCRIPTION : </label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12">
                                        <input type="text" class="form-control"
                                               name="phone_description" value="<%=tovary.getDescription()%>">
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-warning" data-bs-dismiss="modal">CANCEL</button>
                                <button class="btn btn-success">UPDATE</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
                <%
                    }
                %>
                <%
            } else {
            %>
            <h4 class="text-center">ITEM NOT FOUND</h4>
                <%
                }
            %>
</body>
</html>
