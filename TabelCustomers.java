/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package PTI;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author user
 */
public class TabelCustomers {
    private static char[] noIdUserFalse = { '@', '!', '#', '$', '%', '^', '&', '*', '(', ')', '?'};
    public String namaCust, alamatCust, passwordUser, userName ;
    public String noTelpCust;
    public String about;
    Connection connection;
    

    public static TabelCustomers getKoneksi() throws SQLException {
        TabelCustomers data = new TabelCustomers(Koneksi.getConnection());
        return data;
    }

    public TabelCustomers(Connection koneksi) {
        this.connection = koneksi;
    }
    
    public TabelCustomers() {
    }

    
    public TabelCustomers(String passwordUser, String userName) {
        this.passwordUser = passwordUser;
        this.userName = userName;
    }


    

 public static char[] getUserNameFalse() {
        return noIdUserFalse;
    }

    public static void setUserNameFalse(char[] noIdUserFalse) {
        TabelCustomers.noIdUserFalse = noIdUserFalse;
    }

    

    public String getNamaCust() {
        return namaCust;
    }

    public void setNamaCust(String namaCust) {
        this.namaCust = namaCust;
    }

    public String getAlamatCust() {
        return alamatCust;
    }

    public void setAlamatCust(String alamatCust) {
        this.alamatCust = alamatCust;
    }

    public String getPasswordUser() {
        return passwordUser;
    }

    public void setPasswordUser(String passwordUser) {
        this.passwordUser = passwordUser;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getNoTelpCust() {
        return noTelpCust;
    }

    public void setNoTelpCust(String noTelpCust) {
        this.noTelpCust = noTelpCust;
    }

    public String getAbout() {
        return about;
    }

    public void setAbout(String about) {
        this.about = about;
    }
    
    
 
    public ResultSet TampilDataCustomers(String userName) throws SQLException {
        ResultSet result;
        String query = "select * from tabelcustomers where username = '"+userName+"'";
        Statement stmt = connection.createStatement();
        result = stmt.executeQuery(query);
        return result;
    }
    
    
    public ResultSet EditDataProfileCustomers(String username) throws SQLException {
        ResultSet result;
        String query = "select * from tabelcustomers";
        Statement stmt = connection.createStatement();
        result = stmt.executeQuery(query);
        return result;
}
}