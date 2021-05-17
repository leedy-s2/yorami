package kr.yorami.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.yorami.model.babyinfoDAO;
import kr.yorami.model.babyinfoDAOImpl;

public class babyinfodeletecontroller implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String cpath = request.getContextPath();
		int b_num = Integer.parseInt(request.getParameter("b_num"));
		babyinfoDAO dao = new babyinfoDAOImpl();
		int cnt = dao.babyinfodelete(b_num);
	
		String nextpage = null;

		if (cnt > 0) {
			nextpage = "redirect:" + cpath + "/babyinfolist2.do";
		} else {
			throw new ServletException("error");
		}

		return nextpage;
	}

}
