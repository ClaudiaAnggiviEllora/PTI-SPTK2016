
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author
 */
public class tabelLoker {

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
    private String kodeIklan;

    Connection connection;

    public tabelLoker(Connection koneksi) {
        this.connection = koneksi;
    }

    tabelLoker() {
    }

    public static tabelLoker getKoneksi() throws SQLException {
        tabelLoker data = new tabelLoker(koneksi.getConnection());
        return data;
    }

    public static String createId() throws SQLException {
        Statement statement;
        koneksi dbConn = null;
        Connection sqlConn = null;

        dbConn = new koneksi();
        sqlConn = dbConn.getConnection();
        statement = sqlConn.createStatement();

        String query = "select * from tabelloker";
        // String query = "INSERT INTO `tabelCustomers` (`namaCust`, `passwordUser`, `noTelpCust`,`alamatCust`,  `address`, `dob`, `email`, `join_date`, `detail`, `profile_picture`, `verify`) VALUES ('"++"', '"+password+"', '"+name+"', '"+phone+"', '"+address+"', '"+dob+"', '"+email+"', '"+joinDate+"', '', '"+image+"', '"+verify+"')";
        java.sql.ResultSet result = statement.executeQuery(query);

        int index = 1;

        while (result.next()) {
            index++;
        }

        String getId = "LOKER" + index;
        return getId;
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

    public String getKeterangan() {
        return keterangan;
    }

    public void setKeterangan(String keterangan) {
        this.keterangan = keterangan;
    }

    /**
     * @return the kodeIklan
     */
    public String getKodeIklan() {
        return kodeIklan;
    }

    /**
     * @param kodeIklan the kodeIklan to set
     */
    public void setKodeIklan(String kodeIklan) {
        this.kodeIklan = kodeIklan;
    }
}
