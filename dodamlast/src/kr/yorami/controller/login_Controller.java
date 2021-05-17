package kr.yorami.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.yorami.model.loginDAO;
import kr.yorami.model.loginVO;

public class login_Controller implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String p_id=request.getParameter("p_id");
		String p_pw=request.getParameter("p_pw");
		loginVO vo=new loginVO();
		vo.setP_id(p_id);
		vo.setP_pw(p_pw);
		loginDAO dao = new loginDAO();
		loginVO vo1=dao.memberLogin(vo);
		
		if(vo1!=null) {
	         //로그인 성공 후 > 로그인이 성공된 후에 서비스되는 페이지로 전환(main.jsp)
			HttpSession session=request.getSession();
			session.setAttribute("vo1", vo1);
			// redirect , forward
	         return "yorami";
	         
	      }else {
	         //로그인 실패 > 다시 URL 로그인 페이지로
	        return "login";
	      }
		
	}

}

