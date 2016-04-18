/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelAndControl;

//import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Connection;

/**
 *
 * @author laura
 */
public class Koneksi {

    /**
     *
     * @param args
     */
//    public static void main(String[] args) throws ClassNotFoundException {
//        Connection conn=null;
//    
//     String driver = "com.mysql.jdbc.Driver";
//     String url = "jdbc:mysql://localhost:3306/sptk";
//     String user = "root";
//    String password = "";
//    
//    try{
//    Class.forName(driver);
//    conn= DriverManager.getConnection(url, user, password);
//            System.out.println("koneksi berhasil"); }
//            catch (SQLException e){
//                System.out.println("SQLException:"+e.getMessage());
//                System.out.println("SQLState: "+e.getSQLState());
//                System.out.println("VendorError: "+e.getErrorCode());
//}
//    
//    
//    
//    
//}
    
   private static final String driver = "com.mysql.jdbc.Driver";
    private static final String database = "jdbc:mysql://localhost:3306/sptk";
    private static final String user = "root";
    private static final String password = "";
    
    private Connection connection;        
    private String pesanKesalahan;

    public String getPesanKesalahan() {
        return pesanKesalahan;
    }
    
    public Connection getConnection(){
        connection = null;        
        pesanKesalahan = "";
        
        try{ 
            Class.forName(driver); 
            
        } catch (ClassNotFoundException ex){ 
            pesanKesalahan = "JDBC Driver tidak ditemukan atau rusak\n"+ex;
        } 
        
        if (pesanKesalahan.equals("")){ 
            try { 
                connection = (Connection) DriverManager.getConnection(database+"?user="+user+"&password="+password+""); 
            } catch (SQLException ex) { 
                pesanKesalahan = "Koneksi ke "+database+" gagal\n"+ex;
            }
        }
        
        return connection;
}
     public static void main(String[] args) throws ClassNotFoundException {
        // TODO code application logic here
        Connection conn = null;
        String driver = "com.mysql.jdbc.Driver";
        String database = "jdbc:mysql://localhost:3306/sptk";
        String user = "root";
        String pass = "";
        try {
            Class.forName(driver);
            conn = (Connection) DriverManager.getConnection(database, user, pass);
            System.out.println("Koneksi Berhasil");
        } catch (SQLException e) {
            System.out.println("SQLException: " + e.getMessage());
            System.out.println("SQLState: " + e.getSQLState());
            System.out.println("VendorError: " + e.getErrorCode());
        }
    }
}
