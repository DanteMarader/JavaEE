package servlets.Task1_2;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;


@WebServlet(value = "/task1-2")
public class Task1_2 extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();

        out.print("<!DOCTYPE html>");
        out.print("<html>");
        out.print("<head>");
        out.print("<link rel = 'stylesheet' type = 'text/css' href = 'https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css'>");
        out.print("</head>");
        out.print("<body>");

        out.print("<div class = 'container mt-5'>");
        out.print("<div class = 'row'>");
        out.print("<div class = 'col-12'>");

        ArrayList<User> users = DBManager.getusers();

        out.print("<table class = 'table table-striped'");
        out.print("<thead>");
        out.print("<tr>");
        out.print("<th> NAME </th><th> SURNAME </th><th> DEPARTMENT </ht><th> SALARY </th>");
        out.print("</tr>");
        out.print("</thead>");
        out.print("<tbody>");
        for (User it : users) {
            out.print("<tr>");
            out.print("<td>" + it.getName() + "</td>");
            out.print("<td>" + it.getSurname() + "</td>");
            out.print("<td>" + it.getDepartament() + "</td>");
            out.print("<td>" + it.getSalary() + " KZT</td>");
            out.print("</tr>");
        }
        out.print("</tbody>");
        out.print("</table>");
        out.print("</div>");
        out.print("</div>");
        out.print("</div>");

        out.print("</body>");
        out.print("</html>");
    }
}

