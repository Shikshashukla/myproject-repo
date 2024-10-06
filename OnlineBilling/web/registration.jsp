<%-- 
    Document   : registration
    Created on : Sep 26, 2024, 7:00:13 PM
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
          <h2>Registration</h2>
           <table border="2">
          <form method="post" action="/OnlineBilling/registration">
              <tr><td>Name</td><td><input type="text" name="nt"></td></tr>
             <tr><td>Mobile</td><td><input type="text" name="ns"></td></tr>
              <tr><td>Email</td><td><input type="text" name="np"></td></tr>
              <tr><td>Address</td><td><input type="text" name="nr"></td></tr> 
              <tr><td>City</td><td><input type="text" name="ny"></td></tr>                                 
              <tr><td><input type="submit" value="Ragistare" name="reg"></td>
              <td><input type="submit" value="Exit" name="exit"></td></tr>             
              
          </form>
            </table>
          
          
          
      </div>
     <div class="RightSide">Product News</div>
      <div class="Footer">Developed By AS  </div>
    </body>
</html>
