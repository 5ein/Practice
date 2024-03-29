package com.multi.muluck.follow;

//RAM에 만드는 저장공간을 만든다.
public class FollowVO {
	// MemberVO가방에 넣은 데이터는 Member테이블에 들어갈 예정
	// 각 컬럼과 일치시켜 줌.
	private String id;
	private String pw;
	private String name;
	private String tel;

	// 하나의 변수당 set/get 하나씩 만들어줌.
	// set/get 전체 한번에 나오게 하기: 우클릭->source->generate getters and setters
	//alt + shift + sr
	
	// 가방에 하나씩 값을 넣어주어야 함. ==> setter
	// id: seti + 컨트롤 + 스페이스바 ==> 자동셍성 pw: setp
	public void setId(String id) {
		this.id = id;
	}

	// 가방에 하나씩 값을 꺼내주어야 함. ==>getter
	// id: geti + 컨트롤 + 스페이스바 ==> 자동셍성 pw: getp
	public String getId() {
		return id;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getPw() {
		return pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	// 가방에 어떤 값들이 들어있는지 string으로 다 찍어볼 수 있다.
	// 우클릭->source->generate toString()
	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", pw=" + pw + ", name=" + name + ", tel=" + tel + "]";
	}

}