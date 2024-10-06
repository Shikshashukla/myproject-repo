<%-- 
    Document   : contect
    Created on : Sep 26, 2024, 6:59:39 PM
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
          <table border="2">
          <form method="post" action="contect.jsp">
              <tr><td>Name</td><td><input type="text" name="nm"></td></tr>
             <tr><td>Mobile</td><td><input type="text" name="nn"></td></tr>
              <tr><td>Massage</td><td><input type="text" name="no"></td></tr>
              <tr><td><input type="submit" value="save" name="ok"></td></tr>
  
           
          </form>
            </table>
          
          
      </div>
     <div class="RightSide">Product News</div>
      <div class="Footer">Developed By AS  </div>
    </body>
</html>
