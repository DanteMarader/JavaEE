<%@ page import="java.util.ArrayList" %>
<%@ page import="servlets.Task1_3.User1_3" %>
<%@ page import="servlets.Task1_3.DBManager1_3" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Task3</title>
</head>
<body>
<link rel="stylesheet" href="CSS/Task1-3.css">

<form action="/addUser3" method="post">
    NAME: <input type="text" name="user_name">
    SURNAME: <input type="text" name="user_surname">
    FOOD:
    <select name="foodName">
        <option>Manty - 900 KZT</option>
        <option>Burger - 1200 KZT</option>
        <option>Cola - 500 KZT</option>
    </select>
    <button>SUBMIT</button>
</form>
<br>
<%
    ArrayList<User1_3> users = DBManager1_3.getUSER1_3();
    for (int i = 0; i < users.size(); i++) {
%>
<div>
    <h2><%="Name: " + users.get(i).getName() + " Surname: " + users.get(i).getSurname() + " Food: " + users.get(i).getFood()%>
    </h2>
</div>
<%}%>
</body>
</html>
