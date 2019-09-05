/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package info;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author N.AMIRTHA SANJEEVINI
 */
public class ease {
    Connection con;
    
    public Connection connect() throws ClassNotFoundException{
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/calm","root","");
        }
        catch(SQLException e){
            System.out.print(e);
        } 
        return con;
    }

   
}

   

   