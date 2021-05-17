package kr.yorami.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.yorami.model.diaryDAO;
import kr.yorami.model.diaryDAOImpl;
import kr.yorami.model.diaryVO;

public class diaryupdatecon implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		//해당번호
				int num = Integer.parseInt(request.getParameter("num"));
				//데이터베이스에서 하나의 게시글에 대한 정보를 리턴 메소드 호출
				
				
			  diaryDAO dao = new diaryDAOImpl();
			  diaryVO vo = dao.getoneupdatediary(num);
			  
			  request.setAttribute("vo", vo);
			  
			 // RequestDispatcher dis = request.getRequestDispatcher("diaryupdateform.jsp");
			  //dis.forward(request, response);
		
		
		
		
				return "diaryupdateform";
	}

}
