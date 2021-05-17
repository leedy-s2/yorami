package kr.yorami.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import kr.yorami.model.babyinfoDAO;
import kr.yorami.model.babyinfoDAOImpl;
import kr.yorami.model.babyinfoVO;

public class babyinfolistcontroller implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String p_id = request.getParameter("p_id");				
		
		babyinfoDAO dao = new babyinfoDAOImpl();
		List<babyinfoVO> list = dao.babyinfoList(p_id);
		String birthday = list.get(0).getB_birth();
		String bd_cut = birthday.replaceAll("[^\\d]", "");
		int birth = Integer.parseInt(bd_cut);

		
		String pattern = "yyyyMMdd";
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern);

		String date = simpleDateFormat.format(new Date());
		int sysdate = Integer.parseInt(date);
	
		
		request.setAttribute("list", list);
		request.setAttribute("birth", birth);
		request.setAttribute("sysdate", sysdate);
		String nextpage = "babyinfolist";
		return nextpage;
		
	}

	

}
