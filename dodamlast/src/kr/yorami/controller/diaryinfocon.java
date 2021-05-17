package kr.yorami.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.yorami.model.diaryDAO;
import kr.yorami.model.diaryDAOImpl;
import kr.yorami.model.diaryVO;

public class diaryinfocon implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int num = Integer.parseInt(request.getParameter("num"));
		
		//데이터베이스 접근
		diaryDAO dao = new diaryDAOImpl();
		//하나의 게시글에 대한 정보를 리턴
		diaryVO vo = dao.getonediary(num);
		
		request.setAttribute("vo", vo);
		
		//jsp쪽으로 데이터를 넘겨줌
		
		
		//RequestDispatcher dis = request.getRequestDispatcher("diaryinfo.jsp");
		//dis.forward(request, response);
		
		
		
		return "diaryinfo";
	}

}
