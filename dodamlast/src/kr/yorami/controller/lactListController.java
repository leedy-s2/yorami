package kr.yorami.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.yorami.model.babyinfoVO;
import kr.yorami.model.lactationDAO;
import kr.yorami.model.lactationVO;

public class lactListController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		lactationDAO dao = new lactationDAO();
		
		String pattern = "yyyy-MM-dd";
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern);

		String l_time = simpleDateFormat.format(new Date());
		List<lactationVO> list = dao.lactationList(l_time);
		request.setAttribute("list", list);

		
		return "lactationlist";
	}

}
