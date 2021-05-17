package kr.yorami.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;



public class playDAO {
   private Connection conn;
   private PreparedStatement ps;
   private ResultSet rs;

   public void getConnect() {
      String url = "jdbc:oracle:thin:@127.0.0.1:1521:XE";
      String user = "hr";
      String password = "hr";
      try {
         Class.forName("oracle.jdbc.driver.OracleDriver");
         conn = DriverManager.getConnection(url, user, password);
      } catch (Exception e) {

         e.printStackTrace();
      }
   }

   public void dbClose() {
      try {
         if (rs != null)
            rs.close();
         if (ps != null)
            ps.close();
         if (conn != null)
            conn.close();
      } catch (Exception e) {
         e.printStackTrace();
      }
   }


   public int playupdate(int state) {
      String SQL = "UPDATE play SET state = ?";
      getConnect();
      int cnt = -1;

      try {
         ps = conn.prepareStatement(SQL);
         ps.setInt(1, state);
         cnt = ps.executeUpdate();

      } catch (Exception e) {
         e.printStackTrace();

      } finally {
         dbClose();
      }
      return cnt;
   }
   
   
   public playVO playselect() {
	      String SQL = "select state from play";
   
	      int state = 0;
	      getConnect();
	      playVO vo =null;
			try {
		        ps=conn.prepareStatement(SQL);
		        rs=ps.executeQuery();
		        if(rs.next()) {
		        	state=rs.getInt("state");					  
		        	vo = new playVO(state);
		        }
		      } catch (Exception e) {
		         e.printStackTrace();
		      } finally {
		         dbClose();
		    }
			return vo;
		}//
	      
}