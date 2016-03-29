
package pti_sptk;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Sukses
 */
public class TabelLoker {
    public String job;
    public String owner;
    public String noKTP;
    public String NPWP; 
    public int noTelp;
    public String perusahaan;
    public String penempatan; 
    public String syarat; 
    public String fasilitas; 
    public String keterangan; 
    public String kodeIklan;

    
    
    Connection connection;
    public TabelLoker(Connection koneksi) {
        this.connection = koneksi;
    }
    
    public String getKeterangan() {
        return keterangan;
    }

    public void setKeterangan(String keterangan) {
        this.keterangan = keterangan;
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job;
    }

    public String getOwner() {
        return owner;
    }

    public void setOwner(String owner) {
        this.owner = owner;
    }

    public String getNoKTP() {
        return noKTP;
    }

    public void setNoKTP(String noKTP) {
        this.noKTP = noKTP;
    }

    public String getNPWP() {
        return NPWP;
    }

    public void setNPWP(String NPWP) {
        this.NPWP = NPWP;
    }

    public int getNoTelp() {
        return noTelp;
    }

    public void setNoTelp(int noTelp) {
        this.noTelp = noTelp;
    }

    public String getPerusahaan() {
        return perusahaan;
    }

    public void setPerusahaan(String perusahaan) {
        this.perusahaan = perusahaan;
    }

    public String getPenempatan() {
        return penempatan;
    }

    public void setPenempatan(String penempatan) {
        this.penempatan = penempatan;
    }

    public String getSyarat() {
        return syarat;
    }

    public void setSyarat(String syarat) {
        this.syarat = syarat;
    }

    public String getFasilitas() {
        return fasilitas;
    }

    public void setFasilitas(String fasilitas) {
        this.fasilitas = fasilitas;
    }

    public String getKodeIklan() {
        return kodeIklan;
    }

    public void setKodeIklan(String kodeIklan) {
        this.kodeIklan = kodeIklan;
    }
    
    public void AddInfoLoker(String job,String owner,String noKTP, String NPWP, int noTelp, String perusahaan, String penempatan, String syarat,String fasilitas, String keterangan, 
     String kodeIklan) throws SQLException {
        Connection c = KoneksiDatabase.getConnection();
        String sql = "insert into loker values (?,?,?,?,?,?,?,?,?,?,?)";
        PreparedStatement stmt = c.prepareStatement(sql);
        stmt.setString(1, job);
        stmt.setString(2, owner);
        stmt.setString(3, noKTP);
        stmt.setString(4, NPWP);
        stmt.setInt(5, noTelp);
        stmt.setString(6, perusahaan);
       stmt.setString(7, penempatan);
        stmt.setString(8, syarat);
        stmt.setString(9, fasilitas);
      stmt.setString(10, keterangan);
              stmt.setString(11, kodeIklan);
      
    stmt.executeUpdate();
    }
    public ResultSet LihatDataLoker() throws SQLException {
        ResultSet result;
        String query = "select * from loker where keterangan = sudah_konfirmasi";
        Statement stmt = connection.createStatement();
        result = stmt.executeQuery(query);
        return result;
    }
    public ResultSet kodeIklan() throws SQLException {
        ResultSet result;
        Statement stmt = connection.createStatement();
        String query = "SELECT kode_iklan  from konfirmasi";
        result = stmt.executeQuery(query);
        return result;
    }
    
    
}
