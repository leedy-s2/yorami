package kr.yorami.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.yorami.model.diaryDAO;
import kr.yorami.model.diaryDAOImpl;
import kr.yorami.model.diaryVO;

public class diarylistcon implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//화면에 보여질 게시글의 개수를 지정
		int pagesize=10;
		//현재 보여지고 있는 페이지의 넘버값을 읽어드림
		String pagenum = request.getParameter("pagenum");
		//null처리
		if(pagenum == null) {
			pagenum="1";
		}
		//전체 게시글의 갯수
		int count=0;
		//jsp페이지 내에서 보여질 넘버링 숫자값을 저장하는 변수
		int number=0;
		
	    //현재 보여지고 있는 페이지 문자를 숫자로 변환
		int currentpage = Integer.parseInt(pagenum);
		
		//전체 게시글의 갯수를 가져와야 하기에 데이터베이스 객체 생성
		diaryDAO dao = new diaryDAOImpl();
		count = dao.getAllCount();
		
		//현제 보여질 페이지 시작 번호를 설정
		int startrow = (currentpage-1)*pagesize+1;
		int endrow = currentpage * pagesize;
		
		//최신글 10개를 기준으로 게시글을 리턴 받아주는 메소드 호출
		ArrayList<diaryVO> list = dao.getAlldiary(startrow, endrow); //board고치기
		//Vector<BoardBean> v = bdao.getAllBoard로 함
		number = count - (currentpage -1) * pagesize;
		
		
		//diaryList.jsp쪽으로 request객체에 담아서 넘겨줌
		request.setAttribute("list", list); //v를 보냄
		request.setAttribute("number", number);
		request.setAttribute("pagesize", pagesize);
		request.setAttribute("count", count);
		request.setAttribute("currentpage", currentpage);
		
		
		
//		RequestDispatcher dis = request.getRequestDispatcher("diarylist.jsp");
//		dis.forward(request, response);
		return "diarylist";
	}

	//http://127.0.0.1:8081/dodamtest/diarylist.do

}
