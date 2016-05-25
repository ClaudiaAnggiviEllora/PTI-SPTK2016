/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author HP
 */
@WebServlet(urlPatterns = {"/servletloker1"})
public class servletloker1 extends HttpServlet {

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
        String job = request.getParameter("job");
        String owner = request.getParameter("owner");
        String noKTP = request.getParameter("noKTP");
        String NPWP = request.getParameter("NPWP");
        String noTelp = request.getParameter("noTelp");
        String perusahaan = request.getParameter("perusahaan");
        String penempatan = request.getParameter("penempatan");
        String syarat = request.getParameter("syarat");
        String fasilitas = request.getParameter("fasilitas");
        String keterangan = request.getParameter("keterangan");
        String kodeIklan = request.getParameter("kodeIklan");

        tabelLoker loker = new tabelLoker();

        loker.setJob(job);
        loker.setOwner(owner);
        loker.setNoKTP(noKTP);
        loker.setNPWP(NPWP);
        loker.setNoTelp(noTelp);
        loker.setPerusahaan(perusahaan);
        loker.setPenempatan(penempatan);
        loker.setSyarat(syarat);
        loker.setFasilitas(fasilitas);
        loker.setKeterangan(keterangan);
        loker.setKodeIklan(kodeIklan);

        try {
            PreparedStatement statement;
            koneksi dbConn = null;
            Connection sqlConn = null;
            ResultSet resultSet = null;
            String kode = tabelLoker.createId();

            dbConn = new koneksi();
            sqlConn = dbConn.getConnection();
            String query = "INSERT INTO tabelloker (job, owner, noKTP, NPWP, noTelp, perusahaan, penempatan, syarat, fasilitas, kodeIklan, keterangan)"
                    + "VALUES ('" + loker.getJob() + "','" + loker.getOwner() + "','" + loker.getNoKTP()
                    + "','" + loker.getNPWP() + "','" + loker.getNoTelp() + "','" + loker.getPerusahaan() + "','"
                    + loker.getPenempatan() + "','" + loker.getSyarat() + "','" + loker.getFasilitas() + "','" + kode + "','belum di post')";

            statement = sqlConn.prepareStatement(query);
            statement.executeUpdate(query);
            statement.close();
            sqlConn.close();
            response.sendRedirect("sukses.jsp");

        } catch (SQLException ex) {
            Logger.getLogger(servletloker1.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        //processRequest(request, response);
        String job = request.getParameter("job");
        String owner = request.getParameter("owner");
        String noKTP = request.getParameter("noKTP");
        String NPWP = request.getParameter("NPWP");
        String noTelp = request.getParameter("noTelp");
        String perusahaan = request.getParameter("perusahaan");
        String penempatan = request.getParameter("penempatan");
        String syarat = request.getParameter("syarat");
        String fasilitas = request.getParameter("fasilitas");
        String keterangan = request.getParameter("keterangan");
        String kodeIklan = request.getParameter("kodeIklan");

        tabelKonfirmasi loker = new tabelKonfirmasi();

        loker.setJob(job);
        loker.setOwner(owner);
        loker.setNoKTP(noKTP);
        loker.setNPWP(NPWP);
        loker.setNoTelp(noTelp);
        loker.setPerusahaan(perusahaan);
        loker.setPenempatan(penempatan);
        loker.setSyarat(syarat);
        loker.setFasilitas(fasilitas);
        loker.setKeterangan(keterangan);
        loker.setKodeIklan(kodeIklan);

//        HttpSession session = request.getSession();
//        SimpleDateFormat sdf = new SimpleDateFormat("dd-MMM-yyyy");
//        Calendar cal = Calendar.getInstance();
//        String tanggalData = sdf.format(cal.getTime());
         

        try {
            PreparedStatement statement;
            koneksi dbConn = null;
            Connection sqlConn = null;
            ResultSet resultSet = null;

            String kode = tabelLoker.createId();
            dbConn = new koneksi();
            sqlConn = dbConn.getConnection();
            String query2 = "UPDATE tabelkonfirmasi SET job = '" + loker.getJob() + "', owner = '" + loker.getOwner() + "', noKTP = '" 
                    + loker.getNoKTP() + "', NPWP = '" + loker.getNPWP() + "', noTelp = '" + loker.getNoTelp() + "', perusahaan = '" + loker.getPerusahaan()
                    + "', penempatan = '" + loker.getPenempatan() + "', syarat = '" + loker.getSyarat() + "', fasilitas = '" + loker.getFasilitas() + "', keterangan= '" 
                    + loker.getKeterangan() + "WHERE kodeIklan = '" + loker.getKodeIklan()+ "','sudah di post')";
            statement = sqlConn.prepareStatement(query2);
            statement.executeUpdate(query2);

            statement.close();
            sqlConn.close();
            response.sendRedirect("lamanKonfirmasi1.jsp");

        } catch (SQLException ex) {
            Logger.getLogger(servletloker1.class.getName()).log(Level.SEVERE, null, ex);
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
