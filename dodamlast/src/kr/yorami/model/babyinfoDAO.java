package kr.yorami.model;

import java.util.List;

public interface babyinfoDAO {

	public List<babyinfoVO> babyinfoList(String p_id); //아기 전체정보
	public int babyinsert(babyinfoVO vo);//아기정보 등록
	public int babyinfodelete(int num);
	public int babyinfoupdate(babyinfoVO vo);
}
