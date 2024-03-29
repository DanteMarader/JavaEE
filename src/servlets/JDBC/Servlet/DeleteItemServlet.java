package servlets.JDBC.Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import servlets.JDBC.DB.DBConnector;

import java.io.IOException;

@WebServlet(value = "/delete-item")
public class DeleteItemServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        int id = Integer.parseInt(req.getParameter("item_id"));

        DBConnector.deleteItem(id);
        resp.sendRedirect("/");
    }
}