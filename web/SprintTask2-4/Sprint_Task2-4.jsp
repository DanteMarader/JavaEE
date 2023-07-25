<%@ page import="java.util.ArrayList" %>
<%@ page import="servlets.Sprint_Task2_4.Tasks" %>
<%@ page import="servlets.Sprint_Task2_4.DBManager" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>SPRINT</title>
    <link rel="stylesheet" href="/CSS/bootstrap.css">
    <script src="/js/bootstrap.js"></script>
</head>
<body>

<%@include file="Navbar.jsp" %>

<div class="container mt-3">
    <!-- Button trigger modal -->
    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#AlexeyModal">
        <strong> + Добавить задание</strong>
    </button>
    <div class="modal fade" id="AlexeyModal"
         data-bs-backdrop="static"
         data-bs-keyboard="false"
         tabindex="-1" aria-labelledby="staticBackdropLabel"
         aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="staticBackdropLabel"> Новое Задание </h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
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
                                <input type="date" class="form-control"
                                       name="task-deadlineDate" required
                                       placeholder="Крайний срок">
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-12">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Закрыть</button>
                                <button class="btn btn-success">Добавить</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-6 mx-auto">

        </div>
    </div>
</div>
<div class="container mt-5">
    <div class="row">
        <div class="col-12">
            <table class="table table-striped">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Наименование</th>
                    <th>Крайний срок</th>
                    <th>Выполнено</th>
                    <th style="width: 10%">Детали</th>
                </tr>
                </thead>
                <tbody>
                <%
                    ArrayList<Tasks> tasks = DBManager.getExercise();
                    if (tasks != null) {
                        for (Tasks it : tasks) {
                %>
                <tr>
                    <td><%=it.getId()%>
                    </td>
                    <td><%=it.getName()%>
                    </td>
                    <td><%=it.getDeadlineDate()%>
                    </td>
                    <td>
                        <% if (it.isStatus() == true) {%>
                        ДА
                        <%} else {%>
                        НЕТ
                        <%
                            }
                        %>
                    </td>
                    <td>
                        <a href="/details?idishka=<%=it.getId()%>" class="btn btn-success btn-sm">Детали</a>
                    </td>
                </tr>
                <%
                        }
                    }
                %>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>
