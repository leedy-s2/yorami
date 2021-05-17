package kr.yorami.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.yorami.model.diaryDAO;
import kr.yorami.model.diaryDAOImpl;

public class diaryupdateproccon implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		request.setCharacterEncoding("utf-8");
		//폼에서 넘어온 데이터를 받아줌
		int num = Integer.parseInt(request.getParameter("num"));
		String subject = request.getParameter("subject");
		String content = request.getParameter("content");
		
		diaryDAO dao = new diaryDAOImpl();
		//수정 창
		dao.updatediary(num, subject, content);
		//수정이 완료되었다면 전체 게시물 보기로 이동
		HttpSession session=request.getSession();
		//수정
		
		
		
		
		//RequestDispatcher dis = request.getRequestDispatcher("diarylist.do");
		//dis.forward(request, response);
		String cpath=request.getContextPath();
		String nextPage=null;
		
			nextPage="redirect:"+cpath+"/diarylist.do"; // redirect
	    
		return nextPage;
		
		
	}

}
