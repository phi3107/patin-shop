package vn.edu.hcmuaf.fit.control_admin;

import vn.edu.hcmuaf.fit.dao.DAO;
import vn.edu.hcmuaf.fit.entity.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Login", value = "/login")
public class Login extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String pass = request.getParameter("pass");
        DAO dao = new DAO();
        User u = dao.login(email,pass);
        if (u==null){
            request.setAttribute("alert","Wrong email or password!");
            request.getRequestDispatcher("login-admin.jsp").forward(request,response);
        }else{
            HttpSession session = request.getSession();
            session.setAttribute("user", u);
            response.sendRedirect("index-admin");
        }
    }
}