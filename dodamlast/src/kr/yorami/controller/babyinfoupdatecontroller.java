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

public class babyinfoupdatecontroller implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String cpath= request.getContextPath();
		String realPath = request.getServletContext().getRealPath("upload/image");
		
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
		int b_num = Integer.parseInt(multpartRequest.getParameter("b_num"));

		String b_name = multpartRequest.getParameter("b_name");
		String b_birth = multpartRequest.getParameter("b_birth");
		String b_gender = multpartRequest.getParameter("b_gender");
		String b_blood = multpartRequest.getParameter("b_blood");
		String b_image = multpartRequest.getFilesystemName("b_image");
		System.out.println(p_id);
				System.out.println(b_name);
				System.out.println(b_image);
		
		babyinfoVO vo = new babyinfoVO();
	      vo.setB_num(b_num);
	      vo.setP_id(p_id);
	      vo.setB_name(b_name);
	      vo.setB_birth(b_birth);
	      vo.setB_gender(b_gender);
	      vo.setB_blood(b_blood);
	      vo.setB_image(b_image);
	      //controller 로 vo를 넘겨서 거기서 sql 돌리고 다시여기서 
	      
	      String nextpage=null;
	      int cnt = dao.babyinfoupdate(vo);
	      if (cnt > 0) {
	    	  if (vo != null) {
					// 로그인 성공 -> 성공된 후의 서비스 페이지로 전환, 예를들면 main페이지(main.jsp)로
					HttpSession session = request.getSession();
					// redirect(.do 같은 서블릿으로 돌릴때) ,forward(주로 jsp로갈때)
					// 로그인을 성공하면 로그인 흔적을 남겨서 메모리(HttpSession)에 저장 그후 main.jsp에서 그걸 꺼내서 확인, 그후 접근허용
					session.setAttribute("p_id", p_id);
					// response.sendRedirect(cpath+"/main.jsp");

					nextpage = "redirect:" + cpath + "/babyinfolist.do";
				}
			
			} else {
				throw new ServletException("error"); // 톰캣으로 예와를 던지기
			}
		
		return nextpage;
		
		
	}

}
