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
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/**
 *
 * @author laura
 */
public class ServletApplicant extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
//    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");
//        PrintWriter out = response.getWriter();
//        try {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet ServletApplicant</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet ServletApplicant at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
//        } finally {
//            out.close();
//        }
//    }

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
      //  processRequest(request, response);
    
     String userName = request.getParameter("userName");
        String password= request.getParameter("passwordUser");
        String namaAppl= request.getParameter("namaAppl");
        String TTLAppl= request.getParameter("TTLAppl");
        String jenisKelamin= request.getParameter("jenisKelamin");
        String alamatTinggal = request.getParameter("alamatTinggal");
        String alamatKTP = request.getParameter("alamatKTP");
        String telepon = request.getParameter("telepon");
        String email = request.getParameter("email");
        String agama = request.getParameter("agama");
        String noKTP = request.getParameter("noKTP");
        String golDar = request.getParameter("golDar");
        String penyakit = request.getParameter("penyakit");
        String jenisPekerjaan = request.getParameter("jenisPekerjaan");
        String statusPernikahan = request.getParameter("statusPernikahan");
        String namaPasangan = request.getParameter("namaPasangan");
        String TTLPasangan = request.getParameter("TTLPasangan");
        String alamatPasangan = request.getParameter("alamatPasangan");
        String pendidikanPasangan =request.getParameter("pendidikanPasangan");
        String pekerjaanPasangan= request.getParameter("pekerjaanPasangan");
        String namaAnak1= request.getParameter("namaAnak1");
        String namaAnak2 = request.getParameter("namaAnak2");
        String TTLAnak1=request.getParameter("TTLAnak1");
        String TTLAnak2=request.getParameter("TTLAnak2");
        String pendidikanAnak1 = request.getParameter("pendidikanAnak1");
        String pendidikanAnak2 = request.getParameter("pendidikanAnak2");
        String namaAyah= request.getParameter("namaAyah");
        String namaIbu= request.getParameter("namaIbu");
        String TTLAyah= request.getParameter("TTLAyah");
        String TTLIbu= request.getParameter("TTLIbu");
        String alamatAyah= request.getParameter("alamatAyah");
        String alamatIbu =request.getParameter("alamatIbu");
        String telpAyah = request.getParameter("telpAyah");
        String telpIbu = request.getParameter("telpIbu");
        String SD = request.getParameter("SD");
        String SMP = request.getParameter("SMP");
        String SMA = request.getParameter("SMA");
        String UNIV = request.getParameter("UNIV");
        String AKADEMI = request.getParameter("AKADEMI");
        String pendidikanNonFormal= request.getParameter("nonFormal");
        String status = request.getParameter("status");
        String query;
        
        TabelApplicant appl = new TabelApplicant();
    
       appl.setUserName(userName);
       appl.setPasswordUser(password);
       appl.setNamaAppl(namaAppl);
       appl.setTTLAppl(TTLAppl);
       appl.setJenisKelaminAppl(jenisKelamin);
       appl.setAlamatTinggalAppl(alamatTinggal); 
       appl.setAlamatKTPAppl(alamatKTP);
       appl.setNoTelpAppl(telepon);
       appl.setEmailAppl(email);
       appl.setAgamaAppl(agama);
       appl.setNoKTP(noKTP);
       appl.setGolDarAppl(golDar);
       appl.setPenyakitKronisAppl(penyakit);
       appl.setJenisPekrjaanAppl(jenisPekerjaan);
       appl.setStatusPernikahan(statusPernikahan);
       appl.setNamaPasangan(namaPasangan);
       appl.setTTLPasangan(TTLPasangan);
       appl.setAlamatPasangan(alamatPasangan);
       appl.setPendidikanPasangan(pendidikanPasangan);
       appl.setPekerjaanPasangan(pekerjaanPasangan);
      appl.setNamaAnak1(namaAnak1);
      appl.setNamaAnak2(namaAnak2);
      appl.setTTLAnak1(TTLAnak1);
      appl.setTTLAnak2(TTLAnak2);
      appl.setPendidikanAnak1(pendidikanAnak1);
      appl.setPendidikanAnak2(pendidikanAnak2);
      appl.setNamaAyah(namaAyah);
      appl.setNamaIbu(namaIbu);
       appl.setTTLAyah(TTLAyah);
       appl.setTTLIbu(TTLIbu);
       appl.setAlamatAyah(alamatAyah);
       appl.setAlamatIbu(alamatIbu);
       appl.setNoTelpAyah(telpAyah);
       appl.setNoTelpIbu(telpIbu);
       appl.setSD(SD);
       appl.setSMP(SMP);
       appl.setSMA(SMA);
       appl.setUNIV(UNIV);
       appl.setAKADEMI(AKADEMI);
       appl.setPendidikanNonFormal(pendidikanNonFormal);
       appl.setStatus(status);
       
      try{
            PreparedStatement statement;
            Koneksi dbConn = null;
            Connection sqlConn = null;
            ResultSet resultSet = null;

            dbConn = new Koneksi();
            sqlConn = dbConn.getConnection();
            
            query = "INSERT INTO tabelapplicant (userName, passwordUser, namaAppl, TTLAppl, jenisKelamin, alamatTinggal, alamatKTP, telepon, email, agama, noKTP, golDar,penyakit, jenisPekerjaan, statusPernikahan, namaPasangan, TTLPasangan, alamatPasangan, pendidikanPasangan, pekerjaanPasangan, namaAnak1, namaAnak2, TTLAnak1, TTLAnak2, pendidikanAnak1, pendidikanAnak2, namaAyah, namaIbu, TTLAyah, TTLIbu, alamatAyah, alamatIbu, telpAyah, telpIbu, SD, SMP, SMA, UNIV, AKADEMI, pendidikanNonFormal, status) VALUES('"+appl.getUserName()+"', '"+appl.getPasswordUser()+"','"+ appl.getNamaAppl()+"','"+appl.getTTLAppl()
                    +"','"+appl.getJenisKelaminAppl()+"','"+appl.getAlamatTinggalAppl()
                    +"','"+appl.getAlamatKTPAppl()+"','"+appl.getNoTelpAppl()+"','"+appl.getEmailAppl()
                    +"','"+appl.getAgamaAppl()+"','"+appl.getNoKTP()+"','"+appl.getGolDarAppl()+"','"
                    +"','"+appl.getPenyakitKronisAppl()+"','"+appl.getJenisPekrjaanAppl()+"','"+appl.getStatusPernikahan()+"','"+appl.getNamaPasangan()
                    +"','"+appl.getTTLPasangan()+"','"+appl.getAlamatPasangan()
                    +"','"+appl.getPendidikanPasangan()+"','"+appl.getPekerjaanPasangan()+"','"+appl.getNamaAnak1()
                    +"','"+appl.getNamaAnak2()+"','"+appl.getTTLAnak1()+"','"+appl.getTTLAnak2()+"','"+appl.getPendidikanAnak1()
                    +"','"+appl.getPendidikanAnak2()+"','"+appl.getNamaAyah()+"','"+appl.getNamaIbu()
                    +"','"+appl.getTTLAyah()+"','"+appl.getTTLIbu()+"','"+appl.getAlamatAyah()
                    +"','"+appl.getAlamatIbu()+"','"+appl.getNoTelpAyah()+"','"+appl.getNoTelpIbu()
                    +"','"+appl.getSD()+"','"+appl.getSMP()+"','"+appl.getSMA()+"','"+appl.getUNIV()+"','"+appl.getAKADEMI()
                    +"','"+appl.getPendidikanNonFormal()+"','"+appl.getStatus()+"')";
            
             statement = sqlConn.prepareStatement(query);
            statement.executeUpdate(query);
            
            statement.close();
            sqlConn.close();
          
            
            response.sendRedirect("FormLoginUser.jsp");
      
        } catch (SQLException ex) {
            Logger.getLogger(ServletApplicant.class.getName()).log(Level.SEVERE, null, ex);
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
        //processRequest(request, response);
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
