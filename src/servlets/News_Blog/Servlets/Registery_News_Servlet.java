package servlets.News_Blog.Servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import servlets.News_Blog.DB.DBC_News;
import servlets.News_Blog.DB.Users;

import java.io.IOException;

@WebServlet("/regNews")
public class Registery_News_Servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.getRequestDispatcher("/NewsBlogJSP/Reg_News.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String redirected = "/loginNews?code=password";

        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String rePassword = req.getParameter("re_password");
        String fullName = req.getParameter("full_name");

        if (password.equals(rePassword)){

            Users user = DBC_News.getUser(email);

            redirected = "/loginNews?code=email";

            if (user == null){

                Users newUser = new Users();

                newUser.setEmail(email);
                newUser.setPassword(password);
                newUser.setFullName(fullName);

                DBC_News.addUser(newUser);

                redirected = "/loginNews?code=success";
            }
        }
        resp.sendRedirect(redirected);
    }
}
