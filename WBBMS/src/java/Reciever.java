/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author XXX
 */
@WebServlet("/Reciever")
@MultipartConfig(maxFileSize = 16177215)
public class Reciever extends HttpServlet {

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
        try{
            Class.forName("com.mysql.jdbc.Driver");
            String host="jdbc:mysql://localhost:3306/bbms";
            String uName="root";
            String uPass="admin";
            String name=request.getParameter("name");
            String sex=request.getParameter("sex");
            Long contact=Long.valueOf(request.getParameter("contact"));
            String address=request.getParameter("address");
            String dob=request.getParameter("dob");
            String bg=request.getParameter("bg");
            InputStream inputStream = null;
            Part filePart = request.getPart("photo");
            if (filePart != null) {             
            inputStream = filePart.getInputStream();
            }
            String sql="INSERT INTO reciever (password,name,sex,contact,address,dob,bg,photo) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            Connection con = DriverManager.getConnection(host,uName,uPass); 
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, dob);  
            st.setString(2, name);
            st.setString(3, sex);
            st.setLong(4, contact);
            st.setString(5, address);
            st.setString(6, dob);
            st.setString(7, bg);
            if (inputStream != null) {
               st.setBlob(8,inputStream);
            }
            st.executeUpdate();
            int ID = 0;
            Statement st1 = con.createStatement();
            ResultSet rs = st1.executeQuery("SELECT id FROM reciever WHERE contact="+contact+"");            
            while(rs.next()){
                ID = rs.getInt("id");
            }
            response.sendRedirect("Rsuccess.jsp?ID="+ID);
        }
        catch(Exception e){
            response.setContentType("text/html;charset=UTF-8");
            try (PrintWriter out = response.getWriter()) {   
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Reciever Register</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Oops Something Went Wrong :( </h1>");
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
