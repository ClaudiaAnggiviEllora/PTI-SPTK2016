/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controler;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.tabeldaftarpekerjaan;
import static org.apache.tomcat.jni.User.username;

/**
 *
 * @author Feliks Yudha
 */
@WebServlet(name = "servletMendaftarPekerjaan", urlPatterns = {"/servletMendaftarPekerjaan"})
public class servletMendaftarPekerjaan extends HttpServlet {
   @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String kodeIklan = request.getParameter("kodeIklan");
     

        tabeldaftarpekerjaan loker = new tabeldaftarpekerjaan();

        loker.setUserneme(username);
        loker.setKodeIklan(kodeIklan);
       
    }
    
         @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            Statement statement;
            koneksi dbConn = null;
            Connection sqlConn = null;
            dbConn = new koneksi();
            sqlConn = dbConn.getConnection();
            statement = sqlConn.createStatement();
            String username = request.getParameter("username");
            String kodeIklan = request.getParameter("kodeIklan");
            String query = "INSERT INTO tabeldaftarpekerja VALUES('"+username+"','"+kodeIklan+"')";
            statement.executeUpdate(query);
            statement.close();
            sqlConn.close();
            System.out.println("Pendaftaran berhasil");
            RequestDispatcher rd = request.getRequestDispatcher("suksesDaftarPekerjaan.jsp");
            rd.forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(servletLoker.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}