package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class correction_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Details Correction</title>\n");
      out.write("    </head>\n");
      out.write("    <body style=\"margin: 0px;\">\n");
      out.write("        <img src=\"blood.png\" alt=\"Blood Bank\" height=\"162\" style=\"display: block; width: 100%; \"/>\n");
      out.write("        <div>\n");
      out.write("           <ul style=\"list-style-type: none; margin: 0; padding: 0; background-color: #333333; overflow: hidden; \">\n");
      out.write("             <li style=\"display: inline-block; \"><a href=\"index.jsp\" style=\"color: white; display: block; padding: 14px 16px; text-decoration: none; \" onMouseOver=\"this.style.backgroundColor='#cc0000'\" onmouseout=\"this.style.backgroundColor='#333333'\">Home</a></li>\n");
      out.write("             <li style=\"display: inline-block; \"><a href=\"Register.jsp\" style=\"color: white; display: block; padding: 14px 16px; text-decoration: none; background-color: #cc0000;\">Register</a></li>\n");
      out.write("             <li style=\"display: inline-block; \"><a href=\"stock.jsp\" style=\"color: white; display: block; padding: 14px 16px; text-decoration: none; \" onMouseOver=\"this.style.backgroundColor='#cc0000'\" onmouseout=\"this.style.backgroundColor='#333333'\">Blood Stock</a></li>\n");
      out.write("             <li style=\"display: inline-block; \"><a href=\"forgot.jsp\" style=\"color: white; display: block; padding: 14px 16px; text-decoration: none; \" onMouseOver=\"this.style.backgroundColor='#cc0000'\" onmouseout=\"this.style.backgroundColor='#333333'\">Forgot ID</a></li>\n");
      out.write("             <li style=\"display: inline-block; \"><a href=\"\" style=\"color: white; display: block; padding: 14px 16px; text-decoration: none; \" onMouseOver=\"this.style.backgroundColor='#cc0000'\" onmouseout=\"this.style.backgroundColor='#333333'\">Details Correction</a></li>\n");
      out.write("             <li style=\"float: right; \"><a href=\"\" style=\"color: white; display: block; padding: 14px 16px; text-decoration: none; \" onMouseOver=\"this.style.backgroundColor='red'\" onmouseout=\"this.style.backgroundColor='#333333'\">About</a></li>\n");
      out.write("             <li style=\"float: right; \"><a href=\"login.jsp\" style=\"color: white; display: block; padding: 14px 16px; text-decoration: none; \" onMouseOver=\"this.style.backgroundColor='red'\" onmouseout=\"this.style.backgroundColor='#333333'\">Login</a></li>\n");
      out.write("           </ul>\n");
      out.write("        </div>\n");
      out.write("        <div style=\"background: url(bloodcell.jpg) no-repeat ; height: 560px; border: 2px solid; background-size: cover;\"><br>\n");
      out.write("            <fieldset style=\"width: 0px; padding: 20px 20px; margin: auto; background-color: #eaeaea;\">                 \n");
      out.write("                <legend style=\"font-size: larger; background: #8b8b8b; color: whitesmoke; border-radius: 10px;\">&nbsp;Donor Registration&nbsp;</legend>\n");
      out.write("                <form action=\"Donor\" method=\"post\" enctype=\"multipart/form-data\">\n");
      out.write("                    <table cellspacing=\"50px\">               \n");
      out.write("                        <tbody>\n");
      out.write("                            <tr>\n");
      out.write("                             <td>Name</td>\n");
      out.write("                             <td><input type=\"text\" name=\"name\" style=\"width: 250px;\" readonly/></td>\n");
      out.write("                             <td>DOB</td>\n");
      out.write("                             <td><input type=\"date\" name=\"dob\" style=\"width: 250px;\" readonly/></td>\n");
      out.write("                            </tr>                    \n");
      out.write("                            <tr>\n");
      out.write("                             <td>Sex</td>\n");
      out.write("                             <td><input type=\"text\" name=\"sex\" style=\"width: 250px;\" readonly/></td>                             \n");
      out.write("                             <td>Contact&nbsp;Number</td>\n");
      out.write("                             <td><input type=\"text\" name=\"contact\" style=\"width: 250px;\"/></td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>Blood Group</td>\n");
      out.write("                                <td><select name=\"bg\" style=\"width: 100px;\">\n");
      out.write("                                     <option value=\"A+\" disabled>A+</option>\n");
      out.write("                                 </select></td> \n");
      out.write("                                <td>Address</td>\n");
      out.write("                                <td><input type=\"text\" name=\"address\" style=\"width: 250px;\"/></td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td colspan=\"2\" style=\"text-align: right;\">Choose Profile Picture</td>\n");
      out.write("                                <td><input type=\"file\" accept=\"image/jpeg, image/png\" name=\"photo\" onchange=\"document.getElementById('blah').src = window.URL.createObjectURL(this.files[0])\"/></td>\n");
      out.write("                                <td rowspan=\"3\"><img id=\"blah\" alt=\"\" width=\"100\" height=\"130\" /></td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td colspan=\"4\" style=\"text-align: center;\"><input type=\"submit\" value=\"Submit\" name=\"submit\" style=\"padding: 10px 40px; background: #cc0000; color: whitesmoke;\"/></td>\n");
      out.write("                            </tr>\n");
      out.write("                        </tbody>\n");
      out.write("                    </table>\n");
      out.write("                </form>\n");
      out.write("            </fieldset>\n");
      out.write("        </div>\n");
      out.write("        <div style=\"height: 120px; width: 100%; background: #940000; position: absolute;\" >\n");
      out.write("            <h5 style=\"text-align: center; color: whitesmoke;\">Contact Us :- abc@xyz.com</h5>\n");
      out.write("             \n");
      out.write("        </div>\n");
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
