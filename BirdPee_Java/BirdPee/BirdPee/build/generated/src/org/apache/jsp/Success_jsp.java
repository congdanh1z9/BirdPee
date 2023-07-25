package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.team1.BirdPee.DAO.ShopDAO;
import com.team1.BirdPee.DAO.ProductDAO;
import com.team1.BirdPee.DTO.Item;
import java.util.ArrayList;
import com.team1.BirdPee.DTO.Customer;
import com.team1.BirdPee.DAO.CartDAO;

public final class Success_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css\"\n");
      out.write("              integrity=\"sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==\"\n");
      out.write("              crossorigin=\"anonymous\" referrerpolicy=\"no-referrer\" />\n");
      out.write("        <link rel=\"icon\" type=\"image/x-icon\" href=\"images/logo2.png\" />\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/Success.css\">\n");
      out.write("        <title>BirdPee</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            Customer ac = (Customer) session.getAttribute("user");
            if (ac.getFullname() == null) {
                response.sendRedirect("Homepage.jsp");
            } else {
                ArrayList<Item> listI = CartDAO.takeAllItem(ac.getId());
        
      out.write("\n");
      out.write("        <header>\n");
      out.write("            <div class=\"header__logo\">\n");
      out.write("                <a href=\"Homepage.jsp\"><img src=\"images/Logo.png\" alt=\"\" /></a>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"header__search-bar\">\n");
      out.write("                <form action=\"MainControllerServlet\">\n");
      out.write("                    <input class=\"search\" name=\"txtSearch\" type=\"text\" placeholder=\"Find something you need\" />\n");
      out.write("                    <input type=\"hidden\"  value=\"search\" name=\"action\" class=\"button\">\n");
      out.write("                    <i class=\"fas fa-solid fa-magnifying-glass\"></i> \n");
      out.write("                </form>\n");
      out.write("                <div class=\"nav\">\n");
      out.write("                    <p><a href=\"Homepage.jsp\">Home Page</a></p>\n");
      out.write("                    <p><a href=\"ProductList.jsp\">Bird's Products</a></p>\n");
      out.write("                    <p><a href=\"ShopList.jsp\">Shop List</a></p>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"header__icon\">\n");
      out.write("                <ul>\n");
      out.write("                    <a href = \"");
      out.print( (ac == null) ? "Login.jsp" : "Profile.jsp");
      out.write("\">\n");
      out.write("                        <li>\n");
      out.write("                            <div class=\"header__icon_circle\">\n");
      out.write("                                <i class=\"fas fa-solid fa-user\"></i>\n");
      out.write("                            </div>\n");
      out.write("                            <h4>");
      out.print( (ac == null) ? "Account" : ac.getUsername());
      out.write("</h4>\n");
      out.write("                        </li>\n");
      out.write("                    </a>\n");
      out.write("                    <a href=\"#\">\n");
      out.write("                        <li>\n");
      out.write("                            <div class=\"header__icon_circle noti\" current-count=\"0\">\n");
      out.write("                                <i class=\"fas fa-solid fa-bell\"></i>\n");
      out.write("                            </div>\n");
      out.write("                            <h4>Notification</h4>\n");
      out.write("                        </li>\n");
      out.write("                    </a>\n");
      out.write("                    <a href = \"");
      out.print( (ac == null) ? "Login.jsp" : "Cart.jsp");
      out.write("\">\n");
      out.write("                        <li>\n");
      out.write("                            <div class=\"header__icon_circle shopping-bag\" current-count=\"");
      out.print( (ac == null) ? 0 : CartDAO.countNumberOfItemInCart(ac.getId()));
      out.write("\">\n");
      out.write("                                <i class=\"fas fa-solid fa-bag-shopping\"></i>\n");
      out.write("                            </div>\n");
      out.write("                            <h4>Shopping Cart</h4>\n");
      out.write("                        </li>\n");
      out.write("                    </a>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        </header>\n");
      out.write("        <main>\n");
      out.write("            <div class=\"main-container-1\">\n");
      out.write("                <div>\n");
      out.write("                    <h1 style=\"color: black;\"><i class=\"fa-solid fa-clock\" style=\"color: black;\"></i> Thank you for your\n");
      out.write("                        purchase!</h1>\n");
      out.write("                </div>\n");
      out.write("                ");

                    float total = (float) session.getAttribute("total");
                    session.removeAttribute("total");
                
      out.write("\n");
      out.write("                <h2>");
      out.print( String.format("%,.0f", total));
      out.write(" VND</h2>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"main-container-2\">\n");
      out.write("                <div class=\"box-container\">\n");
      out.write("\n");
      out.write("                    <div class=\"box-inner\">\n");
      out.write("                        ");

                            for (Item item : listI) {
                        
      out.write("\n");
      out.write("                        <div class=\"box-detail-top\" style=\"margin-bottom: 10px\">\n");
      out.write("                            <div class=\"image-container\">\n");
      out.write("                                <img src=\"");
      out.print( ProductDAO.getImages(item.getProductID()).get(0));
      out.write("\" alt=\"\">\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"product-name\">\n");
      out.write("                                ");
      out.print( ProductDAO.getProductNameByID(item.getProductID()).get(0));
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"product-quantity\">\n");
      out.write("                                Qty: ");
      out.print( item.getQuantity() );
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"product-price\">\n");
      out.write("                                ");
      out.print( String.format("%,.0f", ProductDAO.getProductDiscountOrNotByID(item.getProductID()) * item.getQuantity()) );
      out.write(" VND\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"box-inner-detail\">\n");
      out.write("                                Shipped by: ");
      out.print( ShopDAO.findShopByProductId(item.getProductID()).getName());
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    ");

                        }
                    
      out.write("\n");
      out.write("                    <div class=\"box-detail-bottom\">\n");
      out.write("                        <div>\n");
      out.write("                            <span style=\"color: gray;\">For more details, track your delivery status under </span>\n");
      out.write("                            <span style=\"font-weight: bold;\">Order History > Order Detail </span>\n");
      out.write("                        </div>\n");
      out.write("                        <a href=\"#\">View Order</a>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"main-container-3\">\n");
      out.write("            <div class=\"noti-block\">\n");
      out.write("                <span> <i class=\"fa-regular fa-envelope\" style=\"font-size: 20px; color: #195fd7;\"></i> &nbsp; A notification about your Order Request received has been sent to ");
      out.print( ac.getEmail());
      out.write(" </span>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"main-container-1\">\n");
      out.write("            ");

//                CartDAO.removeCart(ac.getId());
            
      out.write("\n");
      out.write("            <button><a href=\"Homepage.jsp\">Shop More</a></button>\n");
      out.write("        </div>\n");
      out.write("    </main>\n");
      out.write("</body>\n");
      out.write("<footer>\n");
      out.write("\n");
      out.write("    <div class=\"left-footer\">\n");
      out.write("        <span style=\"font-size: 20px; margin-bottom: 10px;\">FOLLOW US ON :</span>\n");
      out.write("        <span style=\"margin-bottom: 5px;\"><i class=\"fa-brands fa-facebook\" style=\"color: #0f53c7;\"></i>\n");
      out.write("            &nbsp;Facebook</span>\n");
      out.write("        <span style=\"margin-bottom: 5px;\"><i class=\"fa-brands fa-instagram\"></i> &nbsp;Instagram</span>\n");
      out.write("        <span style=\"margin-bottom: 5px;\"><i class=\"fa-brands fa-linkedin\" style=\"color: #195fd7;\"></i> &nbsp;\n");
      out.write("            Linkedlin</span>\n");
      out.write("        <span style=\"margin-bottom: 5px;\">Payment Method:</span>\n");
      out.write("        <div class=\"payment-method-logo\">\n");
      out.write("            <span><i class=\"fa-brands fa-cc-visa\"></i> &nbsp; </span>\n");
      out.write("            <div class=\"image-footer-wrapper\">\n");
      out.write("                <img src=\"https://cdn.haitrieu.com/wp-content/uploads/2022/10/Icon-VNPAY-QR-1024x800.png\" alt=\"\">\n");
      out.write("            </div>\n");
      out.write("            <div class=\"image-footer-wrapper\">\n");
      out.write("                <img src=\"https://th.bing.com/th?id=ODLS.b8df17ca-816a-439c-af59-43b1ae16d6d6&w=32&h=32&qlt=92&pcl=fffffa&o=6&pid=1.2\"\n");
      out.write("                     alt=\"\">\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"right-footer\">\n");
      out.write("        <div class=\"footer-link\">\n");
      out.write("            <a href=\"\">Privacy Notice</a>\n");
      out.write("            <a href=\"\">Conditions of Use</a>\n");
      out.write("            <a href=\"\">Your Ads Privacy Choices</a>\n");
      out.write("            <a href=\"\">Payments Terms of Use</a>\n");
      out.write("            <a href=\"\">Cookies</a>\n");
      out.write("            <a href=\"\">User Agreement</a>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"footer-details\">\n");
      out.write("            <p>Address:Site E2a-7, Road D1, Đ. D1,Long Thanh My district, Thu Duc city, Ho Chi Minh city,Viet Nam. </p>\n");
      out.write("            <p>Contact: 028 7300 5588 - Email: daihoc.hcm@fpt.edu.vn</p>\n");
      out.write("            <p>Business code: 0102100740 powered by Department of Planning & Investment Ho Chi Minh city for the first\n");
      out.write("                time in 23/09/2006</p>\n");
      out.write("            <p>© 2023 - Copyright belongs to Birdpee</p>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</footer>\n");

    }

      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
