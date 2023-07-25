<%@ page import="servlets.News_Blog.DB.News_Categories" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>

    <%@include file="Navbar_News.jsp"%>

    <title>Bitlab NEWS</title>

    <%@include file="Css.jsp"%>

</head>

<body>

<div class="container" style="min-height: 500px;">
    <div class="row mt-3">
        <div class="col-8 mx-auto">
            <input type="hidden" name="user_id" value="<%=currentUser.getId()%>">
            <form action="/add_news" method="post">
                <div class="row">
                    <div class="col-12">
                        <label>TITLE </label>
                    </div>
                </div>
                <div class="row mt-2">
                    <div class="col-12">
                        <input type="text" class="form-control" name="title" placeholder="Title">
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-12">
                        <label>CONTENT </label>
                    </div>
                </div>
                <div class="row mt-2">
                    <div class="col-12">
                        <textarea class="form-control" name="content" rows="5" placeholder="Content"></textarea>
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-12">
                        <label>CATEGORY </label>
                    </div>
                </div>
                <div class="row mt-2">
                    <div class="col-12">
                        <select name="category_id" class="form-select">

                            <%
                                ArrayList<News_Categories> categories = (ArrayList<News_Categories>) request.getAttribute("category");
                                if (categories!=null){
                                    for (News_Categories newCat : categories){
                            %>

                            <option value="<%=newCat.getId()%>">
                                <%=newCat.getName()%>
                            </option>

                            <%
                                    }
                                }
                            %>
                        </select>
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-12">
                        <button class="btn btn-success">ADD NEWS</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

</body>
</html>