package servlets.News_Blog.Servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import servlets.News_Blog.DB.Users;

import java.io.IOException;

@WebServlet(value = "/ProfNews")

public class ProfNews_Servlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Users user = (Users) req.getSession().getAttribute("currentUser");
        if (user!=null){
            req.getRequestDispatcher("/NewsBlogJSP/ProfileNews.jsp").forward(req, resp);
        }else {
            resp.sendRedirect("/loginNews");
        }
    }
}
