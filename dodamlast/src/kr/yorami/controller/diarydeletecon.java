package kr.yorami.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.yorami.model.diaryDAO;
import kr.yorami.model.diaryDAOImpl;

public class diarydeletecon implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		String cpath=request.getContextPath();	
		
		int num = Integer.parseInt(request.getParameter("num"));
		
		diaryDAO dao = new diaryDAOImpl();
		
		int cnt = dao.diarydelete(num);
		

		
		
		String nextPage=null;
		if(cnt > 0) {
			nextPage="redirect:"+cpath+"/diarylist.do"; // redirect
	    }else {	         
	         throw new ServletException("error");
	    }
		return nextPage;
		
	
	}

}
