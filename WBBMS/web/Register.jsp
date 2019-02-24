<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Register</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
        <img src="donor.jpg" alt="" style="position: absolute; width: 50%; height: 480px; border: 2px solid; opacity: 0.9;">
        <img src="receiver.jpg" alt="" style="position: absolute; width: 49.7%; left: 50%; height: 480px; border: 2px solid; opacity: 0.9;">
        <form action="Dregister.jsp" method="post">
            <input type="submit" value="Donor Registration" style="position: absolute; top: 420px; left: 250px; padding: 16px 60px; background: #cc0000; color: whitesmoke;"> 
        </form>
        <form action="Rregister.jsp" method="post">
            <input type="submit" value="Receiver Registration" style="position: absolute; top: 420px; left: 900px; padding: 16px 60px; background: #cc0000; color: whitesmoke;"> 
        </form>
               
        <div style="position: absolute; top: 692px; height: 120px; width: 100%; background: #940000;" >
            <h5 style="text-align: center; color: whitesmoke;">Contact Us :- abc@xyz.com</h5>
             
        </div>
    </body>
</html>

