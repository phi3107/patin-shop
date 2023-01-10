package vn.edu.hcmuaf.fit.control;

import vn.edu.hcmuaf.fit.dao.DAO;
import vn.edu.hcmuaf.fit.entity.Product;
import vn.edu.hcmuaf.fit.entity.TypeOfProduct;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.List;

@WebServlet(name = "ShopServlet", value = "/shop")
public class ShopServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DAO dao = new DAO();
        List<Product> list =  dao.getAllProduct();
        List<TypeOfProduct> listT = dao.getAllTypeOfProduct();
        request.setAttribute("listP", list);
        request.setAttribute("listT", listT);
        request.getRequestDispatcher("shop.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
