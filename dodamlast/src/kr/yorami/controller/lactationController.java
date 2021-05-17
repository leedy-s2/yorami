package kr.yorami.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import kr.yorami.model.lactationDAO;
import kr.yorami.model.playDAO;
import kr.yorami.model.playVO;

@WebServlet("/lact.do")
public class lactationController extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
		int b_num = Integer.parseInt(request.getParameter("b_num"));
		System.out.println(b_num);
		lactationDAO dao1 = new lactationDAO();
		dao1.lactationInsert(b_num);
		
		request.setAttribute("b_num", b_num);
		String cpath = request.getContextPath();

		response.sendRedirect(cpath+"/lactList.do");
	}
}
