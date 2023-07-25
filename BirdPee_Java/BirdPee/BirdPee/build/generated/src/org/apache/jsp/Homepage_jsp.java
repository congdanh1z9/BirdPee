package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.team1.BirdPee.DAO.CartDAO;
import com.team1.BirdPee.DTO.Customer;
import java.util.Formatter;
import com.team1.BirdPee.DAO.DiscountDAO;
import com.team1.BirdPee.DAO.ShopDAO;
import com.team1.BirdPee.DTO.Shop;
import com.team1.BirdPee.DAO.ProductDAO;
import com.team1.BirdPee.DTO.Product;
import com.team1.BirdPee.DAO.CategoryDAO;
import com.team1.BirdPee.DTO.Category;
import java.util.ArrayList;

public final class Homepage_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\" />\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/Homepage.css\" />\n");
      out.write("        <link\n");
      out.write("            rel=\"stylesheet\"\n");
      out.write("            href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css\"\n");
      out.write("            integrity=\"sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==\"\n");
      out.write("            crossorigin=\"anonymous\"\n");
      out.write("            referrerpolicy=\"no-referrer\"\n");
      out.write("            />\n");
      out.write("        <link rel=\"icon\" type=\"image/x-icon\" href=\"images/logo2.png\" />\n");
      out.write("\n");
      out.write("        <title>BirdPee</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            Customer ac = (Customer) session.getAttribute("user");
            if (session.getAttribute("id") != null) {
                session.removeAttribute("id");
            }
            if (session.getAttribute("productSubSort") != null) {
                session.removeAttribute("productSubSort");;
            }
        
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
      out.write("\n");
      out.write("        <main>\n");
      out.write("            <div class=\"main__cover\"></div>\n");
      out.write("            <div class=\"slider\">\n");
      out.write("                <div class=\"list\">\n");
      out.write("                    <div class=\"item\">\n");
      out.write("                        <img src=\"https://www.allaboutbirds.org/news/wp-content/uploads/2020/07/STanager-Shapiro-ML.jpg\" alt=\"\" />\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"item\">\n");
      out.write("                        <img src=\"https://static.scientificamerican.com/sciam/cache/file/7A715AD8-449D-4B5A-ABA2C5D92D9B5A21_source.png\" alt=\"\" />\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"item\">\n");
      out.write("                        <img src=\"https://upload.wikimedia.org/wikipedia/commons/3/32/House_sparrow04.jpg\" alt=\"\" />\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"item\">\n");
      out.write("                        <img src=\"https://cdn.birdwatchingdaily.com/2020/02/Tufted_Titmouse_62126_Jenny_Burdette_GA2019_Overall1-e1573593877167.jpeg\" alt=\"\" />\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"item\">\n");
      out.write("                        <img src=\"https://community.rspb.org.uk/resized-image/__size/960x720/__key/communityserver-blogs-components-weblogfiles/00-00-01-57-64/1256.2480.1263.2210.0474.2104990_2D00_w.jpg\" alt=\"\" />\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"buttons\">\n");
      out.write("                    <button id=\"prev\"><</button>\n");
      out.write("                    <button id=\"next\">></button>\n");
      out.write("                </div>\n");
      out.write("                <ul class=\"dots\">\n");
      out.write("                    <li class=\"active\"></li>\n");
      out.write("                    <li></li>\n");
      out.write("                    <li></li>\n");
      out.write("                    <li></li>\n");
      out.write("                    <li></li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"main__category main\">\n");
      out.write("                <div class=\"title\">\n");
      out.write("                    <h2>Category</h2>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"main__category_container container\">\n");
      out.write("                    <!-- loop  -->\n");
      out.write("                    ");

                        ArrayList<Category> listC = CategoryDAO.displayAllCate();
                        for (Category c : listC) {
                    
      out.write("\n");
      out.write("                    <div class=\"column\">\n");
      out.write("                        <a href=\"#\"><!-- product detail link-->\n");
      out.write("                            <div class=\"item\">\n");
      out.write("                                <img src=\"");
      out.print( c.getImg());
      out.write("\" alt=\"\" />  <!--category img -->\n");
      out.write("                                <h4>");
      out.print( c.getCateName());
      out.write("</h4> <!--category name -->\n");
      out.write("                            </div>\n");
      out.write("                        </a>\n");
      out.write("                    </div>\n");
      out.write("                    ");

                        }
                    
      out.write("\n");
      out.write("                    <!-- end loop  -->\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            <div class=\"main__discount main\">\n");
      out.write("                <div class=\"title\">\n");
      out.write("                    <h2>Discount Products</h2>\n");
      out.write("                    <h3><a href=\"#\">View More</a></h3>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"main__discount_container container\">\n");
      out.write("                    ");

                        ArrayList<Product> listP = ProductDAO.displayDiscountProduct();
                        for (Product p : listP) {
                            Shop s = ShopDAO.findShopByProductId(p.getId());
                            float discountPrice = 1 - DiscountDAO.calculateDiscount(p.getId());
                            ArrayList<String> listI = ProductDAO.getImages(p.getId());
                            ArrayList<String> listN = ProductDAO.getProductNameByID(p.getId());
                    
      out.write("\n");
      out.write("                    <div class=\"column\">\n");
      out.write("                        <a href=\"BirdPee?action=ViewProduct&id=");
      out.print( p.getId());
      out.write("\"><!-- product detail link-->\n");
      out.write("                            <div class=\"item\">\n");
      out.write("\n");
      out.write("                                <img src=\"");
      out.print( listI.get(0));
      out.write("\" alt=\"\" /> <!--Product img -->\n");
      out.write("                                <h5 style=\"color: grey\">");
      out.print( s.getName());
      out.write("</h5> <!--shop name-->\n");
      out.write("                                <div class=\"name-text\"> \n");
      out.write("                                    <p>");
      out.print( listN.get(0));
      out.write("</p> <!-- product name -->\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"rating-star\">\n");
      out.write("                                    <i class=\"fa-solid fa-star\" style=\"color: #ffd43b\"></i>\n");
      out.write("                                    <i class=\"fa-solid fa-star\" style=\"color: #ffd43b\"></i>\n");
      out.write("                                    <i class=\"fa-solid fa-star\" style=\"color: #ffd43b\"></i>\n");
      out.write("                                    <i class=\"fa-solid fa-star\" style=\"color: #ffd43b\"></i>\n");
      out.write("                                    <i class=\"fa-solid fa-star\" style=\"color: #ffd43b\"></i>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"discount-tag\">\n");
      out.write("                                    <span class=\"discount-percent\">");
      out.print( String.format("%.0f", (1 - discountPrice) * 100));
      out.write("%</span>\n");
      out.write("                                    <span class=\"discount-label\">DISCOUNT</span>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"price\">\n");
      out.write("                                    <span class=\"old-price\" style=\"text-decoration: line-through; color: gray\">");
      out.print( String.format("%,.0f", p.getPrice()));
      out.write(" VND</span>\n");
      out.write("                                    <br>\n");
      out.write("                                    <span class=\"new-price\" style=\"color: green; font-size: 140%\"> ");
      out.print( String.format("%,.0f", p.getPrice() * discountPrice));
      out.write(" VND</span><!--Product price discount-->\n");
      out.write("                                </div>\n");
      out.write("                                <img\n");
      out.write("                                    class=\"icon\"\n");
      out.write("                                    src=\"images/free-delivery-free-svgrepo-com.svg\"\n");
      out.write("                                    alt=\"\"\n");
      out.write("                                    />\n");
      out.write("                            </div>\n");
      out.write("                        </a>\n");
      out.write("                    </div>\n");
      out.write("                    ");

                        }
                    
      out.write("\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"main__hot-seller main\">\n");
      out.write("                <div class=\"title\">\n");
      out.write("                    <h2>Hot Products</h2>\n");
      out.write("                    <h3><a href=\"#\">View More</a></h3>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"main__hot-seller_container container\">\n");
      out.write("                    ");

                        listP = ProductDAO.displayHotProduct();
                        for (Product p : listP) {
                            Shop s = ShopDAO.findShopByProductId(p.getId());
                            ArrayList<String> listI = ProductDAO.getImages(p.getId());
                            ArrayList<String> listN = ProductDAO.getProductNameByID(p.getId());
                    
      out.write("\n");
      out.write("                    <div class=\"column\">\n");
      out.write("                        <a href=\"BirdPee?action=ViewProduct&id=");
      out.print( p.getId());
      out.write("\"><!-- product detail link-->\n");
      out.write("                            <div class=\"item\">\n");
      out.write("                                <img src=\"");
      out.print( listI.get(0));
      out.write("\" alt=\"\" /><!--product img -->\n");
      out.write("                                <h5>");
      out.print( s.getName());
      out.write("</h5><!--Shop name-->\n");
      out.write("                                <div class=\"name-text\"> \n");
      out.write("                                    <p>");
      out.print( listN.get(0));
      out.write("</p><!--Product name-->\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"rating-star\">\n");
      out.write("                                    <i class=\"fa-solid fa-star\" style=\"color: #ffd43b\"></i>\n");
      out.write("                                    <i class=\"fa-solid fa-star\" style=\"color: #ffd43b\"></i>\n");
      out.write("                                    <i class=\"fa-solid fa-star\" style=\"color: #ffd43b\"></i>\n");
      out.write("                                    <i class=\"fa-solid fa-star\" style=\"color: #ffd43b\"></i>\n");
      out.write("                                    <i class=\"fa-solid fa-star\" style=\"color: #ffd43b\"></i>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"sold-place\">\n");
      out.write("                                    <p\n");
      out.write("                                        class=\"sold\"\n");
      out.write("                                        style=\" color: gray\"\n");
      out.write("                                        >");
      out.print( p.getSoldQuantity());
      out.write(" Has Been Sold</p><!--Product sold quantity-->\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"price\">\n");
      out.write("                                    <span class=\"new-price\" style=\"color: green; font-size: 140%\">");
      out.print( String.format("%,.0f", p.getPrice()));
      out.write(" VND</span><!--Product base price-->\n");
      out.write("                                </div>\n");
      out.write("                                <img\n");
      out.write("                                    class=\"icon\"\n");
      out.write("                                    src=\"images/free-delivery-free-svgrepo-com.svg\"\n");
      out.write("                                    alt=\"\"\n");
      out.write("                                    />\n");
      out.write("                            </div>\n");
      out.write("                        </a>\n");
      out.write("                    </div>\n");
      out.write("                    ");

                        }
                    
      out.write("\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </main>\n");
      out.write("\n");
      out.write("        <footer style=\"margin-top: 50px\">\n");
      out.write("            <div class=\"left-footer\">\n");
      out.write("                <span style=\"font-size: 20px; margin-bottom: 10px;\">FOLLOW US ON :</span>\n");
      out.write("                <span style=\"margin-bottom: 5px;\"><i class=\"fa-brands fa-facebook\" style=\"color: #0f53c7;\"></i>\n");
      out.write("                    &nbsp;Facebook</span>\n");
      out.write("                <span style=\"margin-bottom: 5px;\"><i class=\"fa-brands fa-instagram\"></i> &nbsp;Instagram</span>\n");
      out.write("                <span style=\"margin-bottom: 5px;\"><i class=\"fa-brands fa-linkedin\" style=\"color: #195fd7;\"></i> &nbsp;\n");
      out.write("                    Linkedlin</span>\n");
      out.write("                <span style=\"margin-bottom: 5px;\">Payment Method:</span>\n");
      out.write("                <div class=\"payment-method-logo\">\n");
      out.write("                    <span><i class=\"fa-brands fa-cc-visa\"></i> &nbsp; </span>\n");
      out.write("                    <div class=\"image-footer-wrapper\">\n");
      out.write("                        <img src=\"https://cdn.haitrieu.com/wp-content/uploads/2022/10/Icon-VNPAY-QR-1024x800.png\" alt=\"\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"image-footer-wrapper\">\n");
      out.write("                        <img src=\"https://th.bing.com/th?id=ODLS.b8df17ca-816a-439c-af59-43b1ae16d6d6&w=32&h=32&qlt=92&pcl=fffffa&o=6&pid=1.2\"\n");
      out.write("                             alt=\"\">\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"right-footer\">\n");
      out.write("                <div class=\"footer-link\">\n");
      out.write("                    <a href=\"\">Privacy Notice</a>\n");
      out.write("                    <a href=\"\">Conditions of Use</a>\n");
      out.write("                    <a href=\"\">Your Ads Privacy Choices</a>\n");
      out.write("                    <a href=\"\">Payments Terms of Use</a>\n");
      out.write("                    <a href=\"\">Cookies</a>\n");
      out.write("                    <a href=\"\">User Agreement</a>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"footer-details\">\n");
      out.write("                    <p>Address:Site E2a-7, Road D1, ?. D1,Long Thanh My district, Thu Duc city, Ho Chi Minh city,Viet Nam. </p>\n");
      out.write("                    <p>Contact: 028 7300 5588 - Email: daihoc.hcm@fpt.edu.vn</p>\n");
      out.write("                    <p>Business code: 0102100740 powered by Department of Planning & Investment Ho Chi Minh city for the first\n");
      out.write("                        time in 23/09/2006</p>\n");
      out.write("                    <p>© 2023 - Copyright belongs to Birdpee</p>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </footer>\n");
      out.write("        <script src=\"js/HomePageSlider.js\"></script>\n");
      out.write("    </body>\n");
      out.write("\n");
      out.write("</html>\n");
      out.write("\n");
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
