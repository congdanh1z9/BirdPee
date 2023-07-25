package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.team1.BirdPee.DAO.ShipDAO;
import com.team1.BirdPee.DAO.CartDAO;
import java.util.ArrayList;
import com.team1.BirdPee.DAO.AccountDAO;
import com.team1.BirdPee.DTO.Customer;

public final class AddAddress_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <title>BirdPee</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/AddAdress.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css\"\n");
      out.write("              integrity=\"sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==\"\n");
      out.write("              crossorigin=\"anonymous\" referrerpolicy=\"no-referrer\" />\n");
      out.write("        <link rel=\"icon\" type=\"image/x-icon\" href=\"images/logo2.png\" />\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            Customer ac = (Customer) session.getAttribute("user");
            if (ac == null) {
                response.sendRedirect("Login.jsp");
            } else {
        
      out.write("\n");
      out.write("        <header>\n");
      out.write("            <div class=\"header__logo\">\n");
      out.write("                <a href=\"Homepage.jsp\"><img src=\"images/Logo.png\" alt=\"\" /></a>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"header__search-bar\">\n");
      out.write("                <form action=\"BirdPee\" method=\"post\">\n");
      out.write("                    <input class=\"search\" name=\"txtSearch\" type=\"text\" placeholder=\"Find something you need\" />\n");
      out.write("                    <input type=\"hidden\"  value=\"Search\" name=\"action\" class=\"button\">\n");
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
      out.write("                    <a href = \"Profile.jsp\">\n");
      out.write("                        <li>\n");
      out.write("                            <div class=\"header__icon_circle\">\n");
      out.write("                                <i class=\"fas fa-solid fa-user\"></i>\n");
      out.write("                            </div>\n");
      out.write("                            <h4>");
      out.print( ac.getUsername());
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
      out.write("                    <a href = \"Cart.jsp\">\n");
      out.write("                        <li>\n");
      out.write("                            <div class=\"header__icon_circle shopping-bag\" current-count=\"");
      out.print( CartDAO.countNumberOfItemInCart(ac.getId()));
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
      out.write("            <div class=\"main-container\">\n");
      out.write("                <div class=\"main-nav\">\n");
      out.write("                    <div class=\"nav-header\">\n");
      out.write("                        <div class=\"nav-header-avatar\">\n");
      out.write("                            <div class=\"nav-header-image-wrapper\">\n");
      out.write("                                <img src=\"");
      out.print( ac.getImg());
      out.write("\" alt=\"avatar\">\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"nav-header-right\">\n");
      out.write("                            <div class=\"nav-header-username\">\n");
      out.write("                                ");
      out.print( ac.getUsername());
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"nav-header-edit\">\n");
      out.write("                                <a href=\"BirdPee?action=Signout\" style=\"font-size:15px; color: #6a6d71;\">Sign out</a>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"nav-main\">\n");
      out.write("                        <div class=\"nav-main-link\">\n");
      out.write("                            <a href=\"Profile.jsp\" class=\"nav-main-link-inner\">\n");
      out.write("                                <div class=\"nav-main-link-logo\">\n");
      out.write("                                    <i class=\"fa-sharp fa-regular fa-user\" style=\"color: blue;\"></i>\n");
      out.write("                                </div>\n");
      out.write("                                <span style=\"margin-left: 10px;\">My Profile</span>\n");
      out.write("                            </a>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"nav-main-link\">\n");
      out.write("                            <a href=\"Address.jsp\" class=\"nav-main-link-inner\">\n");
      out.write("                                <div class=\"nav-main-link-logo\">\n");
      out.write("                                    <i class=\"fa-solid fa-location-dot\"></i>\n");
      out.write("                                </div>\n");
      out.write("                                <span style=\"margin-left: 10px;\">My Address</span>\n");
      out.write("                            </a>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"nav-main-link\">\n");
      out.write("                            <a href=\"#\" class=\"nav-main-link-inner\">\n");
      out.write("                                <div class=\"nav-main-link-logo\">\n");
      out.write("                                    <i class=\"fa-solid fa-bell\" style=\"color: #1d9f26;\"></i>\n");
      out.write("                                </div>\n");
      out.write("                                <span style=\"margin-left: 10px;\">Notification</span>\n");
      out.write("                            </a>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"nav-main-link\">\n");
      out.write("                            <a href=\"OrderHistory.jsp\" class=\"nav-main-link-inner\">\n");
      out.write("                                <div class=\"nav-main-link-logo\">\n");
      out.write("                                    <i class=\"fa-regular fa-clipboard\" style=\"color: #005eff;\"></i>\n");
      out.write("                                </div>\n");
      out.write("                                <span style=\"margin-left: 10px;\">Order History</span>\n");
      out.write("                            </a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"main-right-container\">\n");
      out.write("                    <div class=\"add-address-title\">Add New Receiver Address</div>\n");
      out.write("                    <div class=\"main-right-container-inner\">\n");
      out.write("                        <form class=\"add-address-container\">\n");
      out.write("                            ");

                                Cookie cookie[] = request.getCookies();
                                String name = "";
                                String phone = "";
                                String address = "";
                                if (cookie != null) {
                                    for (Cookie c : cookie) {
                                        if (c.getName().equalsIgnoreCase("name")) {
                                            name = c.getValue();
                                            break;
                                        }else name = "";
                                    }
                                    
                                    for (Cookie c : cookie) {
                                        if (c.getName().equalsIgnoreCase("phone")) {
                                            phone = c.getValue();
                                            break;
                                        }else phone = "";
                                    }
                                    
                                    for (Cookie c : cookie) {
                                        if (c.getName().equalsIgnoreCase("address")) {
                                            address = c.getValue();
                                            break;
                                        }else address = "";
                                    }
                                }
                            
      out.write("\n");
      out.write("                            <div class=\"add-address-left\">\n");
      out.write("                                <div class=\"input\">\n");
      out.write("                                    <div>Full Name</div>\n");
      out.write("                                    <input type=\"text\" name=\"name\" placeholder=\"Please enter your receiver's name\" id=\"name\" oninput=\"keepData()\" value=\"");
      out.print( (name.equalsIgnoreCase("") ? "" : name));
      out.write("\">\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"input\">\n");
      out.write("                                    <div>Phone Number</div>\n");
      out.write("                                    <input type=\"text\" name=\"phone\" placeholder=\"Please enter your receiver's phone number\" id=\"phone\" oninput=\"keepData()\" value=\"");
      out.print( (phone.equalsIgnoreCase("") ? "" : phone));
      out.write("\">\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"add-address-right\">\n");
      out.write("                                <div class=\"input\">\n");
      out.write("                                    <div>Address</div>\n");
      out.write("                                    <input type=\"text\" name=\"address\" placeholder=\"Please enter your address\" id=\"address\" oninput=\"keepData()\" value=\"");
      out.print( (address.equalsIgnoreCase("") ? "" : address));
      out.write("\">\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"input-district\">\n");
      out.write("                                    <div class=\"input-title\">\n");
      out.write("                                        <p>");
      out.print( request.getParameter("provinceid") != null ? ShipDAO.getProvinceNameByID(request.getParameter("provinceid")) : "Province");
      out.write("</p>\n");
      out.write("                                        <i class=\"fa-solid fa-angle-down\" style=\"font-size: 12px; \"></i>\n");
      out.write("                                    </div>\n");
      out.write("                                    <ul class=\"options\">\n");
      out.write("                                        ");

                                            ArrayList<String> listProvince = ShipDAO.getAllProvince();
                                            for (String p : listProvince) {
                                        
      out.write("\n");
      out.write("                                        <li>\n");
      out.write("                                            <a href=\"AddAddress.jsp?provinceid=");
      out.print( p.split("@")[1]);
      out.write("\"> ");
      out.print( p.split("@")[0]);
      out.write(" </a>\n");
      out.write("                                        </li>\n");
      out.write("                                        ");

                                            }
                                        
      out.write("\n");
      out.write("                                    </ul>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"input-district\">\n");
      out.write("                                    <div class=\"input-title\">\n");
      out.write("                                        <p>");
      out.print( request.getParameter("districtid") != null ? ShipDAO.getDistrictNameByID(request.getParameter("districtid")) : "District");
      out.write("</p>\n");
      out.write("                                        <i class=\"fa-solid fa-angle-down\" style=\"font-size: 12px; \"></i>\n");
      out.write("                                    </div>\n");
      out.write("                                    <ul class=\"options\">\n");
      out.write("                                        ");

                                            if (request.getParameter("provinceid") != null) {
                                                ArrayList<String> listDistrict = ShipDAO.getDistrictByProvinceID(request.getParameter("provinceid"));
                                                for (String district : listDistrict) {
                                                    String districtName = district.split("@")[0];
                                                    int districtID = Integer.parseInt(district.split("@")[1]);
                                        
      out.write("\n");
      out.write("                                        <li><a href=\"AddAddress.jsp?provinceid=");
      out.print( request.getParameter("provinceid"));
      out.write("&districtid=");
      out.print( districtID);
      out.write('"');
      out.write('>');
      out.print( districtName);
      out.write("</a></li>\n");
      out.write("                                            ");

                                                    }
                                                }
                                            
      out.write("\n");
      out.write("                                    </ul>\n");
      out.write("                                </div>\n");
      out.write("                                <span class=\"input-button\">\n");
      out.write("                                    <button style=\"padding: 8px 50px 8px 50px;\">SAVE</button>\n");
      out.write("                                    <button style=\"padding: 8px 38px 8px 38px;\">CANCEL</button>\n");
      out.write("                                </span>\n");
      out.write("                            </div>\n");
      out.write("                        </form>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </main>\n");
      out.write("        <script>\n");
      out.write("            function keepData() {\n");
      out.write("                let name = document.getElementById(\"name\");\n");
      out.write("                let phone = document.getElementById(\"phone\");\n");
      out.write("                let address = document.getElementById(\"address\");\n");
      out.write("                let nameValue = name.value;\n");
      out.write("                let phoneValue = phone.value;\n");
      out.write("                let addressValue = address.value;\n");
      out.write("\n");
      out.write("                document.cookie = \"name=\" + nameValue;\n");
      out.write("                document.cookie = \"phone=\" + phoneValue;\n");
      out.write("                document.cookie = \"address=\" + addressValue;\n");
      out.write("            }\n");
      out.write("        </script>\n");
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
      out.write("        ");

            }
        
      out.write("\n");
      out.write("    </body>\n");
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
