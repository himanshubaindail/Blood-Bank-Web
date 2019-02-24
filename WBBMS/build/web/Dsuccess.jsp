<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Success</title>
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
            <fieldset style="width: 500px; padding: 20px 20px; margin: auto; background-color: #eaeaea;">
                <h1>You Are Successfully Registered</h1><br>
                <h3 style="background: #990000; width: 100%; color: whitesmoke;">Your Donor ID:&nbsp;&nbsp;&nbsp; <%= request.getParameter("ID")%> </h3><br>
                <ul>
                    <li>Please Note Above Given Id Using Which You Can Donate Blood.<br></li>        
                    <li>Your Default Password Is Your Entered D.O.B in the exact format "yyyy-mm-dd" for example: "1999-06-12".<br></li>
                    <li>You Can Change Your Password By Logging Into Your Account.<br></li>
                </ul>
            </fieldset>
        </div>
        <div style="position: absolute; top: 692px; height: 120px; width: 100%; background: #940000;" >
            <h5 style="text-align: center; color: whitesmoke;">Contact Us :- abc@xyz.com</h5>
             
        </div>
    </body>
</html>
