package ro.webapp.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DbSql implements Constante {
    public static Connection conn;
    public static Statement stmt;
    public static void main(String[] arg) throws SQLException{
        try {
            Class.forName(Constante.DRIVER);
            conn = DriverManager.getConnection(Constante.URL, USER, PASSWORD);
            stmt  = conn.createStatement();
            
            String sql = "select distinct CITY from APP.CUSTOMER order by 1"; 
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()){
                System.out.println(rs.getString("CITY"));
            }                    
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DbSql.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(DbSql.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally {
            if (conn!=null){
                conn.close();
            }
        }
    }
}
