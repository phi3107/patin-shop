package vn.edu.hcmuaf.fit.control_admin;
import vn.edu.hcmuaf.fit.dao.DAO;
import vn.edu.hcmuaf.fit.entity.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "SignUp", value = "/signup")
public class SignUp extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fullName = request.getParameter("fullName");
        String phone    = request.getParameter("phone");
        String email    = request.getParameter("email");
        String pass     = request.getParameter("password");
        String rePass  = request.getParameter("password-repeat");
        if (!pass.equals(rePass)){
            request.setAttribute("alert", "Xác nhận mật khẩu không khớp");
            request.setAttribute("reFullName", fullName);
            request.setAttribute("rePhone", phone);
            request.setAttribute("reEmail", email);
            request.getRequestDispatcher("register-admin.jsp").forward(request,response);
        }else{
            DAO dao = new DAO();
            User u  = dao.checkUserExist(email);
            if (u==null){
                dao.signUp(email,pass,fullName,phone);
                response.sendRedirect("login-admin.jsp");
            }else{
                request.setAttribute("alert", "Email đã tồn tại");
                request.getRequestDispatcher("register-admin.jsp").forward(request,response);
            }
        }
    }
}
