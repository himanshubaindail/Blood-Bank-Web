<%@page import="java.io.ByteArrayOutputStream"%>
<%@page import="javax.imageio.ImageIO"%>
<%@page import="java.awt.image.BufferedImage"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.*"%>
<%  String b64 = "";
    int id = 0;
    String name = "";
    String sex = "";
    Long contact = 0L;
    String address = "";
    String date = "";
    String bg = "";
    float recieved = 0;
    String last = "";
    if(session.getAttribute("rid")==null){
      response.sendRedirect("login.jsp");
    }
    else{
            Class.forName("com.mysql.jdbc.Driver");
            String host="jdbc:mysql://localhost:3306/bbms";
            String uName="root";
            String uPass="admin";
            try {
                 Connection con = DriverManager.getConnection(host,uName,uPass); 
                 Statement st = con.createStatement();                
                 ResultSet rs = st.executeQuery("SELECT * FROM reciever WHERE id='"+session.getAttribute("rid")+"' ");
                    while(rs.next())
                    { 
                        id=rs.getInt("id");
                        name = rs.getString("name");
                        sex = rs.getString("sex");
                        contact = rs.getLong("contact");
                        address = rs.getString("address");
                        date = rs.getString("dob");
                        bg = rs.getString("bg");
                        recieved = rs.getFloat("recieved");
                        last= rs.getString("last");
                        InputStream photo = rs.getBinaryStream("photo");
                        if(photo!=null){
                            BufferedImage image = ImageIO.read(photo);
                            ByteArrayOutputStream baos = new ByteArrayOutputStream();
                            ImageIO.write(image, "jpg", baos);
                            baos.flush();
                            byte[] imageInByteArray = baos.toByteArray();
                            baos.close();
                            b64 = javax.xml.bind.DatatypeConverter.printBase64Binary(imageInByteArray);
                        }
                        else{
                            b64 = null;
                        }
                    }
                }
            catch(Exception e){
            
            }
            
}
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>
    </head>
    <body style="margin: 0px;">
        <img src="blood.png" alt="Blood Bank" height="162" style="display: block; width: 100%;"/>
        <div>
           <ul style="list-style-type: none; margin: 0; padding: 0; background-color: #333333; overflow: hidden; ">
             <li style="display: inline-block; "><a href="" style="color: white; display: block; padding: 14px 16px; text-decoration: none; background-color: #cc0000; " >My Profile</a></li>
             <li style="display: inline-block; "><a href="password.jsp" style="color: white; display: block; padding: 14px 16px; text-decoration: none; " onMouseOver="this.style.backgroundColor='#cc0000'" onmouseout="this.style.backgroundColor='#333333'">Change Password</a></li>
             <li style="display: inline-block; "><a href="correction.jsp" style="color: white; display: block; padding: 14px 16px; text-decoration: none; " onMouseOver="this.style.backgroundColor='#cc0000'" onmouseout="this.style.backgroundColor='#333333'">Details Correction</a></li>
             <li style="float: right; "><a href="" style="color: white; display: block; padding: 14px 16px; text-decoration: none; " onMouseOver="this.style.backgroundColor='red'" onmouseout="this.style.backgroundColor='#333333'">About</a></li>
             <li style="float: right; "><a href="Logout" style="color: white; display: block; padding: 14px 16px; text-decoration: none; " onMouseOver="this.style.backgroundColor='red'" onmouseout="this.style.backgroundColor='#333333'">Logout</a></li>
           </ul>
        </div> 
        <div style="background: url(bloodcell.jpg) no-repeat ; height: 560px; border: 2px solid; background-size: cover;"><br>
            <fieldset style="width: 550px; padding: 20px 20px; margin: auto; background-color: #eaeaea;">
                <table border="0" cellspacing="40" cellpadding="25" style="border: 1px solid; padding: 10px;width: 100%; border-collapse: collapse; background: ">
                    <tbody>
                        <tr>
                            <% if(b64!=""){%>
                            <td width="200"><img src="data:image/jpg;base64,<%=b64%>" alt="" style="height: 130px; width: 100px;"></td>
                            <%} else{ %>
                            <td width="200"><img src="null.jpg" alt="" width="100" height="130"></td>
                            <% } %>
                            <td><p style="background: #990000; width: 120px; color: whitesmoke;">&nbsp;Reciever ID:&nbsp;&nbsp;&nbsp;<%=id%></p></td>                        
                        </tr>
                        <tr style="color: #940000; font-weight: bold;">                            
                            <td>Name:&nbsp;&nbsp;&nbsp;<%=name%></td>
                            <td>Sex:&nbsp;&nbsp;&nbsp;<%=sex%></td>                            
                        </tr>
                        <tr style="color: #940000; font-weight: bold;">
                            <td>Contact No:&nbsp;&nbsp;&nbsp;<%=contact%></td>
                            <td>Address:&nbsp;&nbsp;&nbsp;<%=address%></td>
                        </tr>
                        <tr style="color: #940000; font-weight: bold;">
                            <td>D.O.B:&nbsp;&nbsp;&nbsp;<%=date%></td>
                            <td>Blood Group:&nbsp;&nbsp;&nbsp;<%=bg%></td>
                        </tr>
                        <tr style="color: #940000; font-weight: bold;">
                            <td>Total Recieving:&nbsp;&nbsp;&nbsp;<%=recieved%></td>
                            <td>Last Recieved On:&nbsp;&nbsp;&nbsp;<%=last%></td>
                        </tr>
                    </tbody>
                </table>

            </fieldset>
        </div>
        <div style="position: absolute; height: 120px; width: 100%; background: #940000;" >
            <h5 style="text-align: center; color: whitesmoke;">Contact Us :- abc@xyz.com</h5>
             
        </div>
    </body>
</html>
