package vn.edu.hcmuaf.fit.control_admin;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


import vn.edu.hcmuaf.fit.entity.User;
        import java.io.IOException;
        import java.io.PrintWriter;
        import javax.servlet.RequestDispatcher;
        import javax.servlet.ServletException;
        import javax.servlet.annotation.WebServlet;
        import javax.servlet.http.HttpServlet;
        import javax.servlet.http.HttpServletRequest;
        import javax.servlet.http.HttpServletResponse;

public class Add_User extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();

        try {
            String id = request.getParameter("id");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String address = request.getParameter("address");

            User user = new User();
            RequestDispatcher dispatcher;
            if (email == null && password == null) {
                dispatcher = this.getServletContext().getRequestDispatcher("/admin/user_add.jsp");
                dispatcher.forward(request, response);
            } else {
                user.setId(String.valueOf(Integer.parseInt(request.getParameter("id"))));
                user.setEmail(request.getParameter("email"));
                user.setPass(request.getParameter("password"));
                dispatcher = this.getServletContext().getRequestDispatcher("/CT_User");
                dispatcher.forward(request, response);
            }
        } finally {
            out.close();
        }

    }
}

