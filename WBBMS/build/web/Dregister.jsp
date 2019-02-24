<% if(session.getAttribute("did")==null){ %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Donor Register</title>
        <script>
          function Validate(){
              var name=document.form.name;
              var dob=document.form.dob;
              var sex=document.form.sex;
              var contact=document.form.contact;
              var address=document.form.address;
              if (name.value=="")
              {
                window.alert("Please Enter Name");
                return false;
              }  
                if(dob.value==""){
                  window.alert("Please Enter D.O.B");
                  return false;
                }
                if(sex.value==""){
                  window.alert("Please Select The Gender");
                  return false;
                }
                if(contact.value==""){
                  window.alert("Please Enter The Contact Number");
                  return false;
                }
                if(address.value==""){
                  window.alert("Please Enter The Address");
                  return false;
                }
                  return true;
          }
        </script>
    </head>
    <body style="margin: 0px;">
        <img src="blood.png" alt="Blood Bank" height="162" style="display: block; width: 100%; "/>
        <div>
           <ul style="list-style-type: none; margin: 0; padding: 0; background-color: #333333; overflow: hidden; ">
             <li style="display: inline-block; "><a href="index.jsp" style="color: white; display: block; padding: 14px 16px; text-decoration: none; " onMouseOver="this.style.backgroundColor='#cc0000'" onmouseout="this.style.backgroundColor='#333333'">Home</a></li>
             <li style="display: inline-block; "><a href="Register.jsp" style="color: white; display: block; padding: 14px 16px; text-decoration: none; background-color: #cc0000;">Register</a></li>
             <li style="display: inline-block; "><a href="stock.jsp" style="color: white; display: block; padding: 14px 16px; text-decoration: none; " onMouseOver="this.style.backgroundColor='#cc0000'" onmouseout="this.style.backgroundColor='#333333'">Blood Stock</a></li>
             <li style="display: inline-block; "><a href="forgot.jsp" style="color: white; display: block; padding: 14px 16px; text-decoration: none; " onMouseOver="this.style.backgroundColor='#cc0000'" onmouseout="this.style.backgroundColor='#333333'">Forgot ID</a></li>
             <li style="display: inline-block; "><a href="correction.jsp" style="color: white; display: block; padding: 14px 16px; text-decoration: none; " onMouseOver="this.style.backgroundColor='#cc0000'" onmouseout="this.style.backgroundColor='#333333'">Details Correction</a></li>
             <li style="float: right; "><a href="" style="color: white; display: block; padding: 14px 16px; text-decoration: none; " onMouseOver="this.style.backgroundColor='red'" onmouseout="this.style.backgroundColor='#333333'">About</a></li>
             <li style="float: right; "><a href="login.jsp" style="color: white; display: block; padding: 14px 16px; text-decoration: none; " onMouseOver="this.style.backgroundColor='red'" onmouseout="this.style.backgroundColor='#333333'">Login</a></li>
           </ul>
        </div>
        <div style="background: url(bloodcell.jpg) no-repeat ; height: 560px; border: 2px solid; background-size: cover;"><br>
            <fieldset style="width: 0px; padding: 20px 20px; margin: auto; background-color: #eaeaea;">                 
                <legend style="font-size: larger; background: #8b8b8b; color: whitesmoke; border-radius: 10px;">&nbsp;Donor Registration&nbsp;</legend>
                <form action="Donor" method="post" name="form" enctype="multipart/form-data">
                    <table cellspacing="50px">               
                        <tbody>
                            <tr>
                             <td>Name</td>
                             <td><input type="text" name="name" style="width: 250px;"/></td>
                             <td>DOB</td>
                             <td><input type="date" name="dob" style="width: 250px;"/></td>
                            </tr>                    
                            <tr>
                             <td>Sex</td>
                             <td><input type="radio" name="sex" value="Male"/>Male
                             <input type="radio" name="sex" value="Female"/>Female</td>                             
                             <td>Contact&nbsp;Number</td>
                             <td><input type="number" name="contact" style="width: 250px;"/></td>
                            </tr>
                            <tr>
                                <td>Blood Group</td>
                                <td><select name="bg" style="width: 100px;">
                                     <option value="A+">A+</option>
                                     <option value="A-">A-</option>
                                     <option value="B+">B+</option>
                                     <option value="B-">B-</option>
                                     <option value="O+">O+</option>
                                     <option value="O-">O-</option>
                                     <option value="AB+">AB+</option>
                                     <option value="AB-">AB-</option>
                                 </select></td> 
                                <td>Address</td>
                                <td><input type="text" name="address" style="width: 250px;"/></td>
                            </tr>
                            <tr>
                                <td colspan="2" style="text-align: right;">Choose Profile Picture</td>
                                <td><input type="file" accept="image/jpeg, image/png" name="photo" onchange="document.getElementById('blah').src = window.URL.createObjectURL(this.files[0])"/></td>
                                <td rowspan="3"><img id="blah" alt="" width="100" height="130" /></td>
                            </tr>
                            <tr>
                                <td colspan="4" style="text-align: center;"><input type="submit" value="Submit" name="submit" onclick="return Validate();" style="padding: 10px 40px; background: #cc0000; color: whitesmoke;"/></td>
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
<%} else{
         response.sendRedirect("Dprofile.jsp");
}%>