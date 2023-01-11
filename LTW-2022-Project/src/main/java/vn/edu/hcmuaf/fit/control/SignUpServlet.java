package vn.edu.hcmuaf.fit.control;

import vn.edu.hcmuaf.fit.dao.DAO;
import vn.edu.hcmuaf.fit.entity.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "SignUpServlet", value = "/signup")
public class SignUpServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fullName = request.getParameter("fullName");
        String phone    = request.getParameter("phone");
        String email    = request.getParameter("email");
        String pass     = request.getParameter("password");
        String rePass  = request.getParameter("password-repeat");
        if (!pass.equals(rePass)){
            request.getRequestDispatcher("dangky.jsp").forward(request,response);
        }else{
            DAO dao = new DAO();
            User u  = dao.checkUserExist(email);
            if (u==null){
                dao.signUp(email,pass,fullName,phone);
                response.sendRedirect("dangnhap.jsp");
            }else{
                request.getRequestDispatcher("dangky.jsp").forward(request,response);
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
