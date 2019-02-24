<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.io.PrintWriter"%>
<%
            Class.forName("com.mysql.jdbc.Driver");
            String host="jdbc:mysql://localhost:3306/bbms";
            String uName="root";
            String uPass="admin";
            List<String> Array = new ArrayList<String>();
            try {
                 Connection con = DriverManager.getConnection(host,uName,uPass); 
                 Statement st = con.createStatement();
                 ResultSet rs = st.executeQuery("SELECT bloodstock FROM stock");
                    while(rs.next())
                    {
                        Array.add(rs.getString(1));
                    }
                }
            catch(Exception e){
            
            }
            String BG[] = Array.toArray(new String[Array.size()]);
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Blood Stock</title>
    </head>
    <body style="margin: 0px;">
        <img src="blood.png" alt="Blood Bank" height="162" style="display: block; width: 100%; "/>
        <div>
           <ul style="list-style-type: none; margin: 0; padding: 0; background-color: #333333; overflow: hidden; ">
             <li style="display: inline-block; "><a href="index.jsp" style="color: white; display: block; padding: 14px 16px; text-decoration: none; " onMouseOver="this.style.backgroundColor='#cc0000'" onmouseout="this.style.backgroundColor='#333333'">Home</a></li>
             <li style="display: inline-block; "><a href="Register.jsp" style="color: white; display: block; padding: 14px 16px; text-decoration: none; " onMouseOver="this.style.backgroundColor='#cc0000'" onmouseout="this.style.backgroundColor='#333333'">Register</a></li>
             <li style="display: inline-block; "><a href="stock.jsp" style="color: white; display: block; padding: 14px 16px; text-decoration: none; background-color: #cc0000;">Blood Stock</a></li>
             <li style="display: inline-block; "><a href="forgot.jsp" style="color: white; display: block; padding: 14px 16px; text-decoration: none; " onMouseOver="this.style.backgroundColor='#cc0000'" onmouseout="this.style.backgroundColor='#333333'">Forgot ID</a></li>
             <li style="display: inline-block; "><a href="correction.jsp" style="color: white; display: block; padding: 14px 16px; text-decoration: none; " onMouseOver="this.style.backgroundColor='#cc0000'" onmouseout="this.style.backgroundColor='#333333'">Details Correction</a></li>
             <li style="float: right; "><a href="" style="color: white; display: block; padding: 14px 16px; text-decoration: none; " onMouseOver="this.style.backgroundColor='red'" onmouseout="this.style.backgroundColor='#333333'">About</a></li>
             <li style="float: right; "><a href="login.jsp" style="color: white; display: block; padding: 14px 16px; text-decoration: none; " onMouseOver="this.style.backgroundColor='red'" onmouseout="this.style.backgroundColor='#333333'">Login</a></li>
           </ul>
        </div>
        
        <div style="background: url(bloodcell.jpg) no-repeat ; height: 450px; border: 2px solid; "><br>
            <fieldset style="width: 500px; padding: 20px 20px; margin: auto; background-color: #eaeaea;">
                <h1 style="text-align: center; color: #cc3300; text-decoration: underline;">Blood Stock</h1><br><br>
                <table border="2" width="2" cellspacing="10" cellpadding="15" style="border-collapse: collapse; width: 100%; text-align: center;">
                    <tbody>
                        <tr style="background: #cc3300; color: whitesmoke;">
                            <td>Blood Group</td>
                            <td>A+</td>
                            <td>A-</td>
                            <td>B+</td>
                            <td>B-</td>
                            <td>O+</td>
                            <td>O-</td>
                            <td>AB+</td>
                            <td>AB-</td>
                        </tr>
                        <tr style="background: #940000; color: whitesmoke;">
                            <td>Units Of Blood</td>
                            <td><%=BG[0]%></td>
                            <td><%=BG[1]%></td>
                            <td><%=BG[2]%></td>
                            <td><%=BG[3]%></td>
                            <td><%=BG[4]%></td>
                            <td><%=BG[5]%></td>
                            <td><%=BG[6]%></td>
                            <td><%=BG[7]%></td>
                        </tr>
                    </tbody>
                </table>

            </fieldset>
        </div>
        <div style="position: absolute; top: 662px; height: 120px; width: 100%; background: #940000;" >
            <h5 style="text-align: center; color: whitesmoke;">Contact Us :- abc@xyz.com</h5>
             
        </div>
    </body>
</html>
