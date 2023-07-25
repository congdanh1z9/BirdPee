package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class OrderManagementSO_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/OrderManagementSO.css\" />\n");
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
      out.write("        <link rel=\"icon\" type=\"image/x-icon\" href=\"../images/logo2.png\" />\n");
      out.write("\n");
      out.write("        <script src=\"https://kit.fontawesome.com/a076d05399.js\"></script>\n");
      out.write("        <title>BirdPee - Shop Owner</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <nav>\n");
      out.write("            <div class=\"logo\">\n");
      out.write("                <i class=\"bx bx-menu menu-icon\"></i>\n");
      out.write("                <span class=\"logo-name\">ORDER MANAGEMENT</span>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"user-info\">\n");
      out.write("                <img src=\"../images/use.png\" alt=\"\" />\n");
      out.write("                <h3>Username</h3>\n");
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
      out.write("                            <a href=\"dashboardso.html\" class=\"nav-link\">\n");
      out.write("                                <i class=\"bx bxs-spreadsheet icon\"></i>\n");
      out.write("                                <span class=\"link\">DASHBOARD</span>\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"list\">\n");
      out.write("                            <a href=\"productmanagementso.html\" class=\"nav-link\">\n");
      out.write("                                <i class=\"icon bx bxs-package\"></i>\n");
      out.write("                                <span class=\"link\">PRODUCT MANAGEMENT</span>\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"list\">\n");
      out.write("                            <a href=\"CustomerManagementSO.html\" class=\"nav-link\">\n");
      out.write("                                <i class=\"icon bx bxs-package\"></i>\n");
      out.write("                                <span class=\"link\">CUSTOMER MANAGEMENT</span>\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"list\">\n");
      out.write("                            <a href=\"shopprofilemanagementso.html\" class=\"nav-link\">\n");
      out.write("                                <i class=\"bx bxs-store-alt icon\"></i>\n");
      out.write("                                <span class=\"link\">SHOP PROFILE</span>\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"list\">\n");
      out.write("                            <a href=\"CustomerManagementSO.html\" class=\"nav-link\">\n");
      out.write("                                <i class=\"bx bxs-comment icon\"></i>\n");
      out.write("                                <span class=\"link\">FEEDBACK MANAGEMENT</span>\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"list\">\n");
      out.write("                            <a href=\"OrderManagementSO.html\" class=\"nav-link active\">\n");
      out.write("                                <i class=\"bx bx-notepad icon\"></i>\n");
      out.write("                                <span class=\"link\">ORDER MANAGEMENT</span>\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("\n");
      out.write("                        <li class=\"list\">\n");
      out.write("                            <a href=\"../homepage.html\" class=\"nav-link\">\n");
      out.write("                                <i class=\"bx bx-log-out icon\"></i>\n");
      out.write("                                <span class=\"link\">LOGOUT</span>\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("        <main>\n");
      out.write("            <div class=\"main-container\">\n");
      out.write("                <div class=\"sort\">\n");
      out.write("                    <div><a href=\"#\">All Orders</a></div>\n");
      out.write("                    <div><a href=\"#\">Completed</a></div>\n");
      out.write("                    <div><a href=\"#\">In Progress</a></div>\n");
      out.write("                    <div><a href=\"#\">Canceled</a></div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"search\">\n");
      out.write("                    <input type=\"text\" placeholder=\"Search something...\" required />\n");
      out.write("                    <button>Find</button>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"order-status\">\n");
      out.write("                    <h1>Order Status</h1>\n");
      out.write("                    <div class=\"table-section\">\n");
      out.write("                        <table>\n");
      out.write("                            <thead>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>Order ID</td>\n");
      out.write("                                    <td>Customer Name</td>\n");
      out.write("                                    <td>Total Price</td>\n");
      out.write("                                    <td>Order Date</td>\n");
      out.write("                                    <td>Payment Method</td>\n");
      out.write("                                    <td>Status</td>\n");
      out.write("                                    <td>Action</td>\n");
      out.write("                                </tr>\n");
      out.write("                            </thead>\n");
      out.write("                            <tbody class=\"tbody\">\n");
      out.write("                                <tr class=\"tr\">\n");
      out.write("                                    <td>\n");
      out.write("                                        O12345\n");
      out.write("                                        <span class=\"icon\"><i class=\"fa-solid fa-eye\"></i></span>\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>Andy</td>\n");
      out.write("                                    <td>300$</td>\n");
      out.write("                                    <td>29/5/2023</td>\n");
      out.write("                                    <td>COD</td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <p class=\"cancel\">CANCELLED</p>\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <div class=\"button-place\">\n");
      out.write("                                            <button class=\"approve-btn\">Approve</button>\n");
      out.write("                                            <button class=\"cancel-btn\">Cancel</button>\n");
      out.write("                                        </div>\n");
      out.write("                                    </td>\n");
      out.write("                                </tr>\n");
      out.write("\n");
      out.write("                                <tr class=\"tr\">\n");
      out.write("                                    <td>\n");
      out.write("                                        O12345\n");
      out.write("                                        <span class=\"icon\"><i class=\"fa-solid fa-eye\"></i></span>\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>Andy</td>\n");
      out.write("                                    <td>300$</td>\n");
      out.write("                                    <td>29/5/2023</td>\n");
      out.write("                                    <td>COD</td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <p class=\"success\">SUCCESSFUL</p>\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <div class=\"button-place\">\n");
      out.write("                                            <button class=\"approve-btn\">Approve</button>\n");
      out.write("                                            <button class=\"cancel-btn\">Cancel</button>\n");
      out.write("                                        </div>\n");
      out.write("                                    </td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr class=\"tr\">\n");
      out.write("                                    <td>\n");
      out.write("                                        O12345\n");
      out.write("                                        <span class=\"icon\"><i class=\"fa-solid fa-eye\"></i></span>\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>Andy</td>\n");
      out.write("                                    <td>300$</td>\n");
      out.write("                                    <td>29/5/2023</td>\n");
      out.write("                                    <td>COD</td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <p class=\"in-progress\">IN PROGRESS</p>\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <div class=\"button-place\">\n");
      out.write("                                            <button class=\"approve-btn\">Approve</button>\n");
      out.write("                                            <button class=\"cancel-btn\">Cancel</button>\n");
      out.write("                                        </div>\n");
      out.write("                                    </td>\n");
      out.write("                                </tr>\n");
      out.write("                            </tbody>\n");
      out.write("                        </table>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div id=\"popup\" class=\"\">\n");
      out.write("                <div class=\"image-place\">\n");
      out.write("                    <img src=\"../images/bird1.jpg\" alt=\"\" />\n");
      out.write("                </div>\n");
      out.write("                <div class=\"content\">\n");
      out.write("                    <div>Product ID: P123</div>\n");
      out.write("                    <div>\n");
      out.write("                        Product Name: <input type=\"text\" value=\"Lucio Bird\" required />\n");
      out.write("                    </div>\n");
      out.write("                    <div>Unit Price: <input type=\"text\" value=\"123\" required /></div>\n");
      out.write("                    <div>Category ID: <input type=\"text\" value=\"C123\" required /></div>\n");
      out.write("                    <div>Quantity: <input type=\"text\" value=\"123\" required /></div>\n");
      out.write("                    <div>Discount: <input type=\"text\" value=\"10%\" required /></div>\n");
      out.write("                    <div>\n");
      out.write("                        Description:\n");
      out.write("                        <textarea name=\"\" id=\"\" cols=\"30\" rows=\"10\"></textarea>\n");
      out.write("                    </div>\n");
      out.write("                    <div>Status:</div>\n");
      out.write("                    <button>Update</button>\n");
      out.write("                </div>\n");
      out.write("                <div id=\"close\">&times;</div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"shadow\"></div>\n");
      out.write("        </main>\n");
      out.write("        <script src=\"js/OrderManagementSO.js\"></script>\n");
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
