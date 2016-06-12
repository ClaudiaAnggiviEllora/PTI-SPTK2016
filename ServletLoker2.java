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
public class ServletLoker2 extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ServletLoker2</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServletLoker2 at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        String tanggal = request.getParameter("tanggal");
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

        try {
            PreparedStatement statement;
            Koneksi dbConn = null;
            Connection sqlConn = null;
            ResultSet resultSet = null;
            String query2;
            dbConn = new Koneksi();
            sqlConn = dbConn.getConnection();
            String kode = TabelLoker.createId();
            System.out.println(kode);

           
            query2 = "insert into tabelloker( tanggal, jenisPekerjaan, job, owner, noKTP, NPWP, noTelp, perusahaan, penempatan, syarat, fasilitas, kodeIklan, keterangan) values ('"+loker.getTanggal()+"','"+loker.getJenisPekerjaan()+"','"+loker.getJob()+"','"+loker.getOwner()+"','"+loker.getNoKTP()+"','"+loker.getNPWP()+"','"+loker.getNoTelp()+"','"+loker.getPerusahaan()+"','"+loker.getPenempatan()+"','"+loker.getSyarat()+"','"+loker.getFasilitas()+"','"+kode+"','sudah di post')";
            
            statement = sqlConn.prepareStatement(query2);
            statement.executeUpdate(query2);
            
            statement.close();
            sqlConn.close();

            request.getSession().setAttribute("kodeIklan", kode);
            response.sendRedirect("BerhasilAddInfoLoker.jsp");

        } catch (SQLException e) {
            Logger.getLogger(ServletLoker2.class.getName()).log(Level.SEVERE, null, e);
//        } catch (SQLException ex) {
//            Logger.getLogger(ServletCustomer.class.getName()).log(Level.SEVERE, null, ex);
//        }
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
        
       String tanggal = request.getParameter("tanggal");
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
          
            query ="insert into tabelloker(tanggal, jenisPekerjaan, job, owner, noKTP,NPWP, noTelp, perusahaan, penempatan, syarat,fasilitas, kodeIklan,keterangan) values ('"+loker.getTanggal()+"','"+loker.getJenisPekerjaan()+"','"+loker.getJob()+"','"+loker.getOwner()+"','"+loker.getNoKTP()+"','"+loker.getNPWP()+"','"+loker.getNoTelp()+"','"+loker.getPerusahaan()+"','"+loker.getPenempatan()+"','"+loker.getSyarat()+"','"+loker.getFasilitas()+"','"+kode+"','belum di post')";
         
            statement = sqlConn.prepareStatement(query);
            statement.executeUpdate(query);
            
            statement.close();
            sqlConn.close();

            request.getSession().setAttribute("kodeIklan", kode);
            response.sendRedirect("BerhasilPasangIklan.jsp");

        } catch (SQLException e) {
            Logger.getLogger(ServletLoker2.class.getName()).log(Level.SEVERE, null, e);
//        } catch (SQLException ex) {
//            Logger.getLogger(ServletCustomer.class.getName()).log(Level.SEVERE, null, ex);
//        }
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
