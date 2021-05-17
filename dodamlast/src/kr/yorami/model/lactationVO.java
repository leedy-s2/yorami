package kr.yorami.model;

public class lactationVO {

	int b_num;
	String l_time;
	int l_cnt;
	int l_ml;
	int sum;
	
	
	public lactationVO() {
	}
	
	
	public lactationVO(int sum) {
		this.sum = sum;
	}



	//public lactationVO(int l_ml) {
	//	this.l_ml = l_ml;
	//}



	public lactationVO(int b_num, String l_time, int l_cnt, int l_ml) {
		super();
		this.b_num = b_num;
		this.l_time = l_time;
		this.l_cnt = l_cnt;
		this.l_ml = l_ml;
	}
	public lactationVO(int b_num, int l_ml) {
		super();
		this.b_num = b_num;
		this.l_ml = l_ml;
	}
	public int getB_num() {
		return b_num;
	}
	public void setB_num(int b_num) {
		this.b_num = b_num;
	}
	public String getL_time() {
		return l_time;
	}
	public void setL_time(String l_time) {
		this.l_time = l_time;
	}
	public int getL_cnt() {
		return l_cnt;
	}
	public void setL_cnt(int l_cnt) {
		this.l_cnt = l_cnt;
	}
	public int getL_ml() {
		return l_ml;
	}
	public void setL_ml(int l_ml) {
		this.l_ml = l_ml;
	}
}
