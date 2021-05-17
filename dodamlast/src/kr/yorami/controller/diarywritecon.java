package kr.yorami.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.yorami.model.diaryDAO;
import kr.yorami.model.diaryDAOImpl;
import kr.yorami.model.diaryVO;

public class diarywritecon implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
request.setCharacterEncoding("utf-8");
		
		diaryVO vo = new diaryVO();
		
		vo.setP_id(request.getParameter("p_id"));
		vo.setWrite(request.getParameter("write"));
		vo.setSubject(request.getParameter("subject"));
		vo.setContent(request.getParameter("content"));
		
		diaryDAO dao = new diaryDAOImpl();
		dao.insertdiary(vo); //diary로 바꿔줘야함
		
		
		//RequestDispatcher dis = request.getRequestDispatcher("diarylist.do");
		//dis.forward(request, response);
	      String cpath=request.getContextPath();
	     
		return "redirect:"+cpath+"/diarylist.do";
	}

}
