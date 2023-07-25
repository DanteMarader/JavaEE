
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
    <div class="row mt-5">
        <div class="col-12 mx-auto">
            <h1 class="text-center">
                Hello <%=(userNavbar!=null?userNavbar.getFullName():"NO USER")%>
            </h1>
        </div>
    </div>
</div>

</body>
</html>
