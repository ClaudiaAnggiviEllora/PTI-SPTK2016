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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author laura
 */
public class ServletEditProfil extends HttpServlet {

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
        PrintWriter out = response.getWriter();

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
        String query;

        String passwordUser = request.getParameter("passwordUser");
        String userName = request.getSession().getAttribute("userName").toString();
        String namaAppl = request.getParameter("namaAppl");
        String ttl = request.getParameter("TTLAppl");
        String telepon = request.getParameter("telepon");
        String alamat = request.getParameter("alamatTinggal");

        TabelApplicant appl = new TabelApplicant();
        appl.setNamaAppl(namaAppl);
        appl.setPasswordUser(passwordUser);
        appl.setTTLAppl(ttl);
        appl.setNoTelpAppl(telepon);
        appl.setAlamatTinggalAppl(alamat);

        try {
            int result = 0;
            PreparedStatement statement;
            Koneksi dbConn = null;
            Connection sqlConn = null;
            ResultSet resultSet = null;
            // HttpSession session = request.getSession();

            dbConn = new Koneksi();
            sqlConn = dbConn.getConnection();

            query = "UPDATE tabelapplicant set namaAppl='" + appl.getNamaAppl() + "', passwordUser='" + appl.getPasswordUser() + "',TTLAppl='" + appl.getTTLAppl() + "',telepon='" + appl.getNoTelpAppl() + "',alamatTinggal='" + appl.getAlamatTinggalAppl() + "' WHERE userName = '" + userName + "'";
            String query2 = "UPDATE tabellogin set passwordUser='" + appl.getPasswordUser() + "' WHERE userName = '" + userName + "'";

            statement = sqlConn.prepareStatement(query);
            statement.executeUpdate();

            statement = sqlConn.prepareStatement(query2);
            statement.executeUpdate();

            statement.close();
            sqlConn.close();

            //  session.setAttribute("userName", userName);
            response.sendRedirect("LamanProfilApp.jsp");
        } catch (SQLException ex) {
            Logger.getLogger(ServletLogin.class.getName()).log(Level.SEVERE, null, ex);
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
