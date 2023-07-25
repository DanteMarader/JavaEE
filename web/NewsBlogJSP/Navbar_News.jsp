<%@ page import="servlets.News_Blog.DB.Users" %>

<%
    Users currentUser = (Users) session.getAttribute("currentUser");
%>

<div class="container">
    <div class="row">
        <div class="col-12">
            <nav style="background: #0d325d"
                 class="navbar navbar-expand-lg navbar-dark mt-3 shadow bg-body-tertiary rounded">
                <div class="container-fluid">
                    <a class="navbar-brand" href="/NewsBlog">BITLAB NEWS</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                            data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0" id="UL1">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="/NewsBlog">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="/add_news">Add News</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Pricing</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                                   aria-expanded="false">
                                    All News
                                </a>
                                <ul class="dropdown-menu shadow" style="border-radius: 10px;background-color: #c2c0e7;">
                                    <li><a class="dropdown-item" href="#">Sport</a></li>
                                    <li><a class="dropdown-item" href="#">Finance</a></li>
                                    <li><a class="dropdown-item" href="#">Politic</a></li>
                                </ul>
                            </li>
                        </ul>
                        <ul class="navbar-nav me-2" id="UL2" style="display: flex; justify-content: flex-end;">
                            <%
                                if (currentUser != null) {
                            %>
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page"
                                   href="/ProfNews"><%=currentUser.getFullName()%>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="/LogOut">Sign Out</a>
                            </li>
                            <%
                            } else {
                            %>
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="/loginNews">Login</a>
                            </li>
                            <%
                                }
                            %>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </div>
</div>