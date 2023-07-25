package servlets.SprintJDBC_2.Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import servlets.SprintJDBC_2.db.DBConector;
import servlets.SprintJDBC_2.db.User;

import java.io.IOException;


@WebServlet(value = "/signIn")
public class SignInServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.getRequestDispatcher("/SprintJDBS_2/singIn.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String redirect = "/signIn?code=error";

        String email = req.getParameter("email");
        String password = req.getParameter("password");

        User user = DBConector.getUser(email);

        if (user != null) {
            if (user.getPassword().equals(password)) {
                HttpSession session = req.getSession();
                session.setAttribute("InUser", user);
                redirect = "/profile";
            }
        } else {

        }
        resp.sendRedirect(redirect);
    }
}
