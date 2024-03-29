package servlets.Sprint_Task2_4;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(value = "/delete")
public class DeleteSprintTask extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id =req.getParameter("deleteId");
        int taskId =0;

        try {
            taskId = Integer.parseInt(id);
        }catch (Exception e){
            e.printStackTrace();
        }

        DBManager.deleteTask(taskId);

        resp.sendRedirect("/sprint");
    }
}
