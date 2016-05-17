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
public class servletLoker extends HttpServlet {

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
//        response.setContentType("text/html;charset=UTF-8");

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
        // processRequest(request, response);
        String tanggal= request.getParameter("tanggal");
        String jenisPekerjaan = request.getParameter("jenisPekerjaan");
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

        TabelLoker loker = new TabelLoker();

        loker.setTanggal(tanggal);
        loker.setJenisPekerjaan(jenisPekerjaan);
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

//        tabelKonfirmasi konf = new tabelKonfirmasi();
//        konf.setJenisPekerjaan(jenisPekerjaan);
//        konf.setJob(job);
//        konf.setOwner(owner);
//        konf.setNoKTP(noKTP);
//        konf.setNPWP(NPWP);
//        konf.setNoTelp(noTelp);
//        konf.setPerusahaan(perusahaan);
//        konf.setPenempatan(penempatan);
//        konf.setSyarat(syarat);
//        konf.setFasilitas(fasilitas);
//        konf.setKodeIklan(kodeIklan);
//        konf.setKeterangan(keterangan);

        
//       String id = Query.createId();
//            Query.insertMember(ktp, nama, username, passwd,no, alamat, id);          
//            String query = "select * from member where id_member='" + id+ "'";
//            java.sql.Statement statement = a.getConnection().createStatement();
//            java.sql.ResultSet result = statement.executeQuery(query);
//            String numID = null, pwd = null;
//
//            if (result.next()) {
//                numID = result.getString("id_member");
//            }
//            session.setAttribute("ID", numID);
//            response.sendRedirect("SignUp_proses.jsp");
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
        try {
            PreparedStatement statement;
            Koneksi dbConn = null;
            Connection sqlConn = null;
            ResultSet resultSet = null;
            String query;
            dbConn = new Koneksi();
            sqlConn = dbConn.getConnection();
            String kode = TabelLoker.createId();
            

            System.out.println(kode);

            query = "INSERT INTO tabelloker(tanggal,jenisPekerjaan, job, owner, noKTP, NPWP, noTelp, perusahaan, penempatan, syarat, fasilitas, kodeIklan, keterangan) "
                    + "VALUES ('"+loker.getTanggal()+"','" + loker.getJenisPekerjaan() + "','" + loker.getJob() + "', '" + loker.getOwner() + "','" + loker.getNoKTP()
                    + "','" + loker.getNPWP() + "','" + loker.getNoTelp() + "','" + loker.getPerusahaan() + "','" + loker.getPenempatan()
                    + "','" + loker.getSyarat() + "','" + loker.getFasilitas() + "','" + kode + "','sudah di post')";

            System.out.println(query);

//            String query2 = "INSERT INTO tabelkonfirmasi(jenisPekerjaan, job, owner, noKTP, NPWP, noTelp, perusahaan, penempatan, syarat, fasilitas, kodeIklan, keterangan) "
//                    + "VALUES ('" + konf.getJenisPekerjaan() + "','" + konf.getJob() + "', '" + konf.getOwner() + "','" + konf.getNoKTP()
//                    + "','" + konf.getNPWP() + "','" + konf.getNoTelp() + "','" + konf.getPerusahaan() + "','" + konf.getPenempatan()
//                    + "','" + konf.getSyarat() + "','" + konf.getFasilitas() + "','" + kode + "','sudah di post')";

            statement = sqlConn.prepareStatement(query);
            statement.executeUpdate(query);

//            statement = sqlConn.prepareStatement(query2);
//            statement.executeUpdate(query2);
            statement.close();
            sqlConn.close();

//             String numID = null, pwd = null;
//
//            if (resultSet.next()) {
//                numID = resultSet.getString("kodeIklan");
//           }
//            System.out.println("<html>");
//            System.out.println("<body>");
//            System.out.println("<h2>Lowongan kerja/ Iklan berhasil ditambahkan</h2>");
//            System.out.println("<h3>kode iklan :" + numID);
//            System.out.println("<br></br><br></br>");
//            System.out.println("<a href='FormLoginUser.jsp'>Login</a>");
//             
            request.getSession().setAttribute("kodeIklan", kode);
            response.sendRedirect("addLokersukses.jsp");

        } catch (SQLException e) {
            Logger.getLogger(servletLoker.class.getName()).log(Level.SEVERE, null, e);
//        } catch (SQLException ex) {
//            Logger.getLogger(ServletCustomer.class.getName()).log(Level.SEVERE, null, ex);
//        }
        }

//         try{
//             
//         HttpSession session = request.getSession();
//          PreparedStatement statement;
//            Koneksi dbConn = null;
//            Connection sqlConn = null;
//            ResultSet resultSet = null;
//
//            dbConn = new Koneksi();
//            sqlConn = dbConn.getConnection();
//            String kode = TabelLoker.createId();
//            System.out.println(kode);
// 
////            session.setAttribute("kodeIklan", numID);
////            response.sendRedirect("addLokersukses.jsp");
//            }
// catch (SQLException e) {
//          Logger.getLogger(servletLoker.class.getName()).log(Level.SEVERE, null, e);
//    }
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
