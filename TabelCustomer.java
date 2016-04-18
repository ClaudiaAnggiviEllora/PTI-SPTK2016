/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelAndControl;

/**
 *
 * @author laura jemek
 */
// makan banyak perut cacingan

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class TabelCustomer {
    private static char[] noIdUserFalse = { '@', '!', '#', '$', '%', '^', '&', '*', '(', ')', '?'};
    public String namaCust, alamatCust, passwordUser, noIdUser ;
    public String noTelpCust;
    Connection connection;
    
    public TabelCustomer() {
    }

    
    public TabelCustomer(String passwordUser, String noIdUser) {
        this.passwordUser = passwordUser;
        this.noIdUser = noIdUser;
    }

//public String Create() throws SQLException {
//    
//             dbConn  = new Koneksi();
//            sqlConn  = dbConn.getConnection();
//            statement  = sqlConn.createStatement();
//            PreparedStatement preparedStatement;
//        String query = "select from * tabelcustomers";
//        java.sql.Statement statement = TesXAMPP.getConnection().createStatement();
//        java.sql.ResultSet result = statement.executeQuery(query);
//
//        int index = 1;
//
//        while (result.next()) {
//            index++;
//        }
//
//        String getNoIdUser = "CUST" + index;
//        return getNoIdUser;
//    }
//    
    
//public void EditDataProfilCustomer (String namaCust, String noTelpCust, String alamatCust, String passwordUser)throws SQLException{
//        String query = "UPDATE INTO 'tabelcustomers' ('namaCust', 'alamatCust', 'noTelpCust', 'passwordUser' ) VALUES ('"+namaCust+"', '"+noTelpCust+"','"+alamatCust+"','"+passwordUser+"');";
//        java.sql.Statement statement = KoneksiDatabase.getConnection().createStatement();
//        java.sql.ResultSet result = statement.executeQuery(query);
//        System.out.println("Success Edit data to database!");
//        }
//
// public static char[] getNoIdUserFalse() {
//        return noIdUserFalse;
//    }
//
//    public static void setNoIdUserFalse(char[] noIdUserFalse) {
//        TabelCustomers.noIdUserFalse = noIdUserFalse;
//    }

    

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
    
    public static String createId() throws SQLException {
        Statement statement;
            Koneksi dbConn = null;
            Connection sqlConn = null;

            dbConn = new Koneksi();
            sqlConn = dbConn.getConnection();
            statement = sqlConn.createStatement();
        
        String query = "select * from tabelcustomers";
       // String query = "INSERT INTO `tabelCustomers` (`namaCust`, `passwordUser`, `noTelpCust`,`alamatCust`,  `address`, `dob`, `email`, `join_date`, `detail`, `profile_picture`, `verify`) VALUES ('"++"', '"+password+"', '"+name+"', '"+phone+"', '"+address+"', '"+dob+"', '"+email+"', '"+joinDate+"', '', '"+image+"', '"+verify+"')";
        java.sql.ResultSet result = statement.executeQuery(query);

        int index = 1;

        while (result.next()) {
            index++;
        }

        String getId = "CUST" + index;
        return getId;
    }

//              public static void AddCustomer( String namaCust, String passwordUser, String noTelp,String alamat, String noIdUser)
//            throws SQLException {
//       PreparedStatement stmt = null;
//       String query = "INSERT INTO tabelcustomers( namaCust, passwordUser, noTelpCust, alamatCust, noIdUser) VALUES ( "+namaCust+" "+password+" "+noTelp+" "+alamat+" "+noIdUser+" )";
//try {
//    Statement statement ;
//            Koneksi dbConn = null;
//            Connection sqlConn = null;
//            dbConn = new Koneksi();
//            sqlConn = dbConn.getConnection();
//            statement = sqlConn.createStatement();
//            
//            
//}

//
//        try {
//            connection = Koneksi.getConnection();
//            stmt = connection.prepareStatement(sql);
//            stmt.setString(1, id);
//            stmt.setString(2, nama);
//
//            stmt.setString(3, telepon);
//            stmt.setString(4, alamat);
//            stmt.setString(5, passwd);
//
//            stmt.executeUpdate();
//
//        } catch (SQLException ignore) {
//            ignore.printStackTrace();
//        }
//    }
//    
    public String getNoTelpCust() {
        return noTelpCust;
    }

    public void setNoTelpCust(String noTelpCust) {
        this.noTelpCust = noTelpCust;
    }
    
   
}
