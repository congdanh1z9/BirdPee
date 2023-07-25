package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.team1.BirdPee.DAO.DiscountDAO;
import com.team1.BirdPee.DTO.Category;
import com.team1.BirdPee.DAO.CategoryDAO;
import com.team1.BirdPee.DAO.ProductDAO;
import com.team1.BirdPee.DTO.Product;
import com.team1.BirdPee.DTO.Shop;
import com.team1.BirdPee.DAO.ShopDAO;
import java.util.ArrayList;
import com.team1.BirdPee.DTO.Account;

public final class ProductManagementSO1_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n");
      out.write("\n");
      out.write("        <link\n");
      out.write("            href=\"https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css\"\n");
      out.write("            rel=\"stylesheet\"\n");
      out.write("            />\n");
      out.write("        <link\n");
      out.write("            rel=\"stylesheet\"\n");
      out.write("            href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css\"\n");
      out.write("            integrity=\"sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==\"\n");
      out.write("            crossorigin=\"anonymous\"\n");
      out.write("            referrerpolicy=\"no-referrer\"\n");
      out.write("            />\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/ProductManagementSO.css\" />\n");
      out.write("        <link rel=\"icon\" type=\"image/x-icon\" href=\"images/logo2.png\" />\n");
      out.write("        <script src=\"https://kit.fontawesome.com/a076d05399.js\"></script>\n");
      out.write("        <title>Product Management</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            Account ac = (Account) session.getAttribute("user");
            if (session.getAttribute("user") == null) {
                response.sendRedirect("Login.jsp");
            } else {
                Shop s = ShopDAO.findShopByOwnerId(ac.getId());
        
      out.write("\n");
      out.write("        <nav>\n");
      out.write("            <div class=\"logo\">\n");
      out.write("                <i class=\"bx bx-menu menu-icon\"></i>\n");
      out.write("                <span class=\"logo-name\">PRODUCT MANAGEMENT</span>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"user-info\">\n");
      out.write("                <img src=\"https://cdn-icons-png.flaticon.com/512/552/552721.png\" alt=\"\" />\n");
      out.write("                <h3>");
      out.print( ac.getUsername());
      out.write("</h3>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"sidebar\">\n");
      out.write("                <div class=\"logo\">\n");
      out.write("                    <i class=\"bx bx-menu menu-icon overlay\"></i>\n");
      out.write("                    <span class=\"logo-name\">BIRDPEE</span>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"sidebar-content\">\n");
      out.write("                    <ul class=\"lists\">\n");
      out.write("                        <li class=\"list\">\n");
      out.write("                            <a href=\"DashboardSO.jsp\" class=\"nav-link\">\n");
      out.write("                                <i class=\"bx bxs-spreadsheet icon\"></i>\n");
      out.write("                                <span class=\"link\">DASHBOARD</span>\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"list\">\n");
      out.write("                            <a href=\"ProductManagementSO.jsp\" class=\"nav-link active\">\n");
      out.write("                                <i class=\"icon bx bxs-package\"></i>\n");
      out.write("                                <span class=\"link\">PRODUCT MANAGEMENT</span>\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"list\">\n");
      out.write("                            <a href=\"#\" class=\"nav-link\">\n");
      out.write("                                <i class=\"icon bx bxs-package\"></i>\n");
      out.write("                                <span class=\"link\">CUSTOMER MANAGEMENT</span>\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"list\">\n");
      out.write("                            <a href=\"ShopProfileManagementSO.jsp\" class=\"nav-link\">\n");
      out.write("                                <i class=\"bx bxs-store-alt icon\"></i>\n");
      out.write("                                <span class=\"link\">SHOP PROFILE</span>\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"list\">\n");
      out.write("                            <a href=\"#\" class=\"nav-link\">\n");
      out.write("                                <i class=\"bx bxs-comment icon\"></i>\n");
      out.write("                                <span class=\"link\">FEEDBACK MANAGEMENT</span>\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"list\">\n");
      out.write("                            <a href=\"OrderManagementSO.jsp\" class=\"nav-link\">\n");
      out.write("                                <i class=\"bx bx-notepad icon\"></i>\n");
      out.write("                                <span class=\"link\">ORDER MANAGEMENT</span>\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("\n");
      out.write("                        <li class=\"list\">\n");
      out.write("                            <a href=\"Login.jsp\" class=\"nav-link\">\n");
      out.write("                                <i class=\"bx bx-log-out icon\"></i>\n");
      out.write("                                <span class=\"link\">LOGOUT</span>\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("        <main>\n");
      out.write("            <h1>PRODUCT MANAGEMENT</h1>\n");
      out.write("            <div class=\"product-place\">\n");
      out.write("                <div class=\"table-section\">\n");
      out.write("                    <table>\n");
      out.write("                        <thead>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>Product ID</td>\n");
      out.write("                                <td>Product Name</td>\n");
      out.write("                                <td>Category ID</td>\n");
      out.write("                                <td>Status</td>\n");
      out.write("                                <td>Details</td>\n");
      out.write("                            </tr>\n");
      out.write("                        </thead>\n");
      out.write("                        <tbody class=\"tbody\">\n");
      out.write("                            ");
//
                                ArrayList<Integer> listProductID = ShopDAO.takeoutAllProductIdInShop(s.getId());
                                for (Integer id : listProductID) {
                                    Product p = ProductDAO.getProductByIDSO(id);
                            
      out.write("\n");
      out.write("                            <tr class=\"tr\">\n");
      out.write("                                <td>");
      out.print( p.getId());
      out.write("</td>\n");
      out.write("                                <td>\n");
      out.write("                                    <div class=\"text-place\">\n");
      out.write("                                        <p style=\"width: 80%\">\n");
      out.write("                                            ");
      out.print( p.getName());
      out.write("\n");
      out.write("                                        </p>\n");
      out.write("                                    </div>\n");
      out.write("                                </td>\n");
      out.write("                                <td>");
      out.print( p.getCateid());
      out.write(':');
      out.write(' ');
      out.print( CategoryDAO.getNameByID(p.getCateid()));
      out.write("</td>\n");
      out.write("                                <td class=\"not-approve\">");
      out.print( ProductDAO.getProductStatusSO(p.getId()));
      out.write("</td>\n");
      out.write("                                <td><a href=\"ProductManagementSO.jsp?id=");
      out.print( p.getId());
      out.write("\"><i class=\"icon fa-solid fa-eye\"></i></a></td>\n");
      out.write("                            </tr>\n");
      out.write("                            ");

                                }
                            
      out.write("\n");
      out.write("\n");
      out.write("                        </tbody>\n");
      out.write("                    </table>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            ");
//
                if (request.getParameter("id") != null) {
                    Product p = ProductDAO.getProductByIDSO(Integer.parseInt(request.getParameter("id")));
                    ArrayList<Category> listC = CategoryDAO.displayAllCate();
            
      out.write("\n");
      out.write("            <form action=\"BirdPee\" method=\"post\">\n");
      out.write("                <div id=\"popup-product\" class=\"show\">\n");
      out.write("                    <div class=\"image-place\">\n");
      out.write("                        <img src=\"");
      out.print( ProductDAO.getImages(p.getId()).get(0));
      out.write("\" alt=\"\" />\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"content\">\n");
      out.write("                        <div>Product ID: ");
      out.print( p.getId());
      out.write("</div>\n");
      out.write("                        <input type=\"hidden\" name=\"id\" value=\"");
      out.print( p.getId());
      out.write("\"/>\n");
      out.write("                        <div>\n");
      out.write("                            Product Name: <input type=\"text\" name=\"name\" value=\"");
      out.print( p.getName());
      out.write("\" required />\n");
      out.write("                        </div>\n");
      out.write("                        <div>Unit Price (VND): <input type=\"text\" name=\"price\" value=\"");
      out.print( String.format("%.0f", p.getPrice()));
      out.write("\" required /></div>\n");
      out.write("                        <div>\n");
      out.write("                            Category ID: \n");
      out.write("                            <select name=\"category\">\n");
      out.write("                                ");
//
                                    for (Category c : listC) {
                                
      out.write("\n");
      out.write("                                <option value=\"");
      out.print( c.getId());
      out.write('"');
      out.write(' ');
      out.print( c.getId() == p.getCateid() ? "selected" : "");
      out.write('>');
      out.print( c.getName());
      out.write("</option>\n");
      out.write("                                ");

                                    }
                                
      out.write("\n");
      out.write("                            </select>\n");
      out.write("                        </div>\n");
      out.write("                        <div>Quantity: <input type=\"number\" name=\"qty\" value=\"");
      out.print( p.getQuantity());
      out.write("\" required /></div>\n");
      out.write("                        <div>\n");
      out.write("                            Discount: \n");
      out.write("                            <select name=\"discount\">\n");
      out.write("                                <option value=\"none\" ");
      out.print( p.getIsDiscount() == 0 ? "selected" : "");
      out.write(">No discount</option>\n");
      out.write("                                ");

                                    for (int i = 10; i <= 100;) {
                                
      out.write("\n");
      out.write("                                <option value=\"");
      out.print( i);
      out.write('"');
      out.write(' ');
      out.print( (p.getIsDiscount() == 1 && i == DiscountDAO.calculateDiscount(p.getId()) * 100) ? "selected" : "");
      out.write('>');
      out.print( i);
      out.write("%</option>\n");
      out.write("                                ");

                                        i += 10;
                                    }
                                
      out.write("\n");
      out.write("                            </select>\n");
      out.write("                        </div>\n");
      out.write("                        <div>\n");
      out.write("                            Short description:\n");
      out.write("                            <br><textarea name=\"shortdes\" id=\"\" cols=\"30\" rows=\"10\" style=\"color: black\">");
      out.print( ProductDAO.getDescription("short", p.getDescription()));
      out.write("</textarea>\n");
      out.write("                        </div>\n");
      out.write("                        <div>\n");
      out.write("                            Description:\n");
      out.write("                            <br><textarea name=\"fulldes\" id=\"\" cols=\"30\" rows=\"10\" style=\"color: black\">");
      out.print( ProductDAO.getDescription("full", p.getDescription()));
      out.write("</textarea>\n");
      out.write("                        </div>\n");
      out.write("                        <div>\n");
      out.write("                            Status: \n");
      out.write("                            <select name=\"status\">\n");
      out.write("                                <option value=\"Available\" ");
      out.print( ProductDAO.getProductStatusSO(p.getId()).equalsIgnoreCase("Available") ? "selected" : "");
      out.write(">Available</option>\n");
      out.write("                                <option value=\"Unavailable\" ");
      out.print( ProductDAO.getProductStatusSO(p.getId()).equalsIgnoreCase("Unavailable") ? "selected" : "");
      out.write(">Unavailable</option>\n");
      out.write("                            </select>\n");
      out.write("                        </div>\n");
      out.write("                        <button name=\"action\" value=\"SOUpdateProduct\">Update</button>\n");
      out.write("                    </div>\n");
      out.write("                    <div id=\"close\"><a href=\"ProductManagementSO.jsp\"> &times;</a></div>\n");
      out.write("                </div>\n");
      out.write("            </form>\n");
      out.write("            ");
//
                }
            
      out.write("\n");
      out.write("            <h1>CREATE PRODUCT</h1>\n");
      out.write("            <div class=\"main__product-info\">\n");
      out.write("                <div class=\"left-column\">\n");
      out.write("                    <div class=\"main__picture-profile\">\n");
      out.write("                        <div class=\"title\">\n");
      out.write("                            <p>Product Image</p>\n");
      out.write("                        </div>\n");
      out.write("                        <div id=\"images\" class=\"image-place\"></div>\n");
      out.write("                        <p id=\"num-of-files\">No Files Chosen</p>\n");
      out.write("                        <div class=\"button\">\n");
      out.write("                            <input\n");
      out.write("                                type=\"file\"\n");
      out.write("                                id=\"file-input\"\n");
      out.write("                                onchange=\"preview()\"\n");
      out.write("                                multiple\n");
      out.write("                                />\n");
      out.write("                            <label for=\"file-input\">Upload Image</label>\n");
      out.write("                            <button>Set Image</button>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"voucher\">\n");
      out.write("                        <form action=\"BirdPee\" method=\"post\">\n");
      out.write("                            <div class=\"title\">\n");
      out.write("                                <p>Product's Voucher</p>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"input-place\">\n");
      out.write("                                <div class=\"input-row\">\n");
      out.write("                                    <input type=\"text\" name=\"vcode\" value=\"");
      out.print( request.getParameter("VCode") == null ? "Vouncher code" : request.getParameter("VCode"));
      out.write("\" readonly />\n");
      out.write("                                    <button name=\"action\" value=\"SOVouncherCodeGenerate\">Generate code</button>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"input-row\">\n");
      out.write("                                    <select name=\"product\" id=\"discount\" ");
      out.print( request.getParameter("VCode") == null ? "disabled" : "");
      out.write(">\n");
      out.write("                                        ");

                                            for (Integer id : listProductID) {
                                                Product p = ProductDAO.getProductByID(id);
                                        
      out.write("\n");
      out.write("                                        <option value=\"");
      out.print( id);
      out.write('"');
      out.write('>');
      out.print( p.getName());
      out.write("</option>\n");
      out.write("                                        ");
//  
                                            }
                                        
      out.write("\n");
      out.write("                                    </select>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"input-row\">\n");
      out.write("                                    <p>Minimum money needed: </p> <input type=\"number\" name=\"money\" min=\"0\" value=\"0\"  ");
      out.print( request.getParameter("VCode") == null ? "disabled" : "required");
      out.write("/>\n");
      out.write("\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"input-row\">\n");
      out.write("                                    <p>Quantity: </p>    <input type=\"number\" name=\"qty\" min=\"0\" value=\"0\" max=\"1000000\"  ");
      out.print( request.getParameter("VCode") == null ? "disabled" : "required");
      out.write("/>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"input-row\">\n");
      out.write("                                    <select name=\"discount\" id=\"discount\" ");
      out.print( request.getParameter("VCode") == null ? "disabled" : "");
      out.write(">\n");
      out.write("                                        <option value=\"none\" >No Discount</option>\n");
      out.write("                                        ");

                                            for (int i = 10; i <= 100;) {
                                        
      out.write("\n");
      out.write("                                        <option value=\"");
      out.print( i);
      out.write('"');
      out.write('>');
      out.print( i);
      out.write("%</option>\n");
      out.write("                                        ");

                                                i += 10;
                                            }
                                        
      out.write("\n");
      out.write("                                    </select>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"input-row radio\">\n");
      out.write("                                    <div style=\"margin-right: 10px\">Free Ship: </div>\n");
      out.write("                                    <input\n");
      out.write("                                        type=\"radio\"\n");
      out.write("                                        id=\"freeship\"\n");
      out.write("                                        name=\"shipping\"\n");
      out.write("                                        value=\"1\"\n");
      out.write("                                        ");
      out.print( request.getParameter("VCode") == null ? "disabled" : "");
      out.write("\n");
      out.write("                                        />\n");
      out.write("                                    <span>Free Ship</span>\n");
      out.write("                                    <input type=\"radio\" id=\"none\" name=\"shipping\" value=\"0\" ");
      out.print( request.getParameter("VCode") == null ? "disabled" : "");
      out.write("/>\n");
      out.write("                                    <span>No</span>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"input-row\">\n");
      out.write("                                    <input type=\"date\" name=\"startdate\"  required ");
      out.print( request.getParameter("VCode") == null ? "disabled" : "");
      out.write("/>\n");
      out.write("                                    <label>Start from</label>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"input-row\">\n");
      out.write("                                    <input type=\"date\" name=\"enddate\" required ");
      out.print( request.getParameter("VCode") == null ? "disabled" : "");
      out.write("/>\n");
      out.write("                                    <label>To</label>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"button-place\">\n");
      out.write("                                <button name=\"action\" value=\"SOVouncherGenerate\" ");
      out.print( request.getParameter("VCode") == null ? "disabled" : "");
      out.write(" style=\"");
      out.print( request.getParameter("VCode") == null ? "color: white; background-color:gray" : "");
      out.write("\">Public code</button>\n");
      out.write("                            </div>\n");
      out.write("                        </form>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"main__product-profile\">\n");
      out.write("                    <div class=\"title\">\n");
      out.write("                        <p>Product Information</p>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"input-place\">\n");
      out.write("                        <div class=\"input-row\">\n");
      out.write("                            <input type=\"text\" required />\n");
      out.write("                            <label>Product Name</label>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"input-row\">\n");
      out.write("                            <input type=\"text\" required />\n");
      out.write("                            <label>Unit Price</label>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"input-row\">\n");
      out.write("                            <select name=\"category\" id=\"discount\">\n");
      out.write("                                ");

                                    ArrayList<Category> listC = CategoryDAO.displayAllCate();
                                    for (Category c : listC) {
                                
      out.write("\n");
      out.write("                                <option value=\"");
      out.print( c.getId());
      out.write('"');
      out.write('>');
      out.print( c.getName());
      out.write("</option>\n");
      out.write("                                ");

                                    }
                                
      out.write("\n");
      out.write("                            </select>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"input-row\">\n");
      out.write("                            <input type=\"text\" required />\n");
      out.write("                            <label>Quantity</label>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"input-row\">\n");
      out.write("                            <textarea\n");
      out.write("                                name=\"\"\n");
      out.write("                                id=\"\"\n");
      out.write("                                cols=\"10\"\n");
      out.write("                                rows=\"2\"\n");
      out.write("                                style=\"width: 100%; padding: 10px\"\n");
      out.write("                                placeholder=\"Product Short Desciption\"\n");
      out.write("                                ></textarea>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"input-row\">\n");
      out.write("                            <textarea\n");
      out.write("                                name=\"\"\n");
      out.write("                                id=\"\"\n");
      out.write("                                cols=\"40\"\n");
      out.write("                                rows=\"8\"\n");
      out.write("                                style=\"width: 100%; padding: 10px\"\n");
      out.write("                                placeholder=\"Product Desciption\"\n");
      out.write("                                ></textarea>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"button-place\">\n");
      out.write("                            <button>Create</button>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"shadow\"></div>\n");
      out.write("        </main>\n");
      out.write("        ");
//
            }
        
      out.write("\n");
      out.write("        <script src=\"js/ProductManagementSO.js\"></script>\n");
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
