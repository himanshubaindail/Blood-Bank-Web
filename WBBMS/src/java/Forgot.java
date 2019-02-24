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
public class Forgot extends HttpServlet {

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
            Long contact=Long.valueOf(request.getParameter("contact"));
            String bg=request.getParameter("bg");
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(host,uName,uPass);
                Statement st = con.createStatement();
                if(type.equals("donor")){
                   ResultSet rs = st.executeQuery("SELECT * FROM donor WHERE contact='"+contact+"' AND bg='"+bg+"' ");
                   if(!rs.isBeforeFirst()){
                       response.sendRedirect("forgot.jsp?error=1");
                   }
                   else{
                           HttpSession session = request.getSession();
                           session.setAttribute("Dcontact",contact);
                           response.sendRedirect("forgot.jsp");
                   }
                }
                else if(type.equals("reciever")){
                    ResultSet rs = st.executeQuery("SELECT * FROM reciever WHERE contact='"+contact+"' AND bg='"+bg+"' ");
                    if(!rs.isBeforeFirst()){
                       response.sendRedirect("forgot.jsp?error=1");
                    }
                    else{
                       HttpSession session = request.getSession();
                       session.setAttribute("Rcontact",contact);
                       response.sendRedirect("forgot.jsp");
                   }
                }
            }
            catch(Exception e){
                response.setContentType("text/html;charset=UTF-8");
            try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Forgot</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Oops Something Went Wrong</h1>");
            out.println("</body>");
            out.println("</html>");
        }
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
