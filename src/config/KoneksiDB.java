/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package config;
import java.sql.*;
import javax.swing.JOptionPane;
/**
 *
 * @author Lenovo
 */
public class KoneksiDB {
   static Connection con;
    public static int executeUpdate;
   public static Connection getConnection() {
       
     try {
         con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_spp2","root","");         
     }catch (Exception e) {
         JOptionPane.showMessageDialog(null, "ERROR : Koneksi Gagal!");
         System.exit(0);
     }
       return con;
   }
}
