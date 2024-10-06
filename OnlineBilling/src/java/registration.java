/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

/**
 *
 * @author HP
 */
@WebServlet(urlPatterns = {"/registration"})
public class registration extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            
            String name =request.getParameter("nt");
            String mob =request.getParameter("ns");          
            String Adress =request.getParameter("nr");
            String City =request.getParameter("ny");
            String Email =request.getParameter("np");
       
   out.print(name+"<br>");
   out.print(mob+"<br>");
   out.print(Adress+"<br>");
   out.print(City+"<br>");
   out.print(Email+"<br>");         
            
   
     try{    
        Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/billdb","root","");
           Statement st= con.createStatement();
   
             ResultSet rs=st.executeQuery("Select * from users where Status=0 or Status=2 ");
           String username="",Password="";
           int count=0;
           int id=0;
           while(rs.next()){
               
               count++;
               id=rs.getInt("Id");
               
           }
           if(count==0){
           username="As2024"+(id+1);
           Password="AsUser@"+(id+1);
           }
           if(count>0){
           username="As2024"+(id+1);
           Password="AsUser@"+(id+1);
           
           }
           
          st.executeUpdate("Insert into users(name,mobile,Email,City,Username,Password,Address)values('"+name+"','"+mob+"','"+Email+"','"+City+"','"+username+"','"+Password+"','"+Adress+"')");
    
          out.print("Updated Successfully....");
                }catch(Exception ee){}
     
     
        }
                                                                     
                 
                  
              
            
            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet registration</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet registration at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
        }
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
