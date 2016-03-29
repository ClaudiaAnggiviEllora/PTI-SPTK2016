package pti_sptk;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import oracle.jdbc.pool.OracleDataSource;

public class KoneksiDatabase {

   Connection x;
    public static void main(String[] args) {
     System.out.println("Mencoba membuat koneksi ke database...");
        KoneksiDatabase p = new KoneksiDatabase();
        Connection conn = p.getConnection();

        try {
            conn.close();

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
    }

//    private KoneksiDatabase() {
//    }

    public static Connection getConnection() {
        String host = "localhost";
        String port = "1521";
        String db = "XE";
        String usr = "HR";
        String pwd = "HR";
        //Load driver class

        //Hubungkan ke sumber data
        Connection conn = null;
        try {
            OracleDataSource ds = new OracleDataSource();
            ds.setURL(String.format("jdbc:oracle:thin:@%s:%s:%s", host, port, db));
            conn = ds.getConnection(usr, pwd);
        } catch (SQLException ex) {
            System.out.println("Maaaf,koneksi tidak berhasil.");
            System.out.println(ex.getMessage());
        }
        if (conn != null) {
            System.out.println("Koneksi ke database berhasil terbentuk");
        } else {
            System.out.println("Maaaf,koneksi ke database gagal terbentuk");
        }
        return conn;
    }
   ;
    
}
