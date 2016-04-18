/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelAndControl;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author laura
 */
public class ServletCustomer extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       String namaCust = request.getParameter("namaCust");
        String password= request.getParameter("passwordUser");
        String noTelp = request.getParameter("noTelpCust");
        String alamat = request.getParameter("alamatCust");
       // String noIdUser = request.getParameter("noIdUser");
        
        TabelCustomer cust = new TabelCustomer();
    
       cust.setNamaCust(namaCust);
       cust.setPasswordUser(password);
       cust.setNoTelpCust(noTelp);
       cust.setAlamatCust(alamat);
     //  cust.setNoIdUser(noIdUser);
     
//       try{
//           String noIdUser=TabelCustomer.createId();
//           
//       }
    }
//    Koneksi a = new Koneksi();
//        HttpSession session = request.getSession();
//
//        String ktp = request.getParameter("ktp");
//        String nama = request.getParameter("nama");
//        String username = request.getParameter("username");
//        String passwd = request.getParameter("password");
//        String no = request.getParameter("hp");
//        String alamat = request.getParameter("alam");
////        try {
//            String id = TabelCustomer.createId();
//            TabelCustomer.AddCustomers(ktp, nama, username, passwd,no, alamat, id);          
//            String query = "select * from member where id_member='" + id+ "'";
//            java.sql.Statement statement = a.getConnection().createStatement();
//            java.sql.ResultSet result = statement.executeQuery(query);
//            String numID = null, pwd = null;
//
//            if (result.next()) {
//                numID = result.getString("id_member");
//            }
//            session.setAttribute("ID", numID);
//            response.sendRedirect("SignUp_proses.jsp");
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }
    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String namaCust = request.getParameter("namaCust");
        String password= request.getParameter("passwordUser");
        String noTelp = request.getParameter("noTelpCust");
        String alamat = request.getParameter("alamatCust");
        String noIdUser = request.getParameter("noIdUser");
        
        TabelCustomer cust = new TabelCustomer();
    
       cust.setNamaCust(namaCust);
       cust.setPasswordUser(password);
       cust.setNoTelpCust(noTelp);
       cust.setAlamatCust(alamat);
       cust.setNoIdUser(noIdUser);
       
        
        try {
      
            Statement statement ;
            Koneksi dbConn = null;
            Connection sqlConn = null;
            dbConn = new Koneksi();
            sqlConn = dbConn.getConnection();
            statement = sqlConn.createStatement();
            
         //   String query = "INSERT INTO `tabelCustomers` (`noIdUser`,`namaCust`, `passwordUser`, `noTelpCust`,`alamatCust`) VALUES ('"+noIdUser+"','"+namaCust+"', '"+password+"', '"+noTelp+"', '"+alamat+"')";
           
           String query= "INSERT INTO `tabelcustomers`(`namaCust`, `passwordUser`, `noTelpCust`, `alamatCust`, `noIdUser`) VALUES (`"+namaCust+"`, `"+password+"`, `"+noTelp+"`, `"+alamat+"`, `"+noIdUser+"`)";
            statement.executeUpdate(query);
           
            statement.close();
            sqlConn.close();
            RequestDispatcher rd = request.getRequestDispatcher("FormLoginUser.jsp");
        rd.forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ServletCustomer.class.getName()).log(Level.SEVERE, null, ex);
        }
 
        
        
  
    }

       


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
    

  
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        processRequest(request, response);
//    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
//   public static void main(String[] args) throws SQLException {
//      TabelCheckIn a = new TabelCheckIn(KoneksiDatabase.getConnection());
//       ResultSet result=a.TampilDaftarCustomer(rute);
//        while(result.next()){
//            System.out.println(result.getString("no_tiket"));
//            System.out.println(result.getString("nama_customer"));
}
