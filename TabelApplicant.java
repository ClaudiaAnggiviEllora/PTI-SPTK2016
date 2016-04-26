/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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
public class TabelApplicant {

   
    public String userName, passwordUser;
 
    public String namaAppl,TTLAppl, jenisPekrjaanAppl, jenisKelaminAppl, alamatKTPAppl, alamatTinggalAppl, emailAppl, agamaAppl, noKTP, golDarAppl, penyakitKronisAppl;
    public String noTelpAppl, noTelpIbu, noTelpAyah;
    public String namaAnak1, namaAnak2,TTLAnak1, TTLAnak2, pendidikanAnak1, pendidikanAnak2,namaAyah, namaIbu, TTLAyah, TTLIbu, alamatAyah, alamatIbu;
    public String statusPernikahan, namaPasangan, TTLPasangan, alamatPasangan, pendidikanPasangan, pekerjaanPasangan,SD,SMP,SMA,UNIV,AKADEMI,pendidikanNonFormal, status;
   
   public String noIdUser;
// static char nameFalse[] = {'1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '@', '!', '#', '$', '%', '^', '&', '*', '(', ')', '?'};
Connection connection;


 public String getPasswordUser() {
        return passwordUser;
    }

    public void setPasswordUser(String passwordUser) {
        this.passwordUser = passwordUser;
    }
    public String getNoIdUser() {
        return noIdUser;
    }

    public void setNoIdUser(String noIdUser) {
        this.noIdUser = noIdUser;
    }

    public String getUNIV() {
        return UNIV;
    }

    public void setUNIV(String UNIV) {
        this.UNIV = UNIV;
    }

    public String getAKADEMI() {
        return AKADEMI;
    }

    public void setAKADEMI(String AKADEMI) {
        this.AKADEMI = AKADEMI;
    }

    public String getSD() {
        return SD;
    }

    public void setSD(String SD) {
        this.SD = SD;
    }

    public String getSMP() {
        return SMP;
    }

    public void setSMP(String SMP) {
        this.SMP = SMP;
    }

    public String getSMA() {
        return SMA;
    }

    public void setSMA(String SMA) {
        this.SMA = SMA;
    }

    public String getPendidikanNonFormal() {
        return pendidikanNonFormal;
    }

    public void setPendidikanNonFormal(String pendidikanNonFormal) {
        this.pendidikanNonFormal = pendidikanNonFormal;
    }

    public String getPendidikanAnak1() {
        return pendidikanAnak1;
    }

    public void setPendidikanAnak1(String pendidikanAnak1) {
        this.pendidikanAnak1 = pendidikanAnak1;
    }

    public String getPendidikanAnak2() {
        return pendidikanAnak2;
    }

    public void setPendidikanAnak2(String pendidikanAnak2) {
        this.pendidikanAnak2 = pendidikanAnak2;
    }

    public String getNamaAnak1() {
        return namaAnak1;
    }

    public void setNamaAnak1(String namaAnak1) {
        this.namaAnak1 = namaAnak1;
    }

    public String getNamaAnak2() {
        return namaAnak2;
    }

    public void setNamaAnak2(String namaAnak2) {
        this.namaAnak2 = namaAnak2;
    }

    public String getTTLAnak1() {
        return TTLAnak1;
    }

    public void setTTLAnak1(String TTLAnak1) {
        this.TTLAnak1 = TTLAnak1;
    }

    public String getTTLAnak2() {
        return TTLAnak2;
    }

    public void setTTLAnak2(String TTLAnak2) {
        this.TTLAnak2 = TTLAnak2;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
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

    public String getNoTelpAppl() {
        return noTelpAppl;
    }

    public void setNoTelpAppl(String noTelpAppl) {
        this.noTelpAppl = noTelpAppl;
    }

    public String getJenisKelaminAppl() {
        return jenisKelaminAppl;
    }

    public void setJenisKelaminAppl(String jenisKelaminAppl) {
        this.jenisKelaminAppl = jenisKelaminAppl;
    }

    public String getAlamatKTPAppl() {
        return alamatKTPAppl;
    }

    public void setAlamatKTPAppl(String alamatKTPAppl) {
        this.alamatKTPAppl = alamatKTPAppl;
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

    public String getNoKTP() {
        return noKTP;
    }

    public void setNoKTP(String noKTP) {
        this.noKTP = noKTP;
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

    public String getTTLAppl() {
        return TTLAppl;
    }

    public void setTTLAppl(String TTLAppl) {
        this.TTLAppl = TTLAppl;
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

    public String getNoTelpAyah() {
        return noTelpAyah;
    }

    public void setNoTelpAyah(String noTelpAyah) {
        this.noTelpAyah = noTelpAyah;
    }

    public String getNoTelpIbu() {
        return noTelpIbu;
    }

    public void setNoTelpIbu(String noTelpIbu) {
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

//    public static char[] getNameFalse() {
//        return nameFalse;
//    }
//
//    public static void setNameFalse(char[] nameFalse) {
//        TabelApplicant.nameFalse = nameFalse;
//    }

//    public boolean isUserNameValid(String namaAppl) {
//        char karakter;
//        for (int i = 0; i < namaAppl.length(); i++) {
//            karakter = namaAppl.charAt(i);
//            for (int j = 0; j < getNameFalse().length; j++) {
//                if (karakter == getNameFalse()[j]) {
//                    return false;
//                }
//
//            }
//
//        }
//        return false;
//    }



//    public ResultSet TampilDataApplicant() throws SQLException {
//        ResultSet result;
//        String query = "select * from applicant";
//        Statement stmt = connection.createStatement();
//        result = stmt.executeQuery(query);
//        return result;
//    }
}

