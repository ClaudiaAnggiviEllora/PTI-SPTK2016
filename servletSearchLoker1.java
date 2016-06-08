package controler;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import model.tabelloker;
import controler.koneksi;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class servletSearchLoker1 extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            ArrayList<tabelloker> hasilPencarianList = new ArrayList();
            String jenisPekerjaan = request.getParameter("jenisPekerjaan");
            String query = "SELECT * FROM tabelloker WHERE jenisPekerjaan='" + jenisPekerjaan + "' ";
            System.out.println("query " + query);
            koneksi koneksi = new koneksi();
            Connection connection = koneksi.getConnection();
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(query);
            while (resultSet.next()) {
                tabelloker tabelloker = new tabelloker();
                tabelloker.setTanggal(resultSet.getString("tanggal"));
                tabelloker.setJenisPekerjaan(resultSet.getString("jenisPekerjaan"));
                tabelloker.setJob(resultSet.getString("job"));
                tabelloker.setOwner(resultSet.getString("owner"));
                tabelloker.setNoKTP(resultSet.getString("noKTP"));
                tabelloker.setNPWP(resultSet.getString("NPWP"));
                tabelloker.setNoTelp(resultSet.getString("noTelp"));
                tabelloker.setPerusahaan(resultSet.getString("perusahaan"));
                tabelloker.setPenempatan(resultSet.getString("penempatan"));
                tabelloker.setSyarat(resultSet.getString("syarat"));
                tabelloker.setFasilitas(resultSet.getString("fasilitas"));
                tabelloker.setKeterangan(resultSet.getString("keterangan"));
                tabelloker.setKodeIklan(resultSet.getString("kodeIklan"));
                hasilPencarianList.add(tabelloker);
            }
            request.setAttribute("hasilPencarianList", hasilPencarianList);
            RequestDispatcher view = request.getRequestDispatcher("searchView.jsp");
            view.forward(request, response);
            connection.close();
            System.out.println("Disconnected!");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public String getServletInfo() {
        return "getting records from database through servlet controller";
    }// </editor-fold>
}
