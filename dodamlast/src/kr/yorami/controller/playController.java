package kr.yorami.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.yorami.model.playDAO;

public class playController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	    String cpath = request.getContextPath();
	      
	      int state = Integer.parseInt(request.getParameter("state"));

	      System.out.println(state);
	      playDAO dao = new playDAO();

	      int cnt = dao.playupdate(state);
	      System.out.println(cnt);
	      String nextpage = null;
	      if (cnt > 0) {

	         // 로그인 성공 -> 성공된 후의 서비스 페이지로 전환, 예를들면 main페이지(main.jsp)로
	         // HttpSession session = request.getSession();
	         // redirect(.do 같은 서블릿으로 돌릴때) ,forward(주로 jsp로갈때)
	         // 로그인을 성공하면 로그인 흔적을 남겨서 메모리(HttpSession)에 저장 그후 main.jsp에서 그걸 꺼내서 확인, 그후 접근허용
	         // session.setAttribute("p_id", p_id);
	         // response.sendRedirect(cpath+"/main.jsp");
	      }

	      	      return "redirect:" + cpath + "/playform.do";

	   }
	}