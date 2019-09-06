
package info;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


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

   

   