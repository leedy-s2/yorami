package kr.yorami.model;

public class babyinfoVO {

	private int b_num;
	private String p_id;
	private String b_name;
	private String b_birth;
	private String b_gender;
	private String b_blood;
	private String b_image;
	
	public babyinfoVO() {}
	
	public babyinfoVO(int b_num, String p_id, String b_name, String b_birth, String b_gender, String b_blood, String b_image) {
		super();
		this.b_num = b_num;
		this.p_id = p_id;
		this.b_name = b_name;
		this.b_birth = b_birth;
		this.b_gender = b_gender;
		this.b_blood = b_blood;
		this.b_image =b_image;
	}

	public int getB_num() {
		return b_num;
	}

	public void setB_num(int b_num) {
		this.b_num = b_num;
	}

	public String getP_id() {
		return p_id;
	}

	public void setP_id(String p_id) {
		this.p_id = p_id;
	}

	public String getB_name() {
		return b_name;
	}

	public void setB_name(String b_name) {
		this.b_name = b_name;
	}

	public String getB_birth() {
		return b_birth;
	}

	public void setB_birth(String b_birth) {
		this.b_birth = b_birth;
	}

	public String getB_gender() {
		return b_gender;
	}

	public void setB_gender(String b_gender) {
		this.b_gender = b_gender;
	}

	public String getB_blood() {
		return b_blood;
	}

	public void setB_blood(String b_blood) {
		this.b_blood = b_blood;
	}
	
	public String getB_image() {
		return b_image;
	}

	public void setB_image(String b_image) {
		this.b_image = b_image;
	}
}
