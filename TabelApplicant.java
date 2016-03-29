/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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
public class TabelApplicant {

    public String passwordUser;
    public String noIdUser;
    public String namaAppl, jenisPekrjaanAppl, jenisKelaminAppl, alamatAppl, alamatTinggalAppl, emailAppl, agamaAppl, golDarAppl, penyakitKronisAppl;
    public int noTelpAppl, noTelpIbu, noTelpAyah;
    public String namaAyah, namaIbu, TTLAyah, TTLIbu, alamatAyah, alamatIbu;
    public String statusPernikahan, namaPasangan, TTLPasangan, alamatPasangan, pendidikanPasangan, pekerjaanPasangan;
    static char nameFalse[] = {'1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '@', '!', '#', '$', '%', '^', '&', '*', '(', ')', '?'};
Connection connection;

    public String getNoIdUser() {
        return noIdUser;
    }

    public void setNoIdUser(String noIdUser) {
        this.noIdUser = noIdUser;
    }

    public static String createNoIdUser() throws SQLException {
        String query = "select from * Applicant";
        java.sql.Statement statement = KoneksiDatabase.getConnection().createStatement();
        java.sql.ResultSet result = statement.executeQuery(query);

        int index = 1;

        while (result.next()) {
            index++;
        }

        String getNoIdUser = "APPL" + index;
        return getNoIdUser;
    }

    public String getPasswordUser() {
        return passwordUser;
    }

    public void setPasswordUser(String passwordUser) {
        this.passwordUser = passwordUser;
    }

    public String getNamaAppl() {
        return namaAppl;
    }

    public void setNamaAppl(String namaAppl) {
        this.namaAppl = namaAppl;
    }

    public String getJenisPekrjaanAppl() {
        return jenisPekrjaanAppl;
    }

    public void setJenisPekrjaanAppl(String jenisPekrjaanAppl) {
        this.jenisPekrjaanAppl = jenisPekrjaanAppl;
    }

    public int getNoTelpAppl() {
        return noTelpAppl;
    }

    public void setNoTelpAppl(int noTelpAppl) {
        this.noTelpAppl = noTelpAppl;
    }

    public String getJenisKelaminAppl() {
        return jenisKelaminAppl;
    }

    public void setJenisKelaminAppl(String jenisKelaminAppl) {
        this.jenisKelaminAppl = jenisKelaminAppl;
    }

    public String getAlamatAppl() {
        return alamatAppl;
    }

    public void setAlamatAppl(String alamatAppl) {
        this.alamatAppl = alamatAppl;
    }

    public String getAlamatTinggalAppl() {
        return alamatTinggalAppl;
    }

    public void setAlamatTinggalAppl(String alamatTinggalAppl) {
        this.alamatTinggalAppl = alamatTinggalAppl;
    }

    public String getEmailAppl() {
        return emailAppl;
    }

    public void setEmailAppl(String emailAppl) {
        this.emailAppl = emailAppl;
    }

    public String getAgamaAppl() {
        return agamaAppl;
    }

    public void setAgamaAppl(String agamaAppl) {
        this.agamaAppl = agamaAppl;
    }

    public String getGolDarAppl() {
        return golDarAppl;
    }

    public void setGolDarAppl(String golDarAppl) {
        this.golDarAppl = golDarAppl;
    }

    public String getPenyakitKronisAppl() {
        return penyakitKronisAppl;
    }

    public void setPenyakitKronisAppl(String penyakitKronisAppl) {
        this.penyakitKronisAppl = penyakitKronisAppl;
    }

    public String getNamaAyah() {
        return namaAyah;
    }

    public void setNamaAyah(String namaAyah) {
        this.namaAyah = namaAyah;
    }

    public String getNamaIbu() {
        return namaIbu;
    }

    public void setNamaIbu(String namaIbu) {
        this.namaIbu = namaIbu;
    }

    public String getTTLAyah() {
        return TTLAyah;
    }

    public void setTTLAyah(String TTLAyah) {
        this.TTLAyah = TTLAyah;
    }

    public String getTTLIbu() {
        return TTLIbu;
    }

    public void setTTLIbu(String TTLIbu) {
        this.TTLIbu = TTLIbu;
    }

    public String getAlamatAyah() {
        return alamatAyah;
    }

    public void setAlamatAyah(String alamatAyah) {
        this.alamatAyah = alamatAyah;
    }

    public String getAlamatIbu() {
        return alamatIbu;
    }

    public void setAlamatIbu(String alamatIbu) {
        this.alamatIbu = alamatIbu;
    }

    public int getNoTelpAyah() {
        return noTelpAyah;
    }

    public void setNoTelpAyah(int noTelpAyah) {
        this.noTelpAyah = noTelpAyah;
    }

    public int getNoTelpIbu() {
        return noTelpIbu;
    }

    public void setNoTelpIbu(int noTelpIbu) {
        this.noTelpIbu = noTelpIbu;
    }

    public String getStatusPernikahan() {
        return statusPernikahan;
    }

    public void setStatusPernikahan(String statusPernikahan) {
        this.statusPernikahan = statusPernikahan;
    }

    public String getNamaPasangan() {
        return namaPasangan;
    }

    public void setNamaPasangan(String namaPasangan) {
        this.namaPasangan = namaPasangan;
    }

    public String getTTLPasangan() {
        return TTLPasangan;
    }

    public void setTTLPasangan(String TTLPasangan) {
        this.TTLPasangan = TTLPasangan;
    }

    public String getAlamatPasangan() {
        return alamatPasangan;
    }

    public void setAlamatPasangan(String alamatPasangan) {
        this.alamatPasangan = alamatPasangan;
    }

    public String getPendidikanPasangan() {
        return pendidikanPasangan;
    }

    public void setPendidikanPasangan(String pendidikanPasangan) {
        this.pendidikanPasangan = pendidikanPasangan;
    }

    public String getPekerjaanPasangan() {
        return pekerjaanPasangan;
    }

    public void setPekerjaanPasangan(String pekerjaanPasangan) {
        this.pekerjaanPasangan = pekerjaanPasangan;
    }

    public static char[] getNameFalse() {
        return nameFalse;
    }

    public static void setNameFalse(char[] nameFalse) {
        TabelApplicant.nameFalse = nameFalse;
    }

    public boolean isUserNameValid(String namaAppl) {
        char karakter;
        for (int i = 0; i < namaAppl.length(); i++) {
            karakter = namaAppl.charAt(i);
            for (int j = 0; j < getNameFalse().length; j++) {
                if (karakter == getNameFalse()[j]) {
                    return false;
                }

            }

        }
        return false;
    }

    public void AddDataApplicant(String namaAppl, String jenisPekerjaanAppl, int noTelpAppl,
            String jenisKelaminAppl, String alamatKTPAppl, String alamatTinggalAppl,
            String emailAppl, String agamaAppl, String golDarAppl, String penyakitKronisAppl,
            String namaAyah, String namaIbu, String TTLAyah, String TTLIbu, String alamatAyah,
            String alamatIbu, int noTelpAyah, int noTelpIbu, String statusPernikahan,
            String namaPasangan, String TTLPasangan, String alamatPasangan,
            String pendidikanTerakhirPasangan, String pekerjaanPasangan, String keterangan) throws SQLException {

        Connection c = KoneksiDatabase.getConnection();
        String sql = "insert into applicant values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        PreparedStatement stmt = c.prepareStatement(sql);
        stmt.setString(1, namaAppl);
        stmt.setString(2, jenisPekerjaanAppl);
        stmt.setInt(3, noTelpAppl);
        stmt.setString(4, jenisKelaminAppl);
        stmt.setString(5, alamatTinggalAppl);
        stmt.setString(6, emailAppl);
        stmt.setString(7, agamaAppl);
        stmt.setString(8, golDarAppl);
        stmt.setString(9, penyakitKronisAppl);
        stmt.setString(10, namaAyah);
        stmt.setString(11, namaIbu);
        stmt.setString(12, TTLAyah);
        stmt.setString(13, TTLIbu);
        stmt.setString(14, alamatAyah);
        stmt.setString(15, alamatIbu);
        stmt.setInt(16, noTelpAyah);
        stmt.setInt(17, noTelpIbu);
        stmt.setString(18, statusPernikahan);
        stmt.setString(19, namaPasangan);
        stmt.setString(21, TTLPasangan);
        stmt.setString(22, alamatPasangan);
        stmt.setString(23, pendidikanTerakhirPasangan);
        stmt.setString(24, pekerjaanPasangan);
        stmt.setString(25, keterangan);
        stmt.executeUpdate();
    }

    public ResultSet TampilDataApplicant() throws SQLException {
        ResultSet result;
        String query = "select * from applicant";
        Statement stmt = connection.createStatement();
        result = stmt.executeQuery(query);
        return result;
    }
}

