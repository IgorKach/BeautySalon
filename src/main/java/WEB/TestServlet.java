package WEB;

import DAO.UserDAO;
import MODEL.user;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/test")
public class TestServlet extends HttpServlet {
    private DAO.UserDAO UserDAO;
    public TestServlet(){this.UserDAO = new UserDAO();}
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/view/welcome.jsp");
        dispatcher.forward(req, resp);

        String name  = req.getParameter("name");
        String email  = req.getParameter("email");
        String phone  = req.getParameter("phone");
        user newUser = new user (name,email,phone);
        UserDAO.InsertUser(newUser);
        resp.sendRedirect("/BeautySalon_war/user");
    }
}
