package kr.yorami.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.yorami.model.babyinfoDAO;
import kr.yorami.model.babyinfoDAOImpl;
import kr.yorami.model.babyinfoVO;

public class babyinfoinsertcontroller implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String cpath = request.getContextPath();
		// 파일이 저장되는 실제 경로
		String realPath = request.getServletContext().getRealPath("upload/image");
		
		// 위 경로의 디렉토리가 존재하지 않으면 새로 생성
		File dir = new File(realPath);
		if (!dir.exists()) {
			dir.mkdirs();
		}
				
		// 파일크기 제한 설정 (15mb)
		int sizeLimit = 15 * 1024 * 1024;

		// MultipartRequest 객체를 생성하면 파일 업로드 수행
		MultipartRequest multpartRequest = new MultipartRequest(request, realPath, sizeLimit, "utf-8",
				new DefaultFileRenamePolicy());
		//////  사진 업로드 끝
		
		
		
		babyinfoDAO dao = new babyinfoDAOImpl();

		String p_id = multpartRequest.getParameter("p_id");
		String b_name = multpartRequest.getParameter("b_name");
		String b_birth = multpartRequest.getParameter("b_birth");
		String b_gender = multpartRequest.getParameter("b_gender");
		String b_blood = multpartRequest.getParameter("b_blood");
		String b_image = multpartRequest.getFilesystemName("b_image");
		//System.out.println(p_id);
		//System.out.println(b_name);
		//System.out.println(b_image);
		
		babyinfoVO vo = new babyinfoVO();
		vo.setP_id(p_id);
		vo.setB_name(b_name);
		vo.setB_birth(b_birth);
		vo.setB_gender(b_gender);
		vo.setB_blood(b_blood);
		vo.setB_image(b_image);
		//System.out.println(p_id);
		
		int cnt = dao.babyinsert(vo);
		System.out.println(cnt);
		String nextpage = null;

		if (cnt > 0) {
			if (vo != null) {
				// 로그인 성공 -> 성공된 후의 서비스 페이지로 전환, 예를들면 main페이지(main.jsp)로
				//HttpSession session = request.getSession();				// redirect(.do 같은 서블릿으로 돌릴때) ,forward(주로 jsp로갈때)
				// 로그인을 성공하면 로그인 흔적을 남겨서 메모리(HttpSession)에 저장 그후 main.jsp에서 그걸 꺼내서 확인, 그후 접근허용
				//session.setAttribute("p_id", p_id);
				// response.sendRedirect(cpath+"/main.jsp");

				nextpage = "redirect:" + cpath + "/babyinfolist.do";
			}
		} else {
			throw new ServletException("error");
		}

		// MemberVO vo1 = dao.memberLogin(vo);

		// System.out.println(vo1); // vo1(.toString)이 생략되어있슴 - MemberVO 에 toString 메소드를
		// 미리 만들어놓음
		// 만들지 않았어도 가능,, 부모클래스에서 상속을 받았움 but 부모의 toString은 번지값만 알려줌
		// 따라서 MemberVO 에 toString 메소드를 재정의(override)해서 사용

		return nextpage;
	}

}
