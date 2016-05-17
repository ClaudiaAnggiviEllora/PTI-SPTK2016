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
//            out.println("<title>Servlet testApplicant</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet testApplicant at " + request.getContextPath() + "</h1>");
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
  //    response.setContentType("text/html;charset=UTF-8");
        String userName= request.getParameter("userName");
        String password= request.getParameter("passwordUser");
        String namaAppl = request.getParameter("namaAppl");       
        String TTLAppl = request.getParameter("TTLAppl");
        String jenisKelamin = request.getParameter("jenisKelamin");
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
         String TTLAyah= request.getParameter("TTLAyah");
         String alamatAyah= request.getParameter("alamatAyah");
         String telpAyah = request.getParameter("telpAyah");
         
         String namaIbu= request.getParameter("namaIbu");
         String TTLIbu= request.getParameter("TTLIbu");
        String alamatIbu= request.getParameter("alamatIbu");
        String telpIbu= request.getParameter("telpIbu");
         String SD = request.getParameter("SD");
         String SMP = request.getParameter("SMP");
        String SMA = request.getParameter("SMA");
         String UNIV = request.getParameter("UNIV");
         String AKADEMI = request.getParameter("AKADEMI");
         String pendidikanNonFormal= request.getParameter("nonFormal");
    
        
        String query;
        TabelApplicant app = new TabelApplicant();
    
        app.setUserName(userName);
        app.setPasswordUser(password);
       app.setNamaAppl(namaAppl);      
       app.setTTLAppl(TTLAppl);
       app.setJenisKelaminAppl(jenisKelamin);
       app.setAlamatTinggalAppl(alamatTinggal);
       app.setAlamatKTPAppl(alamatKTP);
       app.setNoTelpAppl(telepon);
       app.setEmailAppl(email);
       app.setAgamaAppl(agama);
       app.setNoKTP(noKTP);
       app.setGolDarAppl(golDar);
       app.setPenyakitKronisAppl(penyakit);
      app.setJenisPekrjaanAppl(jenisPekerjaan);
       app.setStatusPernikahan(statusPernikahan);
       app.setNamaPasangan(namaPasangan);
       app.setTTLPasangan(TTLPasangan);
       app.setAlamatPasangan(alamatPasangan);
       app.setPendidikanPasangan(pendidikanPasangan);
       app.setPekerjaanPasangan(pekerjaanPasangan);
       app.setNamaAnak1(namaAnak1);
       app.setNamaAnak2(namaAnak2);
       app.setTTLAnak1(TTLAnak1);
       app.setTTLAnak2(TTLAnak2);
    app.setPendidikanAnak1(pendidikanAnak1);
       app.setPendidikanAnak2(pendidikanAnak2);
      
       app.setNamaAyah(namaAyah);
      app.setTTLAyah(TTLAyah);
      app.setAlamatAyah(alamatAyah);
      app.setNoTelpAyah(telpAyah);
      
      app.setNamaIbu(namaIbu);
     app.setTTLIbu(TTLIbu);
      app.setAlamatIbu(alamatIbu);
      
      app.setNoTelpIbu(telpIbu);
     
     app.setSD(SD);
      app.setSMP(SMP);
      app.setSMA(SMA);
      app.setUNIV(UNIV);
      app.setAKADEMI(AKADEMI);
      app.setPendidikanNonFormal(pendidikanNonFormal);
     
     TabelLogin login = new TabelLogin();
     
     login.setUserName(userName);
     login.setPasswordUser(password);
     
      try{
          PreparedStatement statement;
            Koneksi dbConn = null;
            Connection sqlConn = null;
            ResultSet resultSet = null;

            dbConn = new Koneksi();
            sqlConn = dbConn.getConnection();
            
//            query = "INSERT INTO tabelapplicant (userName  ,passwordUser, namaAppl, "
//                    + "TTLAppl, jenisKelamin, alamatTinggal, alamatKTP, telepon, email, "
//                    + "agama, noKTP, golDar, penyakit, jenisPekerjaan, statusPernikahan, "
//                    + "namaPasangan, TTLPasangan, alamatPasangan, pendidikanPasangan, "
//                    + "pekerjaanPasangan, namaAnak1, namaAnak2, TTLAnak1, TTLAnak2, "
//                    + "pendidikanAnak1, pendidikanAnak2, namaAyah, TTLAyah, alamatAyah, telpAyah"
//                    + "namaIbu, TTLIbu, alamatIbu, telpIbu, SD, SMP, SMA, UNIV, AKADEMI, pendidikanNonFormal) VALUES ('"+app.getUserName()+"','"
//                    +app.getPasswordUser()+"', '"+app.getNamaAppl()+"','"+app.getTTLAppl()
//                    +"','"+app.getJenisKelaminAppl()+"', '"+app.getAlamatTinggalAppl()
//                    +"','"+app.getAlamatKTPAppl()+"','"+app.getNoTelpAppl()+"','"
//                    +app.getEmailAppl()+"','"+app.getAgamaAppl()+"','"+app.getNoKTP()+"','"
//                    +app.getGolDarAppl()+"','"+app.getPenyakitKronisAppl()+"','"+app.getJenisPekrjaanAppl()+"','"
//                    +app.getStatusPernikahan()+"','"+app.getNamaPasangan()+"','"+app.getTTLPasangan()+"','"
//                    +app.getAlamatPasangan()+"','"+app.getPendidikanPasangan()+"','"+app.getPekerjaanPasangan()+"','"
//                    +app.getNamaAnak1()+"','"+app.getNamaAnak2()+"','"+app.getTTLAnak1()+"','"+app.getTTLAnak2()
//                    +"','"+app.getPendidikanAnak1()+"','"+app.getPendidikanAnak2()+"','"+app.getNamaAyah()
//                    +"','"+app.getTTLAyah()+"','"+app.getAlamatAyah()+"','"+app.getNoTelpAyah()+"','"+app.getNamaIbu()
//                    +"','"+app.getTTLIbu()+"','"+app.getAlamatIbu()+"','"+app.getNoTelpIbu()+"','"+app.getSD()+"','"
//                    +app.getSMP()+"','"+app.getSMA()+"','"+app.getUNIV()+"','"+app.getAKADEMI()+"','"+app.getPendidikanNonFormal()+"')";
          
            
            query = "INSERT INTO tabelapplicant (userName  ,passwordUser, namaAppl, "
                    + "TTLAppl, jenisKelamin, alamatTinggal, alamatKTP, telepon, email, "
                    + "agama, noKTP, golDar, penyakit, jenisPekerjaan, statusPernikahan, "
                    + "namaPasangan, TTLPasangan, alamatPasangan, pendidikanPasangan, "
                    + "pekerjaanPasangan, namaAnak1, namaAnak2, TTLAnak1, TTLAnak2, "
                    + "pendidikanAnak1, pendidikanAnak2, namaAyah, TTLAyah, alamatAyah, telpAyah, namaIbu, TTLIbu, alamatIbu, telpIbu, SD, SMP, SMA, UNIV, AKADEMI, pendidikanNonFormal, role) VALUES ('"+app.getUserName()+"','"
                    +app.getPasswordUser()+"', '"+app.getNamaAppl()+"','"+app.getTTLAppl()
                    +"','"+app.getJenisKelaminAppl()+"', '"+app.getAlamatTinggalAppl()
                    +"','"+app.getAlamatKTPAppl()+"','"+app.getNoTelpAppl()+"','"
                    +app.getEmailAppl()+"','"+app.getAgamaAppl()+"','"+app.getNoKTP()+"','"
                    +app.getGolDarAppl()+"','"+app.getPenyakitKronisAppl()+"','"+app.getJenisPekrjaanAppl()+"','"
                    +app.getStatusPernikahan()+"','"+app.getNamaPasangan()+"','"+app.getTTLPasangan()+"','"
                    +app.getAlamatPasangan()+"','"+app.getPendidikanPasangan()+"','"+app.getPekerjaanPasangan()+"','"
                    +app.getNamaAnak1()+"','"+app.getNamaAnak2()+"','"+app.getTTLAnak1()+"','"+app.getTTLAnak2()
                    +"','"+app.getPendidikanAnak1()+"','"+app.getPendidikanAnak2()+"','"+app.getNamaAyah()
                    +"','"+app.getTTLAyah()+"','"+app.getAlamatAyah()+"','"+app.getNoTelpAyah()+"','"+app.getNamaIbu()
                    +"','"+app.getTTLIbu()+"','"+app.getAlamatIbu()+"','"+app.getNoTelpIbu()+"','"+app.getSD()
                    +"','"+app.getSMP()+"','"+app.getSMA()+"','"+app.getUNIV()+"','"+app.getAKADEMI()+"','"+app.getPendidikanNonFormal()+"','applicant')";
          
            String query2 = "insert into tabellogin (userName, passwordUser, role) values ('"+login.getUserName()+"','"+login.getPasswordUser()+"','applicant')";
     
            statement = sqlConn.prepareStatement(query);
            statement.executeUpdate(query);
           
            statement = sqlConn.prepareStatement(query2);
            statement.executeUpdate(query2);
           
            statement.close();
            sqlConn.close();
            
           // response.sendRedirect("SignUp_proses.jsp");
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
       // processRequest(request, response);
        String userName= request.getParameter("userName");
        String password= request.getParameter("passwordUser");
        String namaAppl = request.getParameter("namaAppl");       
        String TTLAppl = request.getParameter("TTLAppl");
        String jenisKelamin = request.getParameter("jenisKelamin");
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
         String TTLAyah= request.getParameter("TTLAyah");
         String alamatAyah= request.getParameter("alamatAyah");
         String telpAyah = request.getParameter("telpAyah");
         
         String namaIbu= request.getParameter("namaIbu");
         String TTLIbu= request.getParameter("TTLIbu");
        String alamatIbu= request.getParameter("alamatIbu");
        String telpIbu= request.getParameter("telpIbu");
         String SD = request.getParameter("SD");
         String SMP = request.getParameter("SMP");
        String SMA = request.getParameter("SMA");
         String UNIV = request.getParameter("UNIV");
         String AKADEMI = request.getParameter("AKADEMI");
         String pendidikanNonFormal= request.getParameter("nonFormal");
    String status = request.getParameter("status");
        
        String query;
        TabelApplicant app = new TabelApplicant();
    
        app.setUserName(userName);
        app.setPasswordUser(password);
       app.setNamaAppl(namaAppl);      
       app.setTTLAppl(TTLAppl);
       app.setJenisKelaminAppl(jenisKelamin);
       app.setAlamatTinggalAppl(alamatTinggal);
       app.setAlamatKTPAppl(alamatKTP);
       app.setNoTelpAppl(telepon);
       app.setEmailAppl(email);
       app.setAgamaAppl(agama);
       app.setNoKTP(noKTP);
       app.setGolDarAppl(golDar);
       app.setPenyakitKronisAppl(penyakit);
      app.setJenisPekrjaanAppl(jenisPekerjaan);
       app.setStatusPernikahan(statusPernikahan);
       app.setNamaPasangan(namaPasangan);
       app.setTTLPasangan(TTLPasangan);
       app.setAlamatPasangan(alamatPasangan);
       app.setPendidikanPasangan(pendidikanPasangan);
       app.setPekerjaanPasangan(pekerjaanPasangan);
       app.setNamaAnak1(namaAnak1);
       app.setNamaAnak2(namaAnak2);
       app.setTTLAnak1(TTLAnak1);
       app.setTTLAnak2(TTLAnak2);
    app.setPendidikanAnak1(pendidikanAnak1);
       app.setPendidikanAnak2(pendidikanAnak2);
      
       app.setNamaAyah(namaAyah);
      app.setTTLAyah(TTLAyah);
      app.setAlamatAyah(alamatAyah);
      app.setNoTelpAyah(telpAyah);
      
      app.setNamaIbu(namaIbu);
     app.setTTLIbu(TTLIbu);
      app.setAlamatIbu(alamatIbu);
      
      app.setNoTelpIbu(telpIbu);
     
     app.setSD(SD);
      app.setSMP(SMP);
      app.setSMA(SMA);
      app.setUNIV(UNIV);
      app.setAKADEMI(AKADEMI);
      app.setPendidikanNonFormal(pendidikanNonFormal);
     app.setStatus(status);
     
      try{
          PreparedStatement statement;
            Koneksi dbConn = null;
            Connection sqlConn = null;
            ResultSet resultSet = null;

            dbConn = new Koneksi();
            sqlConn = dbConn.getConnection();
            
//            query = "INSERT INTO tabelapplicant (userName  ,passwordUser, namaAppl, "
//                    + "TTLAppl, jenisKelamin, alamatTinggal, alamatKTP, telepon, email, "
//                    + "agama, noKTP, golDar, penyakit, jenisPekerjaan, statusPernikahan, "
//                    + "namaPasangan, TTLPasangan, alamatPasangan, pendidikanPasangan, "
//                    + "pekerjaanPasangan, namaAnak1, namaAnak2, TTLAnak1, TTLAnak2, "
//                    + "pendidikanAnak1, pendidikanAnak2, namaAyah, TTLAyah, alamatAyah, telpAyah"
//                    + "namaIbu, TTLIbu, alamatIbu, telpIbu, SD, SMP, SMA, UNIV, AKADEMI, pendidikanNonFormal) VALUES ('"+app.getUserName()+"','"
//                    +app.getPasswordUser()+"', '"+app.getNamaAppl()+"','"+app.getTTLAppl()
//                    +"','"+app.getJenisKelaminAppl()+"', '"+app.getAlamatTinggalAppl()
//                    +"','"+app.getAlamatKTPAppl()+"','"+app.getNoTelpAppl()+"','"
//                    +app.getEmailAppl()+"','"+app.getAgamaAppl()+"','"+app.getNoKTP()+"','"
//                    +app.getGolDarAppl()+"','"+app.getPenyakitKronisAppl()+"','"+app.getJenisPekrjaanAppl()+"','"
//                    +app.getStatusPernikahan()+"','"+app.getNamaPasangan()+"','"+app.getTTLPasangan()+"','"
//                    +app.getAlamatPasangan()+"','"+app.getPendidikanPasangan()+"','"+app.getPekerjaanPasangan()+"','"
//                    +app.getNamaAnak1()+"','"+app.getNamaAnak2()+"','"+app.getTTLAnak1()+"','"+app.getTTLAnak2()
//                    +"','"+app.getPendidikanAnak1()+"','"+app.getPendidikanAnak2()+"','"+app.getNamaAyah()
//                    +"','"+app.getTTLAyah()+"','"+app.getAlamatAyah()+"','"+app.getNoTelpAyah()+"','"+app.getNamaIbu()
//                    +"','"+app.getTTLIbu()+"','"+app.getAlamatIbu()+"','"+app.getNoTelpIbu()+"','"+app.getSD()+"','"
//                    +app.getSMP()+"','"+app.getSMA()+"','"+app.getUNIV()+"','"+app.getAKADEMI()+"','"+app.getPendidikanNonFormal()+"')";
          
            
            query = "INSERT INTO tabelapplicant (userName  ,passwordUser, namaAppl, "
                    + "TTLAppl, jenisKelamin, alamatTinggal, alamatKTP, telepon, email, "
                    + "agama, noKTP, golDar, penyakit, jenisPekerjaan, statusPernikahan, "
                    + "namaPasangan, TTLPasangan, alamatPasangan, pendidikanPasangan, "
                    + "pekerjaanPasangan, namaAnak1, namaAnak2, TTLAnak1, TTLAnak2, "
                    + "pendidikanAnak1, pendidikanAnak2, namaAyah, TTLAyah, alamatAyah, telpAyah, namaIbu, TTLIbu, alamatIbu, telpIbu, SD, SMP, SMA, UNIV, AKADEMI, pendidikanNonFormal, status, role) VALUES ('"+app.getUserName()+"','"
                    +app.getPasswordUser()+"', '"+app.getNamaAppl()+"','"+app.getTTLAppl()
                    +"','"+app.getJenisKelaminAppl()+"', '"+app.getAlamatTinggalAppl()
                    +"','"+app.getAlamatKTPAppl()+"','"+app.getNoTelpAppl()+"','"
                    +app.getEmailAppl()+"','"+app.getAgamaAppl()+"','"+app.getNoKTP()+"','"
                    +app.getGolDarAppl()+"','"+app.getPenyakitKronisAppl()+"','"+app.getJenisPekrjaanAppl()+"','"
                    +app.getStatusPernikahan()+"','"+app.getNamaPasangan()+"','"+app.getTTLPasangan()+"','"
                    +app.getAlamatPasangan()+"','"+app.getPendidikanPasangan()+"','"+app.getPekerjaanPasangan()+"','"
                    +app.getNamaAnak1()+"','"+app.getNamaAnak2()+"','"+app.getTTLAnak1()+"','"+app.getTTLAnak2()
                    +"','"+app.getPendidikanAnak1()+"','"+app.getPendidikanAnak2()+"','"+app.getNamaAyah()
                    +"','"+app.getTTLAyah()+"','"+app.getAlamatAyah()+"','"+app.getNoTelpAyah()+"','"+app.getNamaIbu()
                    +"','"+app.getTTLIbu()+"','"+app.getAlamatIbu()+"','"+app.getNoTelpIbu()+"','"+app.getSD()
                    +"','"+app.getSMP()+"','"+app.getSMA()+"','"+app.getUNIV()+"','"+app.getAKADEMI()+"','"+app.getPendidikanNonFormal()+"','"+app.getStatus()+"','applicant')";
          
            
            statement = sqlConn.prepareStatement(query);
            statement.executeUpdate(query);
            
            statement.close();
            sqlConn.close();
            
            //request.getSession().setAttribute("userName", userName);
           // response.sendRedirect("SignUp_proses.jsp");
            response.sendRedirect("SelamatDatang.jsp");
      
        } catch (SQLException ex) {
            Logger.getLogger(ServletApplicant.class.getName()).log(Level.SEVERE, null, ex);
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
