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

@WebServlet(name = "SearchServlet", value = "/search")
public class SearchServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        //set charset for vietnamese search
        request.setCharacterEncoding("UTF-8");
        String txtSearch = request.getParameter("txt");
        DAO dao = new DAO();
        List<Product> listS = dao.searchByName(txtSearch);
        List<TypeOfProduct> listT = dao.getAllTypeOfProduct();
        List<Brand> listB = dao.getAllBrand();

        request.setAttribute("listS", listS);
        request.setAttribute("listT", listT);
        request.setAttribute("listB", listB);
        request.getRequestDispatcher("shop.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
