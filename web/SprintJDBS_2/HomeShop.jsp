<%@ page import="java.util.ArrayList" %>
<%@ page import="servlets.SprintJDBC_2.db.Tovary" %>
<%@ page import="servlets.SprintJDBC_2.db.DBConector" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>Bitlab Shop</title>
    <link rel="stylesheet" href="/CSS/bootstrap.css">
    <script src="/js/bootstrap.js"></script>
</head>

<body>

<%@include file="NavbarShop.jsp" %>

<div class="container mt-3">
    <div class="row">
        <%
            ArrayList<Tovary> tovaries = (ArrayList<Tovary>) request.getAttribute("Phone");
            if (tovaries != null) {
                for (Tovary it : tovaries) {
        %>
        <div class="col-4">
            <div class="card mt-1 mb-3 shadow " style="border-radius: 10px ; background-color: #d4e7e7">
                <img class="card-img-top m-1 w-auto" style="border-radius: 10px"
                     src="<%=it.getImage()%>">
                <div class="card-body">
                    <h5 style="text-align: center" class="card-title"><%=it.getName()%>
                    </h5>
                    <p style="text-align: center" class="card-text"><%=it.getDescription()%>
                    </p>
                    <p style="text-align: center" class="card-text"><%=it.getPrice()%> KZT
                    </p>
                    <div style="text-align: center" >
                        <a href="#" class="btn btn-warning ">Buy Now</a>
                        <a href="/detailShop?idShop=<%=it.getId()%>" class="btn btn-success ms-3">Details</a>
                    </div>
                </div>
            </div>
        </div>
        <%
                }
            }
        %>
    </div>
</div>
</body>
</html>