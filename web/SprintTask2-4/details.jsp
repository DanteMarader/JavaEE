<%@ page import="servlets.Sprint_Task2_4.Tasks" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/CSS/bootstrap.css">
    <script src="/js/bootstrap.js"></script>
</head>
<body>

<%@include file="Navbar.jsp" %>

<div class="container mt-5">
    <div class="row">
        <div class="col-6 mx-auto">
            <%
                Tasks tasks = (Tasks) request.getAttribute("exercise");
            %>
            <form action="/update" method="post">
                <div class="mb-2 mt-2">
                    <input type="hidden" name="id" value="<%=tasks.getId()%>">
                    <label>Наименование : </label>
                    <input type="text" class="form-control"
                           name="task-name" required
                           placeholder="Task name"
                           value="<%=tasks.getName()%>">
                </div>
                <div class="mb-2 mt-2">
                    <label class="form-label">Описание : </label>
                    <textarea name="task-description" class="form-control"
                              rows="10"><%=tasks.getDescription()%></textarea>
                </div>
                <div class="mb-2 mt-2">
                    <label>Крайний срок : </label>
                    <input type="date" class="form-control"
                           name="task-deadlineDate" required
                           placeholder="Item Price" value="<%=tasks.getDeadlineDate()%>">
                </div>
                <div class="row mt-3">
                    <div class="col-12">
                        <label>Выполнено</label>
                        <select name="taskStatus">
                            <option value="true" <%if(tasks.isStatus()==true){%>selected<%}%>>Да</option>
                            <option value="false" <%if(tasks.isStatus()==false){%>selected<%}%>>Нет</option>
                        </select>
                    </div>
                </div>
                <div class="row mt-3">
                    <div style="display: flex">
                        <div>
                            <button class="btn btn-primary">Сохранить</button>
                        </div>
                        <div style="margin-left: 10px">
                            <button type="button" class="btn btn-danger" data-bs-toggle="modal"
                                    data-bs-target="#exampleModal">
                                Удалить
                            </button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Удаление</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="/delete" method="post">
                <div class="modal-body">
                    <input type="hidden" value="<%=tasks.getId()%>" name="deleteId">
                    <h3 style="text-align: center">Вы уверены?</h3>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Нет</button>
                    <button type="submit" class="btn btn-primary">Да</button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
