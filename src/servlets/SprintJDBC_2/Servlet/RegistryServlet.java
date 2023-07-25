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


@WebServlet(value = "/registry")
public class RegistryServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.getRequestDispatcher("/SprintJDBS_2/registry.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String redirect = "/registry?code=password";

        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String repeatPassword = req.getParameter("repeat_password");
        String fullName = req.getParameter("full_name");

        if (password.equals(repeatPassword)) {

            User user = DBConector.getUser(email);

            redirect = "/registry?code=email";

            if (user == null) {

                User newUser = new User();

                newUser.setEmail(email);
                newUser.setPassword(password);
                newUser.setFullName(fullName);

                DBConector.addUser(newUser);

                redirect = "/registry?code=success";
            }
        }
        resp.sendRedirect(redirect);
    }
}
