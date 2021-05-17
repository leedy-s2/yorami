package kr.yorami.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class diaryDAOImpl implements diaryDAO{
	
	private Connection conn;
	   private PreparedStatement ps;
	   private ResultSet rs;
	   //CRUD
	   public void getConnect() {
		   String url="jdbc:oracle:thin:@127.0.0.1:1521:XE";
		   String user="hr";
		   String password="hr";	   
		   try {		   
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn=DriverManager.getConnection(url, user, password);
		   } catch (Exception e) {		
			e.printStackTrace();
		   }
	   }//
	   public void dbClose() {
		   try {
			  if(rs!=null) rs.close();
			  if(ps!=null) ps.close();
			  if(conn!=null) conn.close();
		   }catch(Exception e) {
			   e.printStackTrace();
		   }
	   }
	
	//전체 게시글의 갯수를 리턴하는 메소드
	public int getAllCount() {
		int count=0;
		getConnect();
		String sql = "select count(*) from diary";
		//sql문 board고치기
		
		try {
			ps=conn.prepareStatement(sql);
			rs=ps.executeQuery();
			if(rs.next()) {
				count =rs.getInt(1);
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		
		return count;
	}
	
	public ArrayList<diaryVO> getAlldiary(int startrow, int endrow){
		
		ArrayList<diaryVO> list = new ArrayList<diaryVO>();
		
		getConnect();
		String sql="select * from (select A.* ,Rownum Rnum from (select *from diary order by ref desc ,re_step asc)A)"
				+ "where Rnum >= ? and Rnum <= ?";
		// sql문 board고치기
		try {
			ps=conn.prepareStatement(sql);
			//?값을 대입
			ps.setInt(1, startrow);
			ps.setInt(2, endrow);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				diaryVO vo = new diaryVO();
//				//BoardBean bean = new Boardbean();로 만듬
				 vo.setNum(rs.getInt(1));
				 vo.setP_id(rs.getString(2));
				 vo.setWrite(rs.getString(3));
				 vo.setSubject(rs.getString(4));
				 vo.setReg_date(rs.getDate(5).toString()); //이거변환
				 vo.setRef(rs.getInt(6));
				 vo.setRe_step(rs.getInt(7));
				 vo.setRe_level(rs.getInt(8));
				 vo.setReadcount(rs.getInt(9));
				 vo.setContent(rs.getString(10));
//				 bean대신 vo를 사용
//				 패키징한 데이터를 vo에 저장
				
				 list.add(vo);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return list; //v를 넘김
		
		
	}
	
	//하나의 게시글을 저장하는 메소드 호출
	
	public void insertdiary(diaryVO vo) {
		
		getConnect();
		int ref = 0;// 글 그룹을 의미 = 쿼리를 실행시켜 가장큰 ref 값을 가져온후 +1을 더해주면 된다 
		int re_step = 1;//새글이기에 = 부모 글이기에
		int re_level = 1;
		try {
			//가장큰 ref값을 읽어오는 쿼리 준비 
			String refSQL = "SELECT max(ref) FROM diary"; //board수정
			//쿼리실행 객체 
			ps = conn.prepareStatement(refSQL);
			//쿼리를 실행후 결과를 리턴
			 rs = ps.executeQuery();
			 if(rs.next()){//결과 값이 있다면
					ref = rs.getInt(1)+1;//최대 값에 +1을 더해서 글 그룹을 설정	
				}
			 //데이터를 삽입하는 쿼리
			 String sql="insert into diary values (diary_seq.nextval,?,?,?,sysdate,?,?,?,0,?)";
			 
			 ps=conn.prepareStatement(sql);
			 
			 ps.setString(1, vo.getP_id());
			 ps.setString(2, vo.getWrite());
			 ps.setString(3, vo.getSubject());
			 ps.setInt(4, ref);
			 ps.setInt(5, re_step);
			 ps.setInt(6, re_level);
			 ps.setString(7, vo.getContent());
			 
			 ps.executeUpdate();
			 
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		
		
		
	}
	@Override
	public diaryVO getonediary(int num) {
		
		getConnect();
		diaryVO vo = null;
		
		try {
			String countsql="update diary set readcount = readcount+1 where num=?";
			ps=conn.prepareStatement(countsql);
			ps.setInt(1, num);
			//쿼리 실행
			ps.executeUpdate();
			
			//하나의 게시글에 대한 정보를 리턴해주는 쿼리를 작성
			String sql = "select * from diary where num=?";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, num);
			//쿼리 실행 후 결과를 리턴
			rs=ps.executeQuery();
			if(rs.next()) {
				vo = new diaryVO();
				vo.setNum(rs.getInt(1));
				 vo.setP_id(rs.getString(2));
				 vo.setWrite(rs.getString(3));
				 vo.setSubject(rs.getString(4));
				 vo.setReg_date(rs.getDate(5).toString()); //이거변환
				 vo.setRef(rs.getInt(6));
				 vo.setRe_step(rs.getInt(7));
				 vo.setRe_level(rs.getInt(8));
				 vo.setReadcount(rs.getInt(9));
				 vo.setContent(rs.getString(10));
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		
		
		
		
		return vo;
	}
	@Override
	public diaryVO getoneupdatediary(int num) {
		getConnect();
		diaryVO vo = null;
		
		try {
			//하나의 게시글에 대한 정보를 리턴해주는 쿼리를 작성
			String sql = "select * from diary where num=?";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, num);
			//쿼리 실행 후 결과를 리턴
			rs=ps.executeQuery();
			if(rs.next()) {
				vo = new diaryVO();
				vo.setNum(rs.getInt(1));
				 vo.setP_id(rs.getString(2));
				 vo.setWrite(rs.getString(3));
				 vo.setSubject(rs.getString(4));
				 vo.setReg_date(rs.getDate(5).toString()); //이거변환
				 vo.setRef(rs.getInt(6));
				 vo.setRe_step(rs.getInt(7));
				 vo.setRe_level(rs.getInt(8));
				 vo.setReadcount(rs.getInt(9));
				 vo.setContent(rs.getString(10));
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		
		
		
		
		return vo;
	}
	@Override
	//수정
	public void updatediary(int num, String subject, String content) {
		
		getConnect();
		
		try {
			String sql = "update diary set subject=?, content=? where num=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, subject);
			ps.setString(2, content);
			ps.setInt(3, num);
			
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		
		
		
	}
	@Override
	public int diarydelete(int num) {
		String SQL="delete from diary where num = ?";
		getConnect();
		int cnt = -1;
		try {
			ps=conn.prepareStatement(SQL);
			ps.setInt(1, num);
			cnt=ps.executeUpdate();
	        
	    } catch (Exception e) {
	       e.printStackTrace();
	    } finally {
	       dbClose();
	    }
		return cnt;
	
	}

}
