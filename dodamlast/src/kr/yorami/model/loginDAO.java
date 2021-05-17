package kr.yorami.model;
import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
public  class loginDAO{
	
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
	
	
	public loginVO memberLogin(loginVO vo) {
		SqlSession session =sqlSessionFactory.openSession();
	       loginVO vo1 =session.selectOne("memberLogin", vo);
	       session.close();
	       return vo1;
	}
	
	public int memberInsert(loginVO vo) {
		SqlSession session =sqlSessionFactory.openSession();
		int cnt = session.insert("memberInsert", vo);
		session.commit(); // 완료
		session.close();
	    return cnt;
	}
	}
	
	
	
	