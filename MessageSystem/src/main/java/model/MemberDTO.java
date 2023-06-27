package model;

//DB로 정보 전송으로 사용할 클래스이므로 서블릿으로 생성X
public class MemberDTO {
	private String email;
	private String pw;
	private String tel;
	private String address;
	
	// alt+shift+s → constructor & getter/setter
	// 생성자메소드 → Default생성자와 사용자정의생성자 같이 만들기
	
	
	//Default 생성자
	public MemberDTO() {}
	
	// 사용자 정의 생성자 : 무조건 받을 값을 정함
	public MemberDTO(String email, String pw, String tel, String address) {
		this.email = email;
		this.pw = pw;
		this.tel = tel;
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Override
	public String toString() {
		// format("%,%,%",1,2,3) %위치에 맞게 값이 입력됨
		return String.format("MemberDTO:[email:%s, pw:%s, tel:%s, address:%s]", email, pw, tel, address);
		// 위 방법이 아니면 return "MemberDTO:[email: "+email+", pw: "+pw+"tel: "+tel+ ", address:" + address + "]"
	}
	
}
