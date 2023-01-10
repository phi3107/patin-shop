package vn.edu.hcmuaf.fit.control;

import vn.edu.hcmuaf.fit.dao.DAO;
import vn.edu.hcmuaf.fit.entity.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "DetailServlet", value = "/detail")
public class DetailServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pid = request.getParameter("pid");
        DAO dao = new DAO();
        Product p = dao.getProductByPID(pid);
        List<String> listSize = dao.getSizeByPID(pid);
        List<String> listColor  = dao.getColorByPID(pid);
        List<String> listImg = dao.getImgByPID(pid);

        request.setAttribute("product", p);
        request.setAttribute("listSize", listSize);
        request.setAttribute("listColor", listColor);
        request.setAttribute("listImg", listImg);
        request.getRequestDispatcher("chitietsp.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
