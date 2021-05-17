package kr.yorami.model;
// 잘 설계된 VO
public class loginVO {
	
	
	 private String p_id;
	 private String p_pw;
	 private String p_name;
	 private String p_phone;
	 private String p_num;
	 
	
	public loginVO() {
		super();
	}
	
	
	public loginVO(String p_id, String p_pw, String p_name, String p_phone, String p_num) {
		super();
		this.p_id = p_id;
		this.p_pw = p_pw;
		this.p_name = p_name;
		this.p_phone = p_phone;
		this.p_num = p_num;
	}

	public String getP_id() {
		return p_id;
	}
	public void setP_id(String p_id) {
		this.p_id = p_id;
	}
	public String getP_pw() {
		return p_pw;
	}
	public void setP_pw(String p_pw) {
		this.p_pw = p_pw;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public String getP_phone() {
		return p_phone;
	}
	public void setP_phone(String p_phone) {
		this.p_phone = p_phone;
	}
	public String getP_num() {
		return p_num;
	}
	public void setP_num(String p_num) {
		this.p_num = p_num;
	}
	
	
	@Override
	public String toString() {
		return "MemberVO [p_id=" + p_id + ", p_pw=" + p_pw + ", p_name=" + p_name + ", p_phone=" + p_phone + ", p_num="
				+ p_num + "]";
	}
} 
