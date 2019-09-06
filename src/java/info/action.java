
package info;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

public class action {
 public int insert(String qry) throws SQLException, ClassNotFoundException{
     Connection con;
     Statement st;
     ease db=new ease();
     con=db.connect();
     String sql=qry;
     st=con.createStatement();
     int i=st.executeUpdate(sql);
     return i;
 }
    
}
