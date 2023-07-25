package servlets.SprintJDBC_2.Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import servlets.SprintJDBC_2.db.DBConector;
import servlets.SprintJDBC_2.db.Tovary;

import java.io.IOException;

@WebServlet(value = "/savePhone")
public class Save_Shop_Servlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        int id = Integer.parseInt(req.getParameter("phone_id"));
        String name = req.getParameter("phone_name");
        String price = req.getParameter("phone_price");
        String description = req.getParameter("phone_description");
        String image = req.getParameter("phone_image");

        Tovary tovary = DBConector.getTovar(id);

        if (tovary!=null){
            tovary.setId((long) id);
            tovary.setName(name);
            tovary.setPrice(Double.parseDouble(price));
            tovary.setDescription(description);
            tovary.setImage(image);

            DBConector.savePhone(tovary);

            resp.sendRedirect("/detailShop?idShop=" + tovary.getId());
        }else {
            resp.sendRedirect("/homeShop");
        }
    }
}
