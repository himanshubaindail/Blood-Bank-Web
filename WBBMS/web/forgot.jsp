<%@page import="java.io.ByteArrayOutputStream"%>
<%@page import="javax.imageio.ImageIO"%>
<%@page import="java.awt.image.BufferedImage"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.*"%>
<%  String b64 = "";
    int id = 0;
    String name = "";
            Class.forName("com.mysql.jdbc.Driver");
            String host="jdbc:mysql://localhost:3306/bbms";
            String uName="root";
            String uPass="admin";
            try {
                 Connection con = DriverManager.getConnection(host,uName,uPass); 
                 Statement st = con.createStatement();
                 if(session.getAttribute("Dcontact")!=null){
                 ResultSet rs = st.executeQuery("SELECT * FROM donor WHERE contact='"+session.getAttribute("Dcontact")+"' ");
                 while(rs.next())
                    { 
                        id=rs.getInt("id");
                        name = rs.getString("name");
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
                 else if(session.getAttribute("Rcontact")!=null){
                 ResultSet rs = st.executeQuery("SELECT * FROM reciever WHERE contact='"+session.getAttribute("Rcontact")+"' ");
                 while(rs.next())
                    { 
                        id=rs.getInt("id");
                        name = rs.getString("name");
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
                    
                }
            catch(Exception e){
            
            }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forgot Id</title>
    </head>
     <body style="margin: 0px;">
        <img src="blood.png" alt="Blood Bank" height="162" style="display: block; width: 100%; "/>
        <div>
           <ul style="list-style-type: none; margin: 0; padding: 0; background-color: #333333; overflow: hidden; ">
             <li style="display: inline-block; "><a href="index.jsp" style="color: white; display: block; padding: 14px 16px; text-decoration: none; " onMouseOver="this.style.backgroundColor='#cc0000'" onmouseout="this.style.backgroundColor='#333333'">Home</a></li>
             <li style="display: inline-block; "><a href="Register.jsp" style="color: white; display: block; padding: 14px 16px; text-decoration: none; " onMouseOver="this.style.backgroundColor='#cc0000'" onmouseout="this.style.backgroundColor='#333333'">Register</a></li>
             <li style="display: inline-block; "><a href="stock.jsp" style="color: white; display: block; padding: 14px 16px; text-decoration: none; " onMouseOver="this.style.backgroundColor='#cc0000'" onmouseout="this.style.backgroundColor='#333333'">Blood Stock</a></li>
             <li style="display: inline-block; "><a href="forgot.jsp" style="color: white; display: block; padding: 14px 16px; text-decoration: none; background-color: #cc0000;" >Forgot ID</a></li>
             <li style="display: inline-block; "><a href="correction.jsp" style="color: white; display: block; padding: 14px 16px; text-decoration: none; " onMouseOver="this.style.backgroundColor='#cc0000'" onmouseout="this.style.backgroundColor='#333333'">Details Correction</a></li>
             <li style="float: right; "><a href="" style="color: white; display: block; padding: 14px 16px; text-decoration: none; " onMouseOver="this.style.backgroundColor='red'" onmouseout="this.style.backgroundColor='#333333'">About</a></li>
             <li style="float: right; "><a href="login.jsp" style="color: white; display: block; padding: 14px 16px; text-decoration: none; " onMouseOver="this.style.backgroundColor='red'" onmouseout="this.style.backgroundColor='#333333'">Login</a></li>
           </ul>
        </div>
        
        <div style="background: url(bloodcell.jpg) no-repeat ; height: 560px; border: 2px solid; background-size: cover;"><br>
            <fieldset style="width: 500px; padding: 20px 20px; margin: auto; background: url(vback.jpg) no-repeat ;">
                <%  String error=request.getParameter("error");
                    if(session.getAttribute("Dcontact")==null && session.getAttribute("Rcontact")==null && error==null){ %>
                <legend style="font-size: larger; background: #cc0000; color: whitesmoke; border-radius: 10px;">&nbsp;Forgot ID&nbsp;</legend>
                <form action="Forgot" method="post">
                <table border="0" cellpadding="25" cellspacing="25" style="color: whitesmoke; text-align: center;">
                    <tbody>
                        <tr>
                            <td>ID Type</td>
                            <td>Mobile Number</td>
                            <td>Blood Group</td>
                        </tr>
                        <tr>
                            <td><select name="idtype" style="width: 100px;">
                                    <option value="donor">Donor</option>
                                    <option value="reciever">Reciever</option>
                                </select>
                            </td>
                            <td><input type="number" name="contact"/></td>
                            <td><select name="bg" style="width: 100px;">
                                     <option value="A+">A+</option>
                                     <option value="A-">A-</option>
                                     <option value="B+">B+</option>
                                     <option value="B-">B-</option>
                                     <option value="O+">O+</option>
                                     <option value="O-">O-</option>
                                     <option value="AB+">AB+</option>
                                     <option value="AB-">AB-</option>
                                 </select>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" style="text-align: center;"><input type="submit" value="Search" name="submit" style="padding: 10px 40px; background: #cc0000; color: whitesmoke;"/></td>
                        </tr>
                    </tbody>
                </table>
                </form>
                <%} else if(session.getAttribute("Dcontact")!=null){%>
                    <table border="0" cellspacing="40" cellpadding="25" style=" padding: 10px;width: 100%; border-collapse: collapse; color: whitesmoke;">
                    <tbody>
                        <tr>
                            <% if(b64!=""){%>
                            <td width="200"><img src="data:image/jpg;base64,<%=b64%>" alt="" style="height: 130px; width: 100px;"></td>
                            <%} else{ %>
                            <td width="200"><img src="null.jpg" alt="" width="100" height="130"></td>
                            <% } %>
                            <td><p style="background: #990000; width: 100px; color: whitesmoke;">&nbsp;Donor ID:&nbsp;&nbsp;&nbsp;<%=id%></p></td>                        
                        </tr>
                        <tr style="font-weight: bold;">                            
                            <td>Name:&nbsp;&nbsp;&nbsp;<%=name%></td>                            
                        </tr>
                        </tbody>
                </table>
                <%} else if(session.getAttribute("Rcontact")!=null){%>
                <table border="0" cellspacing="40" cellpadding="25" style="color: whitesmoke; padding: 10px;width: 100%; border-collapse: collapse; ">
                    <tbody>
                        <tr>
                            <% if(b64!=""){%>
                            <td width="200"><img src="data:image/jpg;base64,<%=b64%>" alt="" style="height: 130px; width: 100px;"></td>
                            <%} else{ %>
                            <td width="200"><img src="null.jpg" alt="" width="100" height="130"></td>
                            <% } %>
                            <td><p style="background: #990000; width: 120px;">&nbsp;Reciever ID:&nbsp;&nbsp;&nbsp;<%=id%></p></td>                        
                        </tr>
                        <tr style="font-weight: bold;">                            
                            <td>Name:&nbsp;&nbsp;&nbsp;<%=name%></td>                          
                        </tr>
                        </tbody>
                </table>
                            <% } else if(session.getAttribute("Dcontact")==null && session.getAttribute("Rcontact")==null && error.equals("1")){ %>
                     <script>
                        alert('ID Not Found');
                        location='forgot.jsp';
                     </script>
                <% } %>
            </fieldset>
        </div>
        <div style="position: absolute; top: 692px; height: 120px; width: 100%; background: #940000;" >
            <h5 style="text-align: center; color: whitesmoke;">Contact Us :- abc@xyz.com</h5>
             
        </div>
    </body>
</html>
<%      
        session.removeAttribute("did");
        session.removeAttribute("rid");
        session.invalidate();
%>
