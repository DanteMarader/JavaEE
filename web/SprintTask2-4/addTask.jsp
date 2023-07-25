<%@ page import="java.util.ArrayList" %>
<%@ page import="servlets.Sprint_Task2_4.Tasks" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>SPRINT</title>
    <link rel="stylesheet" href="/CSS/bootstrap.css">
    <script src="/js/bootstrap.js"></script>
</head>
<body>

<%@include file="Navbar.jsp"%>

<div class="container mt-5">
    <div class="row">
        <div class="col-6 mx-auto">
            <form action="/add-Task" method="post">
                <div class="row">
                    <div class="col-12">
                        <label>Наименование: </label>
                        <input type="text" class="form-control"
                               name="task-name" required
                               placeholder="Наименование">
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <label>Описание: </label>
                        <textarea class="form-control" rows="10" name="task-description"></textarea>
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-12">
                        <label>Крайний срок: </label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <input type="date" class="form-control"
                               name="task-deadlineDate" required
                               placeholder="Task Name">
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-12">
                        <button href="/sprint" type="button" class="btn btn-secondary" data-bs-dismiss="modal">CLOSE</button>
                        <button class="btn btn-success">ADD TASK</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
