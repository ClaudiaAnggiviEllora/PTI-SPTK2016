
package modelAndControl;

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
    public String tanggal;
    public String jenisPekerjaan;
    public String job;
    public String owner;
    public String noKTP;
    public String NPWP; 
    public String noTelp;
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

    TabelLoker() {
         //To change body of generated methods, choose Tools | Templates.
    }

   
    public static TabelLoker getKoneksi() throws SQLException {
        TabelLoker data = new TabelLoker(Koneksi.getConnection());
        return data;
    }

    public String getTanggal() {
        return tanggal;
    }

    public void setTanggal(String tanggal) {
        this.tanggal = tanggal;
    }

    
    
    public String getJenisPekerjaan() {
        return jenisPekerjaan;
    }

    public void setJenisPekerjaan(String jenisPekerjaan) {
        this.jenisPekerjaan = jenisPekerjaan;
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

    public String getNoTelp() {
        return noTelp;
    }

    public void setNoTelp(String noTelp) {
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
    
    public static String createId() throws SQLException {
        String query = "select * from tabelloker";
        java.sql.Statement statement = Koneksi.getConnection().createStatement();
        java.sql.ResultSet result = statement.executeQuery(query);

        int index = 1;

        while (result.next()) {
            index++;
        }

        String getId = "LOKER0000 " + index;
        return getId;
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
        String query = "SELECT kodeIklan  from tabelLoker";
        result = stmt.executeQuery(query);
        return result;
    }
    
    
}
