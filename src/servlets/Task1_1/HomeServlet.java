package servlets.Task1_1;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;


@WebServlet(value = "/home.html")
public class HomeServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        for (int i = 0; i < 5; i++) {
            out.println("<h1 style = ' background-color: rgb(60, 155, 60);\n" +
                    "            color: rgb(255, 255, 255);\n" +
                    "            border: none;\n" +
                    "            border-radius: 5px;\n" +
                    "            cursor: pointer;\n" +
                    "            padding: 10px 20px;\n" +
                    "            margin-right: 450px;\n" +
                    "            box-shadow: 5px 5px 10px rgb(0, 0, 0);" +
                    "            margin: 50px auto;\n" +
                    "            width: 50%;" +
                    "            text-align: center;'> HELLO JAVA EE</h1>");
        }
    }
}
