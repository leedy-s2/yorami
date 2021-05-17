package kr.yorami.model;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.io.*;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import kr.yorami.model.*;

public class lactationDAO {
			
		private static SqlSessionFactory sqlSessionFactory;

		static {
		   String resource = "kr/yorami/mybatis/config.xml";
		   InputStream inputStream;
		   try {
		     inputStream = Resources.getResourceAsStream(resource);
		    sqlSessionFactory= new SqlSessionFactoryBuilder().build(inputStream);
		}catch (IOException e) {
			 e.printStackTrace();
		}
		}			
	
		
		public int lactationInsert(int b_num) {
			SqlSession session =sqlSessionFactory.openSession();
			int cnt = session.insert("lactationInsert", b_num);
			session.commit(); // 완료
			session.close();
		    return cnt;
		}
		


public List<lactationVO> lactationList(String l_time) {
	SqlSession session = sqlSessionFactory.openSession();
	// 세션을 열어준다. sqlSession을 넘겨준다.
	// SQL문장 (select ~) + MemberVO + ArrayList(X)
	List<lactationVO> list = session.selectList("lactationList", l_time);
	// 앞에 네임스페이스를 콕 찍어줄 수 있다.
	//맵핑된 아이디 이름을 묶어다준다. 일반적으로 아이디 이름은 메소드 이름으로 지어준다.
	// selectlist에게 멤버 브이오와 sql문장만 넘겨주면 묶담의 역할을 대신 해준다.
	// select로 한 개만 가져올 경우 selectOne		
	session.close();
	// 반납해주지 않으면 모든 함수에서 쓰고 있어서 사용이 어려울 수 있으니까.
	// 트라이캐치 안 해줘도 노 상관!
	// 연결을 끊는 게 아니라 반납. 재활용할 수 있게.
	return list;
}


public int lactationUpdate(lactationVO vo) {
	SqlSession session = sqlSessionFactory.openSession();
	int cnt = session.update("lactationUpdate", vo);
	session.commit(); // 완료
	session.close(); // 반납	
	return cnt;
}

public lactationVO lactationgraph(int l_time) {
	SqlSession session = sqlSessionFactory.openSession();
	lactationVO vo  = session.selectOne("lactationgraph", l_time);	
	session.close();
	return vo;
	
	
}

public List<lactationVO> selectLac() {

	SqlSession session = sqlSessionFactory.openSession();
	List<lactationVO> list = session.selectList("laclist");
	session.close();
	return list;
}



}




