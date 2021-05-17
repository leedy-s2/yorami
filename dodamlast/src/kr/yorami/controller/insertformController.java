package kr.yorami.controller;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

public class insertformController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//String nextPage ="WEB-INF/member/insertform.jsp";
		return "insertform"; //forword
	}

}
