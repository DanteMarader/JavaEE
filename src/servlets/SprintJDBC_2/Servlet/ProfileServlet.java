package servlets.SprintJDBC_2.Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import servlets.SprintJDBC_2.db.User;

import java.io.IOException;

@WebServlet(value = "/profile")

public class ProfileServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        User user = (User) req.getSession().getAttribute("currentUser");

        if (user != null) {
            req.getRequestDispatcher("/SprintJDBS_2/profile.jsp").forward(req, resp);
        } else {
            resp.sendRedirect("/loginNews");
        }
    }
}
