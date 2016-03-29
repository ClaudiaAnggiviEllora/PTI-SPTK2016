/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BEAN;

import java.util.Scanner;
/**
 *
 * @author HP
 */
public class Konfirmasiiklan {

    private String job;
    private String owner;
    private String noKTP;
    private String NPWP;
    private String noTelp;
    private String perusahaan;
    private String penempatan;
    private String syarat;
    private String fasilitas;

    public Konfirmasiiklan() {

    }

    public Konfirmasiiklan(String job, String owner, String noKTP, String NPWP, String noTelp,
            String perusahaan, String penempatan, String syarat, String fasilitas) {
        this.job = job;
        this.owner = owner;
        this.noKTP = noKTP;
        this.NPWP = NPWP;
        this.noTelp = noTelp;
        this.perusahaan = perusahaan;
        this.penempatan = penempatan;
        this.syarat = syarat;
        this.fasilitas = fasilitas;
    }

    /**
     * @return the job
     */
    public String getJob() {
        return job;
    }

    /**
     * @param job the job to set
     */
    public void setJob(String job) {
        this.job = job;
    }

    /**
     * @return the owner
     */
    public String getOwner() {
        return owner;
    }

    /**
     * @param owner the owner to set
     */
    public void setOwner(String owner) {
        this.owner = owner;
    }

    /**
     * @return the noKTP
     */
    public String getNoKTP() {
        return noKTP;
    }

    /**
     * @param noKTP the noKTP to set
     */
    public void setNoKTP(String noKTP) {
        this.noKTP = noKTP;
    }

    /**
     * @return the NPWP
     */
    public String getNPWP() {
        return NPWP;
    }

    /**
     * @param NPWP the NPWP to set
     */
    public void setNPWP(String NPWP) {
        this.NPWP = NPWP;
    }

    /**
     * @return the noTelp
     */
    public String getNoTelp() {
        return noTelp;
    }

    /**
     * @param noTelp the noTelp to set
     */
    public void setNoTelp(String noTelp) {
        this.noTelp = noTelp;
    }

    /**
     * @return the perusahaan
     */
    public String getPerusahaan() {
        return perusahaan;
    }

    /**
     * @param perusahaan the perusahaan to set
     */
    public void setPerusahaan(String perusahaan) {
        this.perusahaan = perusahaan;
    }

    /**
     * @return the penempatan
     */
    public String getPenempatan() {
        return penempatan;
    }

    /**
     * @param penempatan the penempatan to set
     */
    public void setPenempatan(String penempatan) {
        this.penempatan = penempatan;
    }

    /**
     * @return the syarat
     */
    public String getSyarat() {
        return syarat;
    }

    /**
     * @param syarat the syarat to set
     */
    public void setSyarat(String syarat) {
        this.syarat = syarat;
    }

    /**
     * @return the fasilitas
     */
    public String getFasilitas() {
        return fasilitas;
    }

    /**
     * @param fasilitas the fasilitas to set
     */
    public void setFasilitas(String fasilitas) {
        this.fasilitas = fasilitas;
    }

    public void UbahStatusIklan(String kode) {
        Scanner key = new Scanner(System.in);
        String kodeIklan = "Press a button!";
        if ( kode == kodeIklan) {
            kode = " Konfirmasi!";
        } else {
            kode = "Ditolak!";
        }
    }
}
