package servlets.JDBC.Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import servlets.JDBC.DB.Country;
import servlets.JDBC.DB.DBConnector;
import servlets.JDBC.DB.Item;

import java.io.IOException;

@WebServlet(value = "/save-item")
public class SaveItemServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        int id = Integer.parseInt(req.getParameter("item_id"));
        String name = req.getParameter("item_name");
        String price = req.getParameter("item_price");
        int countryId = Integer.parseInt(req.getParameter("country_id"));

        Country country = DBConnector.getCountry(countryId);
        Item item = DBConnector.getItem(id);

        if (item!=null && country!=null) {
            item.setId(id);
            item.setName(name);
            item.setPrice(Integer.parseInt(price));
            item.setCountry(country);

            DBConnector.saveItem(item);

            resp.sendRedirect("/detailsItem?idItem=" + item.getId());
        }else {
            resp.sendRedirect("/homeItem");
        }
    }
}