package servlets.News_Blog.Servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import servlets.News_Blog.DB.DBC_News;
import servlets.News_Blog.DB.Users;

import java.io.IOException;

@WebServlet(value = "/loginNews")
public class Login_News_Servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.getRequestDispatcher("/NewsBlogJSP/Login_News.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String redirect = "/loginNews?code=error";

        String email = req.getParameter("email");
        String password = req.getParameter("password");

        Users user = DBC_News.getUser(email);

        if (user!=null){
            if (user.getPassword().equals(password)){
                HttpSession session = req.getSession();
                session.setAttribute("currentUser",user);
                redirect = "/ProfNews";
            }
        }
        resp.sendRedirect(redirect);
    }
}
