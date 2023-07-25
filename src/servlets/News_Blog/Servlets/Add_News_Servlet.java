package servlets.News_Blog.Servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import servlets.News_Blog.DB.DBC_News;
import servlets.News_Blog.DB.News;
import servlets.News_Blog.DB.News_Categories;
import servlets.News_Blog.DB.Users;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(value = "/add_news")
public class Add_News_Servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Users currentUser = (Users) req.getSession().getAttribute("currentUser");

        if (currentUser != null) {

            ArrayList<News_Categories> categories = DBC_News.getCategories();
            req.setAttribute("category", categories);

            req.getRequestDispatcher("/NewsBlogJSP/addNews.jsp").forward(req, resp);
        } else {
            resp.sendRedirect("/NewsBlogJSP/Login_News.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String title = req.getParameter("title");
        String content = req.getParameter("content");

        int userId = Integer.parseInt(req.getParameter("user_id"));
        int categoryId = Integer.parseInt(req.getParameter("category_id"));

        Users user = DBC_News.getUserId(userId);
        News_Categories categories = DBC_News.getCategory(categoryId);

        if (categories != null) {

            News news = new News();
            news.setTitle(title);
            news.setContent(content);
            news.setNewsCategories(categories);
            news.setUsersNews(user);

            DBC_News.addNews(news);
        }
        resp.sendRedirect("/NewsBlog");
    }
}
