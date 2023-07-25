package servlets.Task1_3;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(value = "/addUser3")
public class AddUsers1_3 extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String name = req.getParameter("user_name");
        String surname = req.getParameter("user_surname");
        String food = req.getParameter("foodName");


        User1_3 user1_3 = new User1_3(name,surname,food);

        DBManager1_3.addUser1_3(user1_3);

        resp.sendRedirect("/task3");
    }
}
