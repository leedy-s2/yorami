package kr.yorami.controller;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import kr.yorami.model.*;


public class insertController implements Controller{
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String cpath = request.getContextPath();
		loginDAO dao = new loginDAO();
		String p_id=request.getParameter("p_id");
		String p_pw=request.getParameter("p_pw");
		String p_name=request.getParameter("p_name");
		String p_phone=request.getParameter("p_phone");
		String p_num=request.getParameter("p_num");
		loginVO vo=new loginVO(p_id, p_pw, p_name, p_phone, p_num);
		int cnt=dao.memberInsert(vo);
		String nextPage = null;
		if(cnt > 0) {
			nextPage = "yorami";
		}else {
			throw new ServletException("ERROR");
		}
		return nextPage;
	}

}