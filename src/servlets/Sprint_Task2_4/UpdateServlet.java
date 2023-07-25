package servlets.Sprint_Task2_4;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(value = "/update")
public class UpdateServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("task-name");
        String desc = req.getParameter("task-description");
        String taskDeadline = req.getParameter("task-deadlineDate");
        String status = req.getParameter("taskStatus");
        String id = req.getParameter("id");

        Tasks tasks =new Tasks();
        tasks.setId(Integer.parseInt(id));
        tasks.setName(name);
        tasks.setDescription(desc);
        tasks.setDeadlineDate(taskDeadline);
        tasks.setStatus(Boolean.parseBoolean(status));

        DBManager.updateTask(Integer.parseInt(id),tasks);

        resp.sendRedirect("/details?idishka=" + tasks.getId());
    }
}
