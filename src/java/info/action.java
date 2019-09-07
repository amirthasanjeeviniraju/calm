
package info;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class action {
    public ResultSet act(String qry) throws ClassNotFoundException, SQLException{
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        ease db=new ease();
     con=db.connect();
     String sql=qry;
     pst=con.prepareStatement(sql);
     rs=pst.executeQuery();
        return rs;
        
    }
    
    public String fun(String qry) throws SQLException, ClassNotFoundException{
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        String ans = null;
        ease db=new ease();
     con=db.connect();
     String sql=qry;
     pst=con.prepareStatement(sql);
     rs=pst.executeQuery();
     if(rs.next()){
         ans=rs.getString("answer");
     }
     return ans;
    }
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
