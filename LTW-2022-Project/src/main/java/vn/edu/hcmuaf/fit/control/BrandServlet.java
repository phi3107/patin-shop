package vn.edu.hcmuaf.fit.control;

import vn.edu.hcmuaf.fit.dao.DAO;
import vn.edu.hcmuaf.fit.entity.Brand;
import vn.edu.hcmuaf.fit.entity.Product;
import vn.edu.hcmuaf.fit.entity.TypeOfProduct;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "BrandServlet", value = "/Brand")
public class BrandServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String brandID = request.getParameter("bid");
        DAO dao = new DAO();
        List<Product> list =  dao.getAllProductByBID(brandID);
        List<TypeOfProduct> listT = dao.getAllTypeOfProduct();
        List<Brand> listB = dao.getAllBrand();

        request.setAttribute("listP", list);
        request.setAttribute("listT", listT);
        request.setAttribute("listB", listB);
        request.getRequestDispatcher("shop.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
