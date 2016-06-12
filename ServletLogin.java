/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//package modelAndControl;

//import java.io.IOException;
//import java.io.PrintWriter;
//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//import java.util.logging.Level;
//import java.util.logging.Logger;
//import javax.servlet.ServletException;
////import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
///**
// *
// * @author user
// */
////@WebServlet(name = "ServletLogin", urlPatterns = {"/ServletLogin"})
//public class ServletLogin extends HttpServlet {
//
//    /**
//     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
//     * methods.
//     *
//     * @param request servlet request
//     * @param response servlet response
//     * @throws ServletException if a servlet-specific error occurs
//     * @throws IOException if an I/O error occurs
//     */
//    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");
//        
//    }
//
//    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
//    /**
//     * Handles the HTTP <code>GET</code> method.
//     *
//     * @param request servlet request
//     * @param response servlet response
//     * @throws ServletException if a servlet-specific error occurs
//     * @throws IOException if an I/O error occurs
//     */
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        processRequest(request, response);
//        
//        response.setContentType("text/html;charset=UTF-8");
//        
//                
//        String query;
//        
//        String passwordUser= request.getParameter("passwordUser");
//        String username = request.getParameter("userName");
//        
//        HttpSession session= request.getSession();
//        session.setAttribute("uName", username);
//        
//        TabelLogin login = new TabelLogin();
//        
//        login.setPasswordUser(passwordUser);
//        login.setUserName(username);
//
//        try{        
//        int result = 0;
//            
//        PreparedStatement statement;
//            Koneksi dbConn = null;
//            Connection sqlConn = null;
//            ResultSet resultSet = null;
//
//            dbConn = new Koneksi();
//            sqlConn = dbConn.getConnection();
//            
//            query = "SELECT * FROM tabellogin WHERE username = '" + username 
//                    + "' AND passwordUser = '" + passwordUser + "'";
//            
//           statement = sqlConn.prepareStatement(query);
//           
//            try {
//                resultSet = statement.executeQuery();
//                if (resultSet.next()) {
//                    result = 1;
//                }
//            } catch (SQLException e) {
//                result = 0;
//            }
//        
//             switch (resultSet.getString("role")) {
//                 case "admin":
//                    response.sendRedirect("LamanProfileAdmin.jsp");
//                    break;
//                case "customers":
//                    response.sendRedirect("LamanProfileCust.jsp");
//                    break;
//                case "applicant":
//                    response.sendRedirect("LamanProfileApp.jsp");
//                    break;
//                case " ":
//                    response.sendRedirect("error.jsp");
//                    break;
//            }
//            
//                    
//            
//            statement.close();
//            sqlConn.close();
//            
//            } catch (SQLException ex) {
//            Logger.getLogger(ServletLogin.class.getName()).log(Level.SEVERE, null, ex);
//        }
// 
//    }
//
//    /**
//     * Handles the HTTP <code>POST</code> method.
//     *
//     * @param request servlet request
//     * @param response servlet response
//     * @throws ServletException if a servlet-specific error occurs
//     * @throws IOException if an I/O error occurs
//     */
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        processRequest(request, response);
//    }
//    /**
//     * Returns a short description of the servlet.
//     *
//     * @return a String containing servlet description
//     */
//    @Override
//    public String getServletInfo() {
//        return "Short description";
//    }// </editor-fold>
//
//}






/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelAndControl;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author user
 */
//@WebServlet(name = "ServletLogin", urlPatterns = {"/ServletLogin"})
public class ServletLogin extends HttpServlet {

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
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        processRequest(request, response);
//        
//        response.setContentType("text/html;charset=UTF-8");
//        
//                
//        String query;
//        
//        String passwordUser= request.getParameter("passwordUser");
//        String userName = request.getParameter("userName");
//        
//        
//        TabelApplicant cust = new TabelApplicant();
//        
//        cust.setPasswordUser(passwordUser);
//        cust.setUserName(userName);
//        
//        try {
//        int result = 0;
//            PreparedStatement statement;
//            Koneksi dbConn = null;
//            Connection sqlConn = null;
//            ResultSet resultSet = null;
//             HttpSession session = request.getSession();
//
//            dbConn = new Koneksi();
//            sqlConn = dbConn.getConnection();
//            
//            query = "SELECT * FROM tabelapplicant WHERE userName = '"+ cust.getUserName() + "' AND passwordUser = '" + cust.getPasswordUser() + "'";
//            
//           statement = sqlConn.prepareStatement(query);
//           
//            try {
//                resultSet = statement.executeQuery();
//                if (resultSet.next()) {
//                    result = 1;
//                }
//            } catch (SQLException e) {
//                result = 0;
//            }
//        
//            statement.close();
//            sqlConn.close();
//            
//            session.setAttribute("userName", userName);
//            response.sendRedirect("LamanApplicant.jsp");
//        } catch (SQLException ex) {
//            Logger.getLogger(ServletLogin.class.getName()).log(Level.SEVERE, null, ex);
//        } 
//
//    }
    
     protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String query;
        
        String passwordUser= request.getParameter("passwordUser");
        String username = request.getParameter("userName");
        
        HttpSession session= request.getSession();
        session.setAttribute("userName", username);
        
        TabelLogin login = new TabelLogin();
        
        login.setPasswordUser(passwordUser);
        login.setUserName(username);

        try{        
        int result = 0;
          
        
        PreparedStatement statement;
            Koneksi dbConn = null;
            Connection sqlConn = null;
            ResultSet resultSet = null;

            dbConn = new Koneksi();
            sqlConn = dbConn.getConnection();
            
            query = "SELECT * FROM tabellogin WHERE username = '" + username 
                    + "' AND passwordUser = '" + passwordUser + "'";
            
           statement = sqlConn.prepareStatement(query);
           
            try {
                resultSet = statement.executeQuery();
                if (resultSet.next()) {
                    result = 1;
                }
            } catch (SQLException e) {
                result = 0;
            }
        
             switch (resultSet.getString("role")) {
                 case "admin":                    
                   response.sendRedirect("LamanAdmin.jsp");                   
                    break;
                case "customers":
                    response.sendRedirect("LamanCustomer.jsp");
                    break;
                case "applicant":
                    response.sendRedirect("LamanApplicant.jsp");
                    break;
                case " ":
                    response.sendRedirect("error.jsp");
                    break;
            }
            
            statement.close();
            sqlConn.close();
            
            } catch (SQLException ex) {
            Logger.getLogger(ServletLogin.class.getName()).log(Level.SEVERE, null, ex);
            response.sendRedirect("GagalLogin.jsp");
        }
           
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
    
    String username = request.getParameter("userName");
        String password = request.getParameter("passwordUser");
        String err="";
        int q=0;
        if (username.equals("") || username==null)
        {
            err="Username harus diisi";
        }
        else if(password.equals("") || password==null)
        {
            err="Password harus diisi";
        }
        else
        {
            HttpSession session = request.getSession();
            RequestDispatcher rd = request.getRequestDispatcher("LamanProfilApp.jsp");
            TabelApplicant member = new TabelApplicant();
            member.setUserName(username);
            member.setPasswordUser(password);
            session.setAttribute("userName", member);
            rd.forward(request, response);
        }
 
        if(q==0)
        {
            request.setAttribute("err", err);
            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
            rd.forward(request, response);
        }
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
