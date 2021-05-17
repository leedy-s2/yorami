package kr.yorami.model;

import java.util.ArrayList;

public interface diaryDAO {

	public int getAllCount();//전체 게시글 리턴하는 메소드 게시글 카운트
	public ArrayList<diaryVO> getAlldiary(int startrow, int endrow); //전체게시글 보는 메소드
	public void insertdiary(diaryVO vo); //게시글 작성
	public diaryVO getonediary(int num); //하나의 게시글을 읽어드리는 메소드 작성
	public diaryVO getoneupdatediary(int num); //조회수를 증가하지 않는 하나의 게시글을 리턴하는 메소드
	public void updatediary(int num, String subject, String content);//게시글 수정 //int
	public int diarydelete(int num); //게시글 삭제
	
}
