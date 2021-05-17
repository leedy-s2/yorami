package kr.yorami.frontcontroller;

import java.util.HashMap;
import java.util.List;

import kr.yorami.controller.*;

public class HandlerMapping {

	private HashMap<String, Controller> mappings;
	// 제네릭으로  <, > --> 넣을 타입 결정해주는 것.
	// 아무 것도 적지 않으면 범용적인 타입 - object가 들어간다.
	// <key type , value type> --> 받아주는 부모 객체 Controller
	// 메모리에 key와 value를 올려준다.
	
	public HandlerMapping() {
		mappings = new HashMap<String, Controller>();
		// hashmap을 생성하여 메모리에 올려준 것.
		setKeyValue(); // 생성자가 만들어지면 바로 setKeyValue를 호출해서 hashmap에 값을 넣어준다.
		// 생성하면서 바로 실행되게.
	}
	

	public void setKeyValue() {
		// 스케쥴러 관련 handler mapping
		mappings.put("/sclist.do", new calenderController());
		mappings.put("/insertform.do", new insertformController());
		mappings.put("/insert.do", new insertController());
		mappings.put("/login.do", new login_Controller());
		mappings.put("/loginpage.do", new LoginpageController());
		mappings.put("/main.do", new mainController());
		mappings.put("/diarylist.do", new diarylistcon());// 다이어리 리스트를 보여주는
		mappings.put("/diaryinfo.do", new diaryinfocon());// // 다이어리 글 하나를 읽는
		mappings.put("/diarywrite.do", new diarywritecon());// 다이어리 글 작성하는
		mappings.put("/diarydelete.do", new diarydeletecon());// 다이어리 글을 삭제하는
		mappings.put("/diaryupdate.do", new diaryupdatecon());// 다이어리 글 수정 페이지로 넘어가는
		mappings.put("/diaryupdateproc.do", new diaryupdateproccon());// 다이어리 글 수정을 하는
		mappings.put("/diarywritere.do", new diarywriterecon()); //다이어리 글 작성 페이지를 넘겨주는 
		mappings.put("/calender.do", new calenderController()); //다이어리 글 작성 페이지를 넘겨주는 
		mappings.put("/babyinfolist.do", new babyinfolistcontroller());
		mappings.put("/babyinfoinsert.do", new babyinfoinsertcontroller());
		mappings.put("/babyinfoinsertform.do", new babyinfoinsertformcontroller());
		mappings.put("/babyinfodelete.do", new babyinfodeletecontroller());
		mappings.put("/babyinfoupdate.do", new babyinfoupdatecontroller());
		mappings.put("/babyinfolist2.do", new babyinfolistcontroller2());
		//mappings.put("/lactation.do", new lactationController());
		mappings.put("/lactList.do", new lactListController());
		mappings.put("/monitoring.do", new monitoringController());
		mappings.put("/play.do", new playController());
		mappings.put("/lactupdate.do", new lactupdateController());
		mappings.put("/playform.do", new playformController());
		//mappings.put("/lactML.do", new lactMLController());
	
		//mappings.put("/content.do", new MemContentController());
		
		
		// 로그인 handler mapping
		// 회원가입 handler mapping
		//mappings.put("/login.do", new MemLoginController());
		// 더 필요하면 추가적으로 등록만 해주면 됨.
	}
	public Controller getController(String key) {
	return mappings.get(key);
	}
	

}
