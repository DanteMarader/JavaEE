package servlets.SprintJDBC_2.Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import servlets.SprintJDBC_2.db.DBConector;
import servlets.SprintJDBC_2.db.Tovary;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(value = "/homeShop")

public class HomeShop_Servlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        ArrayList<Tovary> tovaries = DBConector.getTovary();
        req.setAttribute("Phone",tovaries);
        req.getRequestDispatcher("/SprintJDBS_2/HomeShop.jsp").forward(req, resp);
    }
}
