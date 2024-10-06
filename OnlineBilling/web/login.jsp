<%-- 
    Document   : login
    Created on : Sep 26, 2024, 6:59:54 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <link rel="stylesheet" href="index.css">
        <title>JSP Page</title>
    </head>
    <body>
  <div class="header">  Online Billing </div>
      
      <div class="menubar">
           <a href="index.jsp">Home </a>
          <a href="about.jsp">about </a>
           <a href="contect.jsp">Contact </a>
            <a href="login.jsp">login </a>
             <a href="registration.jsp">Register</a>
              <a href="product.jsp">Product </a>
           </div>
      <div class="leftside">Product </div>
      <div class="Center">
          <h2>Login</h2>
           <table border="2">
          <form method="post" action="/OnlineBilling/login">
              <tr><td>UserName</td><td><input type="text" name="nv"></td></tr>
              <tr><td>Password</td><td><input type="text" name="nu"></td></tr>                         
              <tr><td><input type="submit" value="login" name="reg"></td>
              <td><input type="submit" value="Exit" name="exit"></td></tr>
                </form>
            </table>
         </div>
     <div class="RightSide">Product News</div>
     
      <div class="Footer">Developed By AS  </div>
    </body>
</html>
