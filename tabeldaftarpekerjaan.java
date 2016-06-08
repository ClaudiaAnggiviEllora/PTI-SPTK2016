/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import controler.koneksi;
import java.sql.Connection;
import java.sql.SQLException;

/**
 *
 * @author Feliks Yudha
 */
public class tabeldaftarpekerjaan {
    private String username;
    private String kodeIklan;

    Connection connection;
    public tabeldaftarpekerjaan(Connection koneksi) {
        this.connection = koneksi;
    }
    
    public tabeldaftarpekerjaan (){}

    public static tabelloker getkoneksi() throws SQLException{
    tabelloker data = new tabelloker(koneksi.getConnection());
        return data;
    }
    public String getUsername() {
        return username;
    }

    public void setUserneme(String username) {
        this.username = username;
    }

    public String getKodeIklan() {
        return kodeIklan;
    }

    public void setKodeIklan(String kodeIklan) {
        this.kodeIklan = kodeIklan;
    }
    
}
