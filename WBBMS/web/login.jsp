<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body style="margin: 0px;">
        <img src="blood.png" alt="Blood Bank" height="162" style="display: block; width: 100%; "/>
        <div>
           <ul style="list-style-type: none; margin: 0; padding: 0; background-color: #333333; overflow: hidden; ">
             <li style="display: inline-block; "><a href="index.jsp" style="color: white; display: block; padding: 14px 16px; text-decoration: none; " onMouseOver="this.style.backgroundColor='#cc0000'" onmouseout="this.style.backgroundColor='#333333'">Home</a></li>
             <li style="display: inline-block; "><a href="Register.jsp" style="color: white; display: block; padding: 14px 16px; text-decoration: none; " onMouseOver="this.style.backgroundColor='red'" onmouseout="this.style.backgroundColor='#333333'">Register</a></li>
             <li style="display: inline-block; "><a href="stock.jsp" style="color: white; display: block; padding: 14px 16px; text-decoration: none; " onMouseOver="this.style.backgroundColor='#cc0000'" onmouseout="this.style.backgroundColor='#333333'">Blood Stock</a></li>
             <li style="display: inline-block; "><a href="forgot.jsp" style="color: white; display: block; padding: 14px 16px; text-decoration: none; " onMouseOver="this.style.backgroundColor='#cc0000'" onmouseout="this.style.backgroundColor='#333333'">Forgot ID</a></li>
             <li style="display: inline-block; "><a href="correction.jsp" style="color: white; display: block; padding: 14px 16px; text-decoration: none; " onMouseOver="this.style.backgroundColor='#cc0000'" onmouseout="this.style.backgroundColor='#333333'">Details Correction</a></li>
             <li style="float: right; "><a href="" style="color: white; display: block; padding: 14px 16px; text-decoration: none; " onMouseOver="this.style.backgroundColor='red'" onmouseout="this.style.backgroundColor='#333333'">About</a></li>
             <li style="float: right; "><a href="login.jsp" style="color: white; display: block; padding: 14px 16px; text-decoration: none; background-color: #cc0000;" >Login</a></li>
           </ul>
        </div>
        
        <div style="background: url(bloodcell.jpg) no-repeat ; height: 560px; border: 2px solid; background-size: cover;"><br><br><br><br><br>
            <fieldset style="width: 300px; padding: 20px 20px; margin: auto; background-color: #eaeaea;">
                <legend style="font-size: larger; background: #8b8b8b; color: whitesmoke; border-radius: 10px;">&nbsp;Login&nbsp;</legend>
                <form action="Login" method="post">
                <table border="0" cellspacing="20px" width="400px">
                    <tbody>
                        <% String error=request.getParameter("error");
                            if(error != null && error.equals("1")){ %>
                        <tr>
                            <td colspan="2" style="color: red; font-weight:bold; text-decoration: underline;">INVALID USER</td>
                        </tr>
                        <% } %>
                        <tr>
                            <td>ID Type</td>
                            <td><select name="idtype" style="width: 100px;">
                                    <option value="donor">Donor</option>
                                    <option value="reciever">Reciever</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>Enter ID</td>
                            <td><input type="text" name="id" placeholder="Enter ID" style="width: 230px;"/></td>
                        </tr>
                        <tr>
                            <td>Password</td>
                            <td><input type="password" name="pass" placeholder="Enter Password" style="width: 230px;"/></td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align: center;"><input type="submit" value="Submit" name="submit" style="padding: 10px 40px; background: #cc0000; color: whitesmoke;"/></td>
                        </tr>
                    </tbody>
                </table>
                </form>
            </fieldset>
        </div>
        <div style="position: absolute; top: 692px; height: 120px; width: 100%; background: #940000;" >
            <h5 style="text-align: center; color: whitesmoke;">Contact Us :- abc@xyz.com</h5>
             
        </div>
    </body>
</html>