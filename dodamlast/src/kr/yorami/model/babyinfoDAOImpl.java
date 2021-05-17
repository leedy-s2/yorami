package kr.yorami.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class babyinfoDAOImpl implements babyinfoDAO {
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

	@Override
	public List<babyinfoVO> babyinfoList(String p_id) {
		
		String SQL = "select * from baby";  //where p_id = ?;
		List<babyinfoVO> list = new ArrayList<babyinfoVO>();
		getConnect();
		try {
			ps = conn.prepareStatement(SQL);
		//	ps.setString(1, p_id);
			rs = ps.executeQuery();

			while (rs.next()) {
				int b_num = rs.getInt("b_num");
				String id = rs.getString("p_id");
				String b_name = rs.getString("b_name");
				String b_birth2 = rs.getString("b_birth");
				String b_gender = rs.getString("b_gender");
				String b_blood = rs.getString("b_blood");
				String b_image = rs.getString("b_image");
									
				String b_birth = b_birth2.substring(0, 10);
				
				babyinfoVO vo = new babyinfoVO();
				vo.setB_num(b_num);
				vo.setB_name(b_name);
				vo.setP_id(id);
				vo.setB_birth(b_birth);
				vo.setB_gender(b_gender);
				vo.setB_blood(b_blood);
				vo.setB_image(b_image);
				list.add(vo);
			}

		} catch (Exception e) {
				e.printStackTrace();
		}finally {
			dbClose();
		}

		return list;
	}


	@Override
	public int babyinsert(babyinfoVO vo) {
		String SQL ="insert into baby values(num_seq.nextval,?,?,?,?,?,?)";
		getConnect();
		int cnt=-1;		
		try {
			 ps=conn.prepareStatement(SQL); 
			 ps.setString(1, vo.getP_id());
			 ps.setString(2, vo.getB_name());
			 ps.setString(3, vo.getB_birth());
			 ps.setString(4, vo.getB_gender());
			 ps.setString(5, vo.getB_blood());
			 ps.setString(6, vo.getB_image());
			 cnt=ps.executeUpdate();
			 
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return cnt;
	}

	@Override
	public int babyinfodelete(int b_num) {
		String SQL ="delete from baby where b_num= ? ";
		getConnect();
		int cnt=-1;
		try {
			ps=conn.prepareStatement(SQL);
			ps.setInt(1, b_num);
			cnt = ps.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return cnt;
	}

	@Override
	public int babyinfoupdate(babyinfoVO vo) {
		
		String SQL="UPDATE baby SET b_name=? , b_birth=?, b_gender=?, b_blood=? b_image=? where b_num =?";
		getConnect();
		int cnt=-1;
		
		try {
			 
			ps=conn.prepareStatement(SQL);
			ps.setString(1, vo.getB_name());
			ps.setString(2, vo.getB_birth());
			ps.setString(3, vo.getB_gender());
			ps.setString(4,vo.getB_blood());
			ps.setString(5, vo.getB_image());
			ps.setInt(6, vo.getB_num());
			
			cnt=ps.executeUpdate();
		
		
		} catch (Exception e) {
			e.printStackTrace();
		
		}finally {
		
			dbClose();
		
		}
		
		return cnt;
	}

}
