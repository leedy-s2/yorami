package kr.yorami.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.yorami.model.lactationDAO;
import kr.yorami.model.lactationVO;

public class lactupdateController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String cpath = request.getContextPath();
		
		String a = request.getParameter("lml");
		String b = request.getParameter("cnt");
		System.out.println(a);
		System.out.println(b);
	      int l_ml = Integer.parseInt(a);
	      int l_cnt = Integer.parseInt(b);
	      //System.out.println(l_cnt);
	      lactationVO vo = new lactationVO();
	      vo.setL_cnt(l_cnt);
	      vo.setL_ml(l_ml);	     
	      lactationDAO dao = new lactationDAO();
	      dao.lactationUpdate(vo);
	      
	      
	      return "redirect:" + cpath + "/lactList.do";
	   }

	}