<%@ page import="servlets.SprintJDBC_2.db.User" %>

<%
    User userNavbar = (User) session.getAttribute("InUser");
%>

<div class="container">
    <div class="row">
        <div class="col-12">
            <nav style="background: #0d325d"
                 class="navbar navbar-expand-lg navbar-dark mt-3 shadow bg-body-tertiary rounded">
                <div class="container-fluid">
                    <a class="navbar-brand" href="/homeShop">BITLAB SHOP</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                            data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse " id="navbarSupportedContent" >
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link" href="#">Top Sale</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">New Sales</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">By Category</a>
                            </li>
                        </ul>
                        <ul class="navbar-nav">
                            <%
                                if (userNavbar != null) {
                            %>
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page"
                                   href="/profile"><%=userNavbar.getFullName()%>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="/signOut">Sign Out</a>
                            </li>
                            <%
                            } else {
                            %>
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="/signIn">Sign in</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="/registry">Registry</a>
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