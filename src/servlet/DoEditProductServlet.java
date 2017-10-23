package servlet;

import domain.Product;
import utils.DBUtils;
import utils.MyUtils;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

@WebServlet(urlPatterns = { "/doEditProduct" })
public class DoEditProductServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;

   public DoEditProductServlet() {
       super();
   }

   @Override
   protected void doGet(HttpServletRequest request, HttpServletResponse response)
           throws ServletException, IOException {
       Connection conn = MyUtils.getStoredConnection(request);

       String code = request.getParameter("code");
       String name = request.getParameter("name");
       String priceStr = request.getParameter("price");
       float price = 0;
       try {
           price = Float.parseFloat(priceStr);
       } catch (Exception e) {
       }
       Product product = new Product(code, name, price);

       String errorString = null;

       try {
           DBUtils.updateProduct(conn, product);
       } catch (SQLException e) {
           e.printStackTrace();
           errorString = e.getMessage();
       }

       request.setAttribute("errorString", errorString);
       request.setAttribute("product", product);


       if (errorString != null) {
           RequestDispatcher dispatcher = request.getServletContext()
                   .getRequestDispatcher("/WEB-INF/views/editProductView.jsp");
           dispatcher.forward(request, response);
       }

       else {
           response.sendRedirect(request.getContextPath() + "/productList");
       }

   }

   @Override
   protected void doPost(HttpServletRequest request, HttpServletResponse response)
           throws ServletException, IOException {
       doGet(request, response);
   }
 
}
