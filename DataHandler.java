/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package pti;

import java.sql.Connection;
import oracle.jdbc.pool.OracleDataSource;

/**
 *
 * @author Feliks Yudha
 */
public class DataHandler {
    public static Connection getConnection() throws Exception {
        String jdbcUrl = "jdbc:oracle:thin:@localhost:1521:xe";
        String userid = "hr";
        String password = "hr";
        OracleDataSource ds;
        ds = new OracleDataSource();
        ds.setURL(jdbcUrl);
        Connection conn = ds.getConnection(userid, password);
        return conn;
    }
}
