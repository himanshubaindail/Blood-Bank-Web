<%@page import="java.io.ByteArrayOutputStream"%>
<%@page import="javax.imageio.ImageIO"%>
<%@page import="java.awt.image.BufferedImage"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.*"%>
<%  String b64 = "";
    String name = "";
    String sex = "";
    Long contact = 0L;
    String address = "";
    String date = "";
    String bg = "";
    if(session.getAttribute("did")==null && session.getAttribute("rid")==null){ 
    response.sendRedirect("login.jsp");
}
            Class.forName("com.mysql.jdbc.Driver");
            String host="jdbc:mysql://localhost:3306/bbms";
            String uName="root";
            String uPass="admin";
            try {
                 Connection con = DriverManager.getConnection(host,uName,uPass); 
                 Statement st = con.createStatement(); 
                 if(session.getAttribute("did")!=null && session.getAttribute("rid")==null){
                 ResultSet rs = st.executeQuery("SELECT * FROM donor WHERE id='"+session.getAttribute("did")+"' ");
                    while(rs.next())
                    { 
                        name = rs.getString("name");
                        sex = rs.getString("sex");
                        contact = rs.getLong("contact");
                        address = rs.getString("address");
                        date = rs.getString("dob");
                        bg = rs.getString("bg");
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
                 if(session.getAttribute("did")==null && session.getAttribute("rid")!=null){
                     ResultSet rs = st.executeQuery("SELECT * FROM reciever WHERE id='"+session.getAttribute("rid")+"' ");
                    while(rs.next())
                    { 
                        name = rs.getString("name");
                        sex = rs.getString("sex");
                        contact = rs.getLong("contact");
                        address = rs.getString("address");
                        date = rs.getString("dob");
                        bg = rs.getString("bg");
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
        <title>Details Correction</title>
    </head>
    <body style="margin: 0px;">
        <img src="blood.png" alt="Blood Bank" height="162" style="display: block; width: 100%; "/>
        <div>
           <ul style="list-style-type: none; margin: 0; padding: 0; background-color: #333333; overflow: hidden; ">
             <li style="display: inline-block; "><a href="index.jsp" style="color: white; display: block; padding: 14px 16px; text-decoration: none; " onMouseOver="this.style.backgroundColor='#cc0000'" onmouseout="this.style.backgroundColor='#333333'">My Profile</a></li>
             <li style="display: inline-block; "><a href="password.jsp" style="color: white; display: block; padding: 14px 16px; text-decoration: none; " onMouseOver="this.style.backgroundColor='#cc0000'" onmouseout="this.style.backgroundColor='#333333'">Change Password</a></li>
             <li style="display: inline-block; "><a href="correction.jsp" style="color: white; display: block; padding: 14px 16px; text-decoration: none; background-color: #cc0000;" >Details Correction</a></li>
             <li style="float: right; "><a href="" style="color: white; display: block; padding: 14px 16px; text-decoration: none; " onMouseOver="this.style.backgroundColor='red'" onmouseout="this.style.backgroundColor='#333333'">About</a></li>
             <li style="float: right; "><a href="Logout" style="color: white; display: block; padding: 14px 16px; text-decoration: none; " onMouseOver="this.style.backgroundColor='red'" onmouseout="this.style.backgroundColor='#333333'">Logout</a></li>
           </ul>
        </div> 
        <div style="background: url(bloodcell.jpg) no-repeat ; height: 560px; border: 2px solid; background-size: cover;"><br>
            <fieldset style="width: 0px; padding: 20px 20px; margin: auto; background-color: #eaeaea;">                 
                <legend style="font-size: larger; background: #8b8b8b; color: whitesmoke; border-radius: 10px;">&nbsp;Details Correction&nbsp;</legend>
                <form action="Correction" method="post" enctype="multipart/form-data">
                    <table cellspacing="50px">               
                        <tbody>
                            <tr>
                             <td>Name</td>
                             <td><input type="text" name="name" placeholder="<%=name%>" style="width: 250px;" readonly/></td>
                             <td>DOB</td>
                             <td><input type="text" name="dob" placeholder="<%=date%>" style="width: 250px;" readonly/></td>
                            </tr>                    
                            <tr>
                             <td>Sex</td>
                             <td><input type="text" name="sex" placeholder="<%=sex%>" style="width: 250px;" readonly/></td>                             
                             <td>Contact&nbsp;Number</td>
                             <td><input type="text" name="contact" value="<%=contact%>" style="width: 250px;"/></td>
                            </tr>
                            <tr>
                                <td>Blood Group</td>
                                <td><select name="bg" style="width: 100px;">
                                     <option value="<%=bg%>" disabled selected><%=bg%></option>
                                 </select></td> 
                                <td>Address</td>
                                <td><input type="text" name="address" value="<%=address%>" style="width: 250px;"/></td>
                            </tr>
                            <tr>
                                <td colspan="2" style="text-align: right;">Choose Profile Picture</td>
                                <td><input type="file" accept="image/jpeg, image/png" name="photo" onchange="document.getElementById('blah').src = window.URL.createObjectURL(this.files[0])"/></td>
                                <% if(b64!=""){%>
                                <td rowspan="3"><img src="data:image/jpg;base64,<%=b64%>" id="blah" alt="" width="100" height="130" /></td>
                                <%} else{ %>
                                <td rowspan="3"><img src="null.jpg" id="blah" alt="" width="100" height="130" /></td>
                                <% } %>
                            </tr>
                            <tr>
                                <td colspan="4" style="text-align: center;"><input type="submit" value="Submit" name="submit" style="padding: 10px 40px; background: #cc0000; color: whitesmoke;"/></td>
                            </tr>
                        </tbody>
                    </table>
                </form>
            </fieldset>
        </div>
        <div style="height: 120px; width: 100%; background: #940000; position: absolute;" >
            <h5 style="text-align: center; color: whitesmoke;">Contact Us :- abc@xyz.com</h5>
             
        </div>
    </body>
</html>
