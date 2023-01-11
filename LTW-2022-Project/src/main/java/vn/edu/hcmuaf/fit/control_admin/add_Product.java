package vn.edu.hcmuaf.fit.control_admin;

import vn.edu.hcmuaf.fit.entity.Product;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

    public class add_Product extends HttpServlet {
        public add_Product() {
        }

        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            this.doGet(request, response);
        }

        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();

            try {
                String id = request.getParameter("id");
                String tensp = request.getParameter("tensp");
                String desc = request.getParameter("desc");
                String detail = request.getParameter("detail");
                String main_img = request.getParameter("main_img");
                String sub_img = request.getParameter("sub_img");
                String price = request.getParameter("price");
                String sale_price = request.getParameter("sale_price");
                String brand_id = request.getParameter("brand_id");
                Product pro = new Product();
                if (id == null && tensp == null && main_img == null && sub_img == null && sale_price == null && price == null && brand_id == null) {
                    RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("product_add-admin.jsp");
                    dispatcher.forward(request, response);
                } else {
                    pro.setId(String.valueOf(Integer.parseInt(id)));
                    pro.setId(id);
                    pro.setTensp(tensp);
                    pro.setMain_img(main_img);
                    pro.setSub_img(sub_img);
                    pro.setBrand_id(brand_id);
                    pro.setPrice((int) Long.parseLong(price));
                    long a = (long)((double)Long.parseLong(price) - (double)Long.parseLong(price) * (double)Integer.parseInt(sale_price) * 0.01);
                    pro.setCompare_price(a);
                    pro.setSale_price(Integer.parseInt(sale_price));
                    RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/CT_Product");
                    dispatcher.forward(request, response);
                }
            } finally {
                out.close();
            }

        }
    }
