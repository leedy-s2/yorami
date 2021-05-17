package kr.yorami.frontcontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.yorami.controller.Controller;
import kr.yorami.model.*;
@WebServlet("*.do")
public class FrontController extends HttpServlet {	
	protected void service(HttpServletRequest request, 
			              HttpServletResponse response) 
					    throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");		
		//1. 클라이언트의 요청을 확인하는 작업(요청URL=command)
		String reqUrl=request.getRequestURI();
		//System.out.println(reqUrl);		
		String cpath=request.getContextPath();
		//System.out.println(cpath);		
		String command=reqUrl.substring(cpath.length());
		System.out.println(command);
		
		// 2. 해당요청에 따른(command) 분기작업(if~else~)

		//diaryDAO dao=new diaryDAOImpl();
		Controller controller=null;
		String nextPage=null;
		// HandlerMapping ******
		HandlerMapping mappings = new HandlerMapping();
		controller = mappings.getController(command);
		// command에 맞는 controller까지 받아오기
		// nextPage를 보고 분기작업을 진행
		if(controller!=null) {
		   nextPage=controller.requestHandler(request, response);			
		   if(nextPage!=null) {
			 if(nextPage.indexOf("redirect:")!=-1) {
				String[] sp=nextPage.split(":");
				response.sendRedirect(sp[1]); // "redirect:/MVC02/list.do"
			 }else {
			    RequestDispatcher rd=request.getRequestDispatcher("WEB-INF/"+nextPage+".jsp");
			    rd.forward(request, response);			
			 }//
		   }//	
		}
	}
}
