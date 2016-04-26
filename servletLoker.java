
package controler;

import javax.servlet.http.HttpServlet;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
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
 * @author Feliks Yudha
 */
public class servletLoker extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
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

            Statement statement;
            Koneksi dbConn = null;
            Connection sqlConn = null;
            dbConn = new Koneksi();
            sqlConn = dbConn.getConnection();
            statement = sqlConn.createStatement();

            String query = "INSERT INTO `tabelLoker`(`job`, `owner`, `noKTP`,"
                    + " `NPWP`, `noTelp`, `perusahaan`, `penempatan`, `syarat`, "
                    + "`fasilitas`, `keterangan`, `kodeIklan`) VALUES (`" + job + "`,"
                    + " `" + owner + "`, `" + noKTP + "`, `" + NPWP + "`, `" + noTelp + "`, `" + perusahaan + "`"
                    + ", `" + penempatan + "`, `" + syarat + "`, `" + fasilitas + "`, `" + keterangan + "`,"
                    + " `" + kodeIklan + "`)";
            statement.executeUpdate(query);

            statement.close();
            sqlConn.close();
            RequestDispatcher rd = request.getRequestDispatcher("lamanHapusLoker.jsp");
            rd.forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ServletCustomer.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
