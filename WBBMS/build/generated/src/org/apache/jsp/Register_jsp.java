package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Register_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Register</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    </head>\n");
      out.write("    <body style=\"margin: 0px;\">\n");
      out.write("        <img src=\"blood.png\" alt=\"Blood Bank\" height=\"162\" style=\"display: block; width: 100%; \"/>\n");
      out.write("        <div>\n");
      out.write("           <ul style=\"list-style-type: none; margin: 0; padding: 0; background-color: #333333; overflow: hidden; \">\n");
      out.write("             <li style=\"display: inline-block; \"><a href=\"index.html\" style=\"color: white; display: block; padding: 14px 16px; text-decoration: none; \" onMouseOver=\"this.style.backgroundColor='#cc0000'\" onmouseout=\"this.style.backgroundColor='#333333'\">Home</a></li>\n");
      out.write("             <li style=\"display: inline-block; \"><a href=\"Register.html\" style=\"color: white; display: block; padding: 14px 16px; text-decoration: none; background-color: #cc0000;\">Register</a></li>\n");
      out.write("             <li style=\"display: inline-block; \"><a href=\"stock.jsp\" style=\"color: white; display: block; padding: 14px 16px; text-decoration: none; \" onMouseOver=\"this.style.backgroundColor='#cc0000'\" onmouseout=\"this.style.backgroundColor='#333333'\">Blood Stock</a></li>\n");
      out.write("             <li style=\"display: inline-block; \"><a href=\"\" style=\"color: white; display: block; padding: 14px 16px; text-decoration: none; \" onMouseOver=\"this.style.backgroundColor='#cc0000'\" onmouseout=\"this.style.backgroundColor='#333333'\">Forgot ID</a></li>\n");
      out.write("             <li style=\"display: inline-block; \"><a href=\"\" style=\"color: white; display: block; padding: 14px 16px; text-decoration: none; \" onMouseOver=\"this.style.backgroundColor='#cc0000'\" onmouseout=\"this.style.backgroundColor='#333333'\">Details Correction</a></li>\n");
      out.write("             <li style=\"float: right; \"><a href=\"\" style=\"color: white; display: block; padding: 14px 16px; text-decoration: none; \" onMouseOver=\"this.style.backgroundColor='red'\" onmouseout=\"this.style.backgroundColor='#333333'\">About</a></li>\n");
      out.write("             <li style=\"float: right; \"><a href=\"Dlogin.jsp\" style=\"color: white; display: block; padding: 14px 16px; text-decoration: none; \" onMouseOver=\"this.style.backgroundColor='red'\" onmouseout=\"this.style.backgroundColor='#333333'\">Login</a></li>\n");
      out.write("           </ul>\n");
      out.write("        </div>\n");
      out.write("        <img src=\"donor.jpg\" alt=\"\" style=\"position: absolute; width: 50%; height: 480px; border: 2px solid; opacity: 0.9;\">\n");
      out.write("        <img src=\"receiver.jpg\" alt=\"\" style=\"position: absolute; width: 49.7%; left: 50%; height: 480px; border: 2px solid; opacity: 0.9;\">\n");
      out.write("        <form action=\"Dregister.jsp\" method=\"post\">\n");
      out.write("            <input type=\"submit\" value=\"Donor Registration\" style=\"position: absolute; top: 420px; left: 250px; padding: 16px 60px; background: #cc0000; color: whitesmoke;\"> \n");
      out.write("        </form>\n");
      out.write("        <form action=\"Rregister.jsp\" method=\"post\">\n");
      out.write("            <input type=\"submit\" value=\"Receiver Registration\" style=\"position: absolute; top: 420px; left: 900px; padding: 16px 60px; background: #cc0000; color: whitesmoke;\"> \n");
      out.write("        </form>\n");
      out.write("               \n");
      out.write("        <div style=\"position: absolute; top: 692px; height: 120px; width: 100%; background: #940000;\" >\n");
      out.write("            <h5 style=\"text-align: center; color: whitesmoke;\">Contact Us :- abc@xyz.com</h5>\n");
      out.write("             \n");
      out.write("        </div>\n");
      out.write("    </body>\n");
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
