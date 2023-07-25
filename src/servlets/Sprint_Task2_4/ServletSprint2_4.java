package servlets.Sprint_Task2_4;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(value = "/sprint")

public class ServletSprint2_4 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ArrayList<Tasks> tasks = DBManager.getExercise();
       req.setAttribute("exercise",tasks);
        req.getRequestDispatcher("/SprintTask2-4/Sprint_Task2-4.jsp").forward(req,resp);
    }
}
