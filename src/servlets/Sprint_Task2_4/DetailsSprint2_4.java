package servlets.Sprint_Task2_4;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(value = "/details")
public class DetailsSprint2_4 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("idishka");

        try {
            int idInt = Integer.parseInt(id);
            Tasks tasks = DBManager.getIdishka(idInt);
            req.setAttribute("exercise", tasks);
        } catch (Exception e) {
            e.printStackTrace();
        }
        req.getRequestDispatcher("/SprintTask2-4/details.jsp").forward(req, resp);
    }
}
