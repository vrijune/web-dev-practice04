package ictgradschool.web.question2;


import ictgradschool.web.util.DBConnectionUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "biographies",  urlPatterns = {"/biographies"} )
public class BiographyListServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        // TODO: your code here
        try (Connection conn = DBConnectionUtils.getConnectionFromClasspath("connection.properties")) {

            List<Biography> biographies = BiographyDAO.getAllBiographies(conn);

            req.setAttribute("biographies", biographies);
            req.getRequestDispatcher("WEB-INF/view/biography-list-view.jsp").forward(req, resp);


        } catch (SQLException e) {
            e.printStackTrace();
        }
        
    }
}
