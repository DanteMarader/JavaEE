package servlets.SprintJDBC_2.Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import servlets.SprintJDBC_2.db.DBConector;
import servlets.SprintJDBC_2.db.Tovary;

import java.io.IOException;

@WebServlet(value = "/detailShop")
public class DetailsShopServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String id = req.getParameter("idShop");

        try {
            int idInt = Integer.parseInt(id);
            Tovary tovary = DBConector.getTovar(idInt);
            req.setAttribute("tovar", tovary);


        }catch (Exception e){
            e.printStackTrace();
        }
        req.getRequestDispatcher("/SprintJDBS_2/details.jsp").forward(req,resp);
    }
}
