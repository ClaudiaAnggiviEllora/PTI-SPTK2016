/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package SPTK;

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
    public String namaCust, alamatCust, passwordUser, noIdUser ;
    public String noTelpCust;
    Connection connection;
    
    public TabelCustomers() {
    }

    
    public TabelCustomers(String passwordUser, String noIdUser) {
        this.passwordUser = passwordUser;
        this.noIdUser = noIdUser;
    }

public String Create() throws SQLException {
        String query = "select from * tabelcustomers";
        java.sql.Statement statement = KoneksiDatabase.getConnection().createStatement();
        java.sql.ResultSet result = statement.executeQuery(query);

        int index = 1;

        while (result.next()) {
            index++;
        }

        String getNoIdUser = "CUST" + index;
        return getNoIdUser;
    }
    
    
public void EditDataProfilCustomer (String namaCust, String noTelpCust, String alamatCust, String passwordUser)throws SQLException{
        String query = "UPDATE INTO 'tabelcustomers' ('namaCust', 'alamatCust', 'noTelpCust', 'passwordUser' ) VALUES ('"+namaCust+"', '"+noTelpCust+"','"+alamatCust+"','"+passwordUser+"');";
        java.sql.Statement statement = KoneksiDatabase.getConnection().createStatement();
        java.sql.ResultSet result = statement.executeQuery(query);
        System.out.println("Success Edit data to database!");
        }

 public static char[] getNoIdUserFalse() {
        return noIdUserFalse;
    }

    public static void setNoIdUserFalse(char[] noIdUserFalse) {
        TabelCustomers.noIdUserFalse = noIdUserFalse;
    }

    
public boolean isNoIdUser(String noIdUser) {
        char karakter;
        for (int i = 0; i < noIdUser.length(); i++) {
            karakter = noIdUser.charAt(i);
            for (int j = 0; j < getNoIdUserFalse().length; j++) {
                if (karakter == getNoIdUserFalse()[j]) {
                    return false;
                }

            }

        }
        return false;
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

    public String getNoIdUser() {
        return noIdUser;
    }

    public void setNoIdUser(String noIdUser) {
        this.noIdUser = noIdUser;
    }

    public String getNoTelpCust() {
        return noTelpCust;
    }

    public void setNoTelpCust(String noTelpCust) {
        this.noTelpCust = noTelpCust;
    }
    
   public void AddDataCustomers( String namaCust,  String noTelpCust, String alamatCust, String passwordUser,String noIdUser) throws SQLException {

        Connection c = KoneksiDatabase.getConnection();
        String sql = "insert into Customers values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        PreparedStatement stmt = c.prepareStatement(sql);
        stmt.setString(1, namaCust);
        stmt.setString(2, noTelpCust);
        stmt.setString(3, alamatCust);
        stmt.setString(4, passwordUser);
        stmt.setString(5, noIdUser);
        stmt.executeUpdate();
    
}
    public ResultSet TampilDataCustomers() throws SQLException {
        ResultSet result;
        String query = "select * from tabelcustomers";
        Statement stmt = connection.createStatement();
        result = stmt.executeQuery(query);
        return result;
    }
    public ResultSet EditDataProfileCustomers() throws SQLException {
        ResultSet result;
        String query = "select * from tabelcustomers";
        Statement stmt = connection.createStatement();
        result = stmt.executeQuery(query);
        return result;
}
}
