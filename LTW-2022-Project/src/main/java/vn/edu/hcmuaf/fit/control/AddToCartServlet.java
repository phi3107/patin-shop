package vn.edu.hcmuaf.fit.control;

import vn.edu.hcmuaf.fit.dao.DAO;
import vn.edu.hcmuaf.fit.entity.Product;
import vn.edu.hcmuaf.fit.entity.ProductCart;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.HashMap;

@WebServlet(name = "CartServlet", value = "/addToCart")
public class AddToCartServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pid = (String) request.getParameter("id");
        try{
            long quantity = Long.parseLong(request.getParameter("quantity"));
            DAO dao = new DAO();
            Product product = dao.getProductByPID(pid);
            HttpSession session = request.getSession();
            ProductCart productCart;

            HashMap<String, ProductCart> cart = (HashMap<String, ProductCart>) session.getAttribute("cart");
            if (cart==null){
                cart = new HashMap<String, ProductCart>();
                productCart = new ProductCart(1, product);
                cart.put(pid, productCart);
            }else{
                if (cart.containsKey(pid)){
                    productCart = cart.get(pid);
                    productCart.plus(quantity); //cong them vao so luong hien tai
                }
            }{
                productCart = new ProductCart(1,product);
                cart.put(pid, productCart);
            }
            session.setAttribute("cart", cart);

        }catch (NumberFormatException e){

        }
        response.sendRedirect("cart.jsp");
    }
}
