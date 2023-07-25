package servlets.JDBC.Servlet;

import servlets.JDBC.DB.Country;
import servlets.JDBC.DB.DBConnector;
import servlets.JDBC.DB.Item;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(value = "/detailsItem")
public class DetailsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("idItem");
        try{
            int idInt = Integer.parseInt(id);

            Item item = DBConnector.getItem(idInt);
            req.setAttribute("tovar", item);

            ArrayList<Country> countries = DBConnector.getCountries();
            req.setAttribute("strany",countries);

        }catch (Exception e){
        }
        req.getRequestDispatcher("/JDBC/details.jsp").forward(req, resp);
    }
}
