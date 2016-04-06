
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Novy
 */
public class TabelKonfirmasi {

    public String job;
    public String owner;
    public String noKTP, noTelp, perusahaan, penempatan, syarat, fasilitas;
    static char nameFalse[] = {'1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '@', '!', '#', '$', '%', '^', '&', '*', '(', ')', '?'};
    Connection connection;

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

    public static char[] getNameFalse() {
        return nameFalse;
    }

    public static void setNameFalse(char[] nameFalse) {
        TabelKonfirmasi.nameFalse = nameFalse;
    }

    public String CreateKodeIklan() throws SQLException {
        String query = "select from * TabelKonfirmasi";
        java.sql.Statement statement = KoneksiDatabase.getConnection().createStatement();
        java.sql.ResultSet result = statement.executeQuery(query);

        int index = 1;

        while (result.next()) {
            index++;
        }

        String getKodeIklan = "IKLAN" + index;
        return getKodeIklan;
    }

    public void AddPasangIklan(String job, String owner, String noKTP,
            String noTelp, String Perusahaan, String Penempatan, String Syarat,
            String Fasilitas) throws SQLException {

        Connection c = KoneksiDatabase.getConnection();
        String sql = "insert into TabelKonfirmasi values (?,?,?,?,?,?,?,?)";
        PreparedStatement stmt = c.prepareStatement(sql);
        stmt.setString(1, job);
        stmt.setString(2, owner);
        stmt.setString(3, noKTP);
        stmt.setString(4, noTelp);
        stmt.setString(5, Perusahaan);
        stmt.setString(6, Penempatan);
        stmt.setString(7, Syarat);
        stmt.setString(8, Fasilitas);
        stmt.executeUpdate();
    }

    public ResultSet LihatDetailPasangIklan() throws SQLException {
        ResultSet result;
        String query = "select * from TabelKonfirmasi";
        Statement stmt = connection.createStatement();
        result = stmt.executeQuery(query);
        return result;
    }
}
