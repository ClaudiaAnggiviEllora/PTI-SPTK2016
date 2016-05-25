/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package PTI;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author user
 */
@WebServlet(name = "ServletCustomers", urlPatterns = {"/ServletCustomers"})
public class ServletCustomers extends HttpServlet {

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
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);

        response.setContentType("text/html;charset=UTF-8");

        //Koneksi a = new Koneksi();
        String query, query1;

        String namaCust = request.getParameter("namaCust");
        String passwordUser = request.getParameter("passwordUser");
        String alamatCust = request.getParameter("alamatCust");
        String noTelpCust = request.getParameter("noTelpCust");
        String username = request.getParameter("username");
        String about = request.getParameter("about");

        TabelCustomers cust = new TabelCustomers();
        TabelLogin login = new TabelLogin();

        cust.setNamaCust(namaCust);
        cust.setPasswordUser(passwordUser);
        cust.setAlamatCust(alamatCust);
        cust.setNoTelpCust(noTelpCust);
        cust.setUserName(username);
        cust.setAbout(about);

        login.setUsername(username);
        login.setPasswordUser(passwordUser);

        try {

            PreparedStatement statement;
            Koneksi dbConn = null;
            Connection sqlConn = null;
            ResultSet resultSet = null;

            dbConn = new Koneksi();
            sqlConn = dbConn.getConnection();

            query = "Insert into tabelcustomers (namaCust, passwordUser,noTelpCust,alamatCust,username,about,role) VALUES ('" + cust.getNamaCust() + "','" + cust.getPasswordUser() + "','" + cust.getNoTelpCust() + "','" + cust.getAlamatCust() + "','" + cust.getUserName() + "','" + cust.getAbout() + "','customers');";
            query1 = "insert into tabellogin (username, passwordUser, role) Values ('" + login.getUsername() + "','" + login.getPasswordUser() + "','customers');";

            statement = sqlConn.prepareStatement(query);
            statement.executeUpdate(query);

            statement = sqlConn.prepareStatement(query1);
            statement.executeUpdate(query1);

            statement.close();
            sqlConn.close();

            response.sendRedirect("HomeCust.jsp");

        } catch (SQLException ex) {
            Logger.getLogger(ServletCustomers.class.getName()).log(Level.SEVERE, null, ex);
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

        response.setContentType("text/html;charset=UTF-8");
        String query;

        String namaCust = request.getParameter("namaCust");
        String passwordUser = request.getParameter("passwordUser");
        String alamatCust = request.getParameter("alamatCust");
        String noTelpCust = request.getParameter("noTelpCust");
        String username = request.getParameter("username");

        TabelCustomers cust = new TabelCustomers();

        cust.setNamaCust(namaCust);
        cust.setPasswordUser(passwordUser);
        cust.setAlamatCust(alamatCust);
        cust.setNoTelpCust(noTelpCust);
        cust.setUserName(username);

        try {

            PreparedStatement statement;
            Koneksi dbConn = null;
            Connection sqlConn = null;
            ResultSet resultSet = null;

            dbConn = new Koneksi();
            sqlConn = dbConn.getConnection();

            query = "UPDATE tabelcustomers SET , username = '" + cust.getUserName() + "',namaCust = '" + cust.getNamaCust() + "', passwordUser = '" + cust.getPasswordUser() + "', alamatCust = '" + cust.getAlamatCust() + "', noTelpCust = '" + cust.getNoTelpCust() + "', role = 'customers'  WHERE username = '" + cust.getUserName() + "'";
            statement = sqlConn.prepareStatement(query);
            statement.executeUpdate(query);

            statement.close();
            sqlConn.close();

            response.sendRedirect("LamanProfileCust.jsp");

        } catch (SQLException ex) {
            Logger.getLogger(ServletCustomers.class.getName()).log(Level.SEVERE, null, ex);
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
