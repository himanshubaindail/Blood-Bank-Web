<% if(session.getAttribute("did")==null && session.getAttribute("rid")==null){ %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Home</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            .container{
                position: relative;                  
            }
            .container img{
                position: absolute; 
                width: 100%;
            }
            .container img:nth-child(4){
            animation: xfade 32s 0s infinite;
            }
            .container img:nth-child(3){
            animation: xfade 32s 8s infinite;
            }
            .container img:nth-child(2){
            animation: xfade 32s 16s infinite;
            }
            .container img:nth-child(1){
            animation: xfade 32s 24s infinite;
            }
            @keyframes xfade{
                0%{
                    opacity: 1;
                }
                20%{
                    opacity: 1;
                }
                25%{
                    opacity: 0;
                }
                90%{
                    opacity: 0;
                }               
                100%{
                    opacity: 1;
                }
            }
        </style>        
    </head>
    <body style="margin:0px;">
        <img src="blood.png" alt="Blood Bank" height="162" style="display: block; width: 100%;"/>
        <div>
           <ul style="list-style-type: none; margin: 0; padding: 0; background-color: #333333; overflow: hidden; ">
             <li style="display: inline-block; "><a href="index.jsp" style="color: white; display: block; padding: 14px 16px; text-decoration: none; background-color: #cc0000; " >Home</a></li>
             <li style="display: inline-block; "><a href="Register.jsp" style="color: white; display: block; padding: 14px 16px; text-decoration: none; " onMouseOver="this.style.backgroundColor='#cc0000'" onmouseout="this.style.backgroundColor='#333333'">Register</a></li>
             <li style="display: inline-block; "><a href="stock.jsp" style="color: white; display: block; padding: 14px 16px; text-decoration: none; " onMouseOver="this.style.backgroundColor='#cc0000'" onmouseout="this.style.backgroundColor='#333333'">Blood Stock</a></li>
             <li style="display: inline-block; "><a href="forgot.jsp" style="color: white; display: block; padding: 14px 16px; text-decoration: none; " onMouseOver="this.style.backgroundColor='#cc0000'" onmouseout="this.style.backgroundColor='#333333'">Forgot ID</a></li>
             <li style="display: inline-block; "><a href="correction.jsp" style="color: white; display: block; padding: 14px 16px; text-decoration: none; " onMouseOver="this.style.backgroundColor='#cc0000'" onmouseout="this.style.backgroundColor='#333333'">Details Correction</a></li>
             <li style="float: right; "><a href="" style="color: white; display: block; padding: 14px 16px; text-decoration: none; " onMouseOver="this.style.backgroundColor='red'" onmouseout="this.style.backgroundColor='#333333'">About</a></li>
             <li style="float: right; "><a href="login.jsp" style="color: white; display: block; padding: 14px 16px; text-decoration: none; " onMouseOver="this.style.backgroundColor='red'" onmouseout="this.style.backgroundColor='#333333'">Login</a></li>
           </ul>
        </div> 
        <div class="container">
            <img src="donatehands.jpg" height="519" alt=""/>
            <img src="poster.jpg"  height="519" alt=""/>
            <img src="bloodfact.gif"  height="519" alt=""/>
            <img src="donate.jpg"  height="519" alt=""/>
            <form action="Register.jsp" method="post">
                 <input type="submit" value="Register Now" style="position: absolute; top: 460px; left: 600px; padding: 10px 40px; background: #cc0000; color: whitesmoke; opacity: 0.7;" onMouseOver="this.style.opacity=1" onMouseOut="this.style.opacity=0.7"/>
            </form>
        </div>
        <div style="background: url(vback.jpg); position: absolute; top: 727px; width: 1349px; height: 470px;">            
            <video width="720" height="468" controls autoplay style="margin-left: 315px; background: black;">
                 <source src="hero.mp4" type="video/mp4">
                 <source src="hero.ogg" type="video/ogg">
                    Your browser does not support the video tag.
            </video>              
        </div>
        <div style="position: absolute; top: 1197px; height: 120px; width: 1349px; background: #940000;" >
            <h5 style="text-align: center; color: whitesmoke;">Contact Us :- abc@xyz.com</h5>
             
        </div>                               
    </body>
</html>
<% } else if(session.getAttribute("did")!=null && session.getAttribute("rid")==null){
          response.sendRedirect("Dprofile.jsp");
     }
     else if(session.getAttribute("did")==null && session.getAttribute("rid")!=null){
          response.sendRedirect("Rprofile.jsp");   
     }
%>
