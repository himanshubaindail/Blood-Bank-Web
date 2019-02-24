package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Home</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <style>\n");
      out.write("            .container{\n");
      out.write("                position: relative;                  \n");
      out.write("            }\n");
      out.write("            .container img{\n");
      out.write("                position: absolute; \n");
      out.write("                width: 100%;\n");
      out.write("            }\n");
      out.write("            .container img:nth-child(4){\n");
      out.write("            animation: xfade 32s 0s infinite;\n");
      out.write("            }\n");
      out.write("            .container img:nth-child(3){\n");
      out.write("            animation: xfade 32s 8s infinite;\n");
      out.write("            }\n");
      out.write("            .container img:nth-child(2){\n");
      out.write("            animation: xfade 32s 16s infinite;\n");
      out.write("            }\n");
      out.write("            .container img:nth-child(1){\n");
      out.write("            animation: xfade 32s 24s infinite;\n");
      out.write("            }\n");
      out.write("            @keyframes xfade{\n");
      out.write("                0%{\n");
      out.write("                    opacity: 1;\n");
      out.write("                }\n");
      out.write("                20%{\n");
      out.write("                    opacity: 1;\n");
      out.write("                }\n");
      out.write("                25%{\n");
      out.write("                    opacity: 0;\n");
      out.write("                }\n");
      out.write("                90%{\n");
      out.write("                    opacity: 0;\n");
      out.write("                }               \n");
      out.write("                100%{\n");
      out.write("                    opacity: 1;\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("        </style>        \n");
      out.write("    </head>\n");
      out.write("    <body style=\"margin:0px;\">\n");
      out.write("        <img src=\"blood.png\" alt=\"Blood Bank\" height=\"162\" style=\"display: block; width: 100%;\"/>\n");
      out.write("        <div>\n");
      out.write("           <ul style=\"list-style-type: none; margin: 0; padding: 0; background-color: #333333; overflow: hidden; \">\n");
      out.write("             <li style=\"display: inline-block; \"><a href=\"index.html\" style=\"color: white; display: block; padding: 14px 16px; text-decoration: none; background-color: #cc0000; \" >Home</a></li>\n");
      out.write("             <li style=\"display: inline-block; \"><a href=\"Register.html\" style=\"color: white; display: block; padding: 14px 16px; text-decoration: none; \" onMouseOver=\"this.style.backgroundColor='#cc0000'\" onmouseout=\"this.style.backgroundColor='#333333'\">Register</a></li>\n");
      out.write("             <li style=\"display: inline-block; \"><a href=\"stock.jsp\" style=\"color: white; display: block; padding: 14px 16px; text-decoration: none; \" onMouseOver=\"this.style.backgroundColor='#cc0000'\" onmouseout=\"this.style.backgroundColor='#333333'\">Blood Stock</a></li>\n");
      out.write("             <li style=\"display: inline-block; \"><a href=\"\" style=\"color: white; display: block; padding: 14px 16px; text-decoration: none; \" onMouseOver=\"this.style.backgroundColor='#cc0000'\" onmouseout=\"this.style.backgroundColor='#333333'\">Forgot ID</a></li>\n");
      out.write("             <li style=\"display: inline-block; \"><a href=\"\" style=\"color: white; display: block; padding: 14px 16px; text-decoration: none; \" onMouseOver=\"this.style.backgroundColor='#cc0000'\" onmouseout=\"this.style.backgroundColor='#333333'\">Details Correction</a></li>\n");
      out.write("             <li style=\"float: right; \"><a href=\"about.html\" style=\"color: white; display: block; padding: 14px 16px; text-decoration: none; \" onMouseOver=\"this.style.backgroundColor='red'\" onmouseout=\"this.style.backgroundColor='#333333'\">About</a></li>\n");
      out.write("             <li style=\"float: right; \"><a href=\"Dlogin.jsp\" style=\"color: white; display: block; padding: 14px 16px; text-decoration: none; \" onMouseOver=\"this.style.backgroundColor='red'\" onmouseout=\"this.style.backgroundColor='#333333'\">Login</a></li>\n");
      out.write("           </ul>\n");
      out.write("        </div> \n");
      out.write("        <div class=\"container\">\n");
      out.write("            <img src=\"donatehands.jpg\" height=\"519\" alt=\"\"/>\n");
      out.write("            <img src=\"poster.jpg\"  height=\"519\" alt=\"\"/>\n");
      out.write("            <img src=\"bloodfact.gif\"  height=\"519\" alt=\"\"/>\n");
      out.write("            <img src=\"donate.jpg\"  height=\"519\" alt=\"\"/>\n");
      out.write("            <form action=\"Register.html\" method=\"post\">\n");
      out.write("                 <input type=\"submit\" value=\"Register Now\" style=\"position: absolute; top: 460px; left: 600px; padding: 10px 40px; background: #cc0000; color: whitesmoke; opacity: 0.7;\" onMouseOver=\"this.style.opacity=1\" onMouseOut=\"this.style.opacity=0.7\"/>\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("        <div style=\"background: url(vback.jpg); position: absolute; top: 727px; width: 1349px; height: 470px;\">            \n");
      out.write("            <video width=\"720\" height=\"468\" controls autoplay style=\"margin-left: 315px; background: black;\">\n");
      out.write("                 <source src=\"hero.mp4\" type=\"video/mp4\">\n");
      out.write("                 <source src=\"hero.ogg\" type=\"video/ogg\">\n");
      out.write("                    Your browser does not support the video tag.\n");
      out.write("            </video>              \n");
      out.write("        </div>\n");
      out.write("        <div style=\"position: absolute; top: 1197px; height: 120px; width: 1349px; background: #940000;\" >\n");
      out.write("            <h5 style=\"text-align: center; color: whitesmoke;\">Contact Us :- abc@xyz.com</h5>\n");
      out.write("             \n");
      out.write("        </div>                               \n");
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
