package com.multi.grow.member;

public class MemberVO {
	
	private int member_no;
	private String member_id;
	private String member_pw;
	private String member_email;
	private String member_name;
	private String member_tel;
	private String member_nickname;
	private String member_img;
	private String member_gender;
	private String member_ageRange;
	
	public int getMember_no() {
		return member_no;
	}
	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_pw() {
		return member_pw;
	}
	public void setMember_pw(String member_pw) {
		this.member_pw = member_pw;
	}
	public String getMember_email() {
		return member_email;
	}
	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getMember_tel() {
		return member_tel;
	}
	public void setMember_tel(String member_tel) {
		this.member_tel = member_tel;
	}
	public String getMember_nickname() {
		return member_nickname;
	}
	public void setMember_nickname(String member_nickname) {
		this.member_nickname = member_nickname;
	}
	public String getMember_img() {
		return member_img;
	}
	public void setMember_img(String member_img) {
		this.member_img = member_img;
	}
	public String getMember_gender() {
		return member_gender;
	}
	public void setMember_gender(String member_gender) {
		this.member_gender = member_gender;
	}
	public String getMember_ageRange() {
		return member_ageRange;
	}
	public void setMember_ageRange(String member_ageRange) {
		this.member_ageRange = member_ageRange;
	}
	
	@Override
	public String toString() {
		return "MemberVO [member_no=" + member_no + ", member_id=" + member_id + ", member_pw=" + member_pw
				+ ", member_email=" + member_email + ", member_name=" + member_name + ", member_tel=" + member_tel
				+ ", member_nickname=" + member_nickname + ", member_img=" + member_img + ", member_gender="
				+ member_gender + ", member_ageRange=" + member_ageRange + "]";
	}

}