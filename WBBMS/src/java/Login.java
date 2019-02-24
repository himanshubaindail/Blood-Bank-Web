/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.http.HttpSession;

/**
 *
 * @author XXX
 */
public class Login extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            String host="jdbc:mysql://localhost:3306/bbms?zeroDateTimeBehavior=convertToNull";
            String uName="root";
            String uPass="admin";
            String type=request.getParameter("idtype");
            String ID=request.getParameter("id");
            String pass=request.getParameter("pass");
            if(ID!=null && pass!=null){
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(host,uName,uPass);
                Statement st = con.createStatement();
                if(type.equals("donor")){
                   ResultSet rs = st.executeQuery("SELECT * FROM donor WHERE id='"+ID+"' AND password='"+pass+"' ");
                   if(!rs.isBeforeFirst()){
                       response.sendRedirect("login.jsp?error=1");
                   }
                   else{
                       HttpSession session = request.getSession();
                       session.setAttribute("did", ID);
                       response.sendRedirect("Dprofile.jsp");
                   }
                }
                else if(type.equals("reciever")){
                    ResultSet rs = st.executeQuery("SELECT * FROM reciever WHERE id="+ID+" AND password='"+pass+"' ");
                    if(!rs.isBeforeFirst()){
                       response.sendRedirect("login.jsp?error=1");
                    }
                    else{
                       HttpSession session = request.getSession();
                       session.setAttribute("rid", ID);
                       response.sendRedirect("Rprofile.jsp");
                   }
                }
            }
            catch(Exception e){
                response.setContentType("text/html;charset=UTF-8");
                try (PrintWriter out = response.getWriter()) {
                 out.println("<!DOCTYPE html>");
                 out.println("<html>");
                 out.println("<head>");
                 out.println("<title>error</title>");            
                 out.println("</head>");
                 out.println("<body>");
                 out.println("<h1>Oops Something Went Wrong</h1>");
                 out.println("</body>");
                 out.println("</html>");
                }    
            }
            }
            else{
                response.sendRedirect("Dlogin.jsp?error=1");
            }
    }
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
