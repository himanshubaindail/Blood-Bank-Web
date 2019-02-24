<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Password</title>
        <script>
          function Validate(){
              var newpass=document.pass.newpass;
              var repass=document.pass.repass;
              if (newpass.value== "" || repass.value== "")
              {
                window.alert("Please Enter Password");
                return false;
              }  
                if(newpass.value!=repass.value){
                  window.alert("New password do not Match");
                  return false;
                }
                  alert("Password Changed Successfuly");
                  return true;
          }
</script>
    </head>
    <body style="margin: 0px;">
        <img src="blood.png" alt="Blood Bank" height="162" style="display: block; width: 100%;"/>
        <div>
           <ul style="list-style-type: none; margin: 0; padding: 0; background-color: #333333; overflow: hidden; ">
             <li style="display: inline-block; "><a href="index.jsp" style="color: white; display: block; padding: 14px 16px; text-decoration: none; " onMouseOver="this.style.backgroundColor='#cc0000'" onmouseout="this.style.backgroundColor='#333333'">My Profile</a></li>
             <li style="display: inline-block; "><a href="password.jsp" style="color: white; display: block; padding: 14px 16px; text-decoration: none; background-color: #cc0000;" >Change Password</a></li>
             <li style="display: inline-block; "><a href="correction.jsp" style="color: white; display: block; padding: 14px 16px; text-decoration: none; " onMouseOver="this.style.backgroundColor='#cc0000'" onmouseout="this.style.backgroundColor='#333333'">Details Correction</a></li>
             <li style="float: right; "><a href="" style="color: white; display: block; padding: 14px 16px; text-decoration: none; " onMouseOver="this.style.backgroundColor='red'" onmouseout="this.style.backgroundColor='#333333'">About</a></li>
             <li style="float: right; "><a href="Logout" style="color: white; display: block; padding: 14px 16px; text-decoration: none; " onMouseOver="this.style.backgroundColor='red'" onmouseout="this.style.backgroundColor='#333333'">Logout</a></li>
           </ul>
        </div> 
        <div style="background: url(bloodcell.jpg) no-repeat ; height: 560px; border: 2px solid; background-size: cover;"><br>
            <fieldset style="width: 550px; padding: 20px 20px; margin: auto; background-color: #eaeaea;">
                <legend style="font-size: larger; background: #cc0000; color: whitesmoke; border-radius: 10px;">&nbsp;Change Password&nbsp;</legend>
                <form action="Password" name="pass" method="post">
                <table border="0" cellspacing="40" cellpadding="25" style="border: 1px solid; padding: 10px;width: 100%; border-collapse: collapse; background: ">
                    <tbody>
                        <tr>
                            <td>Enter New Password</td>
                            <td><input type="password" name="newpass"/></td>
                        </tr>
                        <tr>
                            <td>Re-Enter New Password</td>
                            <td><input type="password" name="repass"/></td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align: center;"><input type="submit" value="Submit" name="submit" onclick="return Validate();" style="padding: 10px 40px; background: #cc0000; color: whitesmoke;"/></td>
                        </tr>
                    </tbody>
                </table>
                </form>
            </fieldset>
        </div>
        <div style="position: absolute; height: 120px; width: 100%; background: #940000;" >
            <h5 style="text-align: center; color: whitesmoke;">Contact Us :- abc@xyz.com</h5>             
        </div>
    </body>
</html>
