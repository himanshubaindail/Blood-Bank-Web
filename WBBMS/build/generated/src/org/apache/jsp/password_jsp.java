package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class password_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Change Password</title>\n");
      out.write("        <script>\n");
      out.write("          function Validate(){\n");
      out.write("              var oldpass=document.pass.oldpass;\n");
      out.write("              var newpass=document.pass.newpass;\n");
      out.write("              var repass=document.pass.repass;\n");
      out.write("              if (oldpass.value == \"\" || newpass== \"\" || repass== \"\")\n");
      out.write("              {\n");
      out.write("                window.alert(\"Please Enter Password\");\n");
      out.write("                return false;\n");
      out.write("              }\n");
      out.write("              else if(newpass.value!=repass.value){\n");
      out.write("                  window.alert(\"New password do not Match\");\n");
      out.write("              }\n");
      out.write("              else{\n");
      out.write("                  return true;\n");
      out.write("              }\n");
      out.write("\n");
      out.write("          }\n");
      out.write("</script>\n");
      out.write("    </head>\n");
      out.write("    <body style=\"margin: 0px;\">\n");
      out.write("        <img src=\"blood.png\" alt=\"Blood Bank\" height=\"162\" style=\"display: block; width: 100%;\"/>\n");
      out.write("        <div>\n");
      out.write("           <ul style=\"list-style-type: none; margin: 0; padding: 0; background-color: #333333; overflow: hidden; \">\n");
      out.write("             <li style=\"display: inline-block; \"><a href=\"\" style=\"color: white; display: block; padding: 14px 16px; text-decoration: none; background-color: #cc0000; \" >My Profile</a></li>\n");
      out.write("             <li style=\"display: inline-block; \"><a href=\"\" style=\"color: white; display: block; padding: 14px 16px; text-decoration: none; \" onMouseOver=\"this.style.backgroundColor='#cc0000'\" onmouseout=\"this.style.backgroundColor='#333333'\">Change Password</a></li>\n");
      out.write("             <li style=\"display: inline-block; \"><a href=\"correction.jsp\" style=\"color: white; display: block; padding: 14px 16px; text-decoration: none; \" onMouseOver=\"this.style.backgroundColor='#cc0000'\" onmouseout=\"this.style.backgroundColor='#333333'\">Details Correction</a></li>\n");
      out.write("             <li style=\"float: right; \"><a href=\"\" style=\"color: white; display: block; padding: 14px 16px; text-decoration: none; \" onMouseOver=\"this.style.backgroundColor='red'\" onmouseout=\"this.style.backgroundColor='#333333'\">About</a></li>\n");
      out.write("             <li style=\"float: right; \"><a href=\"Logout\" style=\"color: white; display: block; padding: 14px 16px; text-decoration: none; \" onMouseOver=\"this.style.backgroundColor='red'\" onmouseout=\"this.style.backgroundColor='#333333'\">Logout</a></li>\n");
      out.write("           </ul>\n");
      out.write("        </div> \n");
      out.write("        <div style=\"background: url(bloodcell.jpg) no-repeat ; height: 560px; border: 2px solid; background-size: cover;\"><br>\n");
      out.write("            <fieldset style=\"width: 550px; padding: 20px 20px; margin: auto; background-color: #eaeaea;\">\n");
      out.write("                <legend style=\"font-size: larger; background: #cc0000; color: whitesmoke; border-radius: 10px;\">&nbsp;Change Password&nbsp;</legend>\n");
      out.write("                <form action=\"Password\" name=\"pass\" method=\"post\">\n");
      out.write("                <table border=\"0\" cellspacing=\"40\" cellpadding=\"25\" style=\"border: 1px solid; padding: 10px;width: 100%; border-collapse: collapse; background: \">\n");
      out.write("                    <tbody>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>Enter Old Password</td>\n");
      out.write("                            <td><input type=\"password\" name=\"oldpass\"/></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>Enter New Password</td>\n");
      out.write("                            <td><input type=\"password\" name=\"newpassword\"/></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>Re-Enter New Password</td>\n");
      out.write("                            <td><input type=\"password\" name=\"repassword\"/></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td colspan=\"2\" style=\"text-align: center;\"><input type=\"submit\" value=\"Submit\" name=\"submit\" style=\"padding: 10px 40px; background: #cc0000; color: whitesmoke;\"/></td>\n");
      out.write("                        </tr>\n");
      out.write("                    </tbody>\n");
      out.write("                </table>\n");
      out.write("                </form>\n");
      out.write("            </fieldset>\n");
      out.write("        </div>\n");
      out.write("        <div style=\"position: absolute; height: 120px; width: 100%; background: #940000;\" >\n");
      out.write("            <h5 style=\"text-align: center; color: whitesmoke;\">Contact Us :- abc@xyz.com</h5>             \n");
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
