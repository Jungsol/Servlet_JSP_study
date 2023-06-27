package model;

// DB로 정보 전송으로 사용할 클래스이므로 서블릿으로 생성X
public class MemberDTO {
	
	// private(접근제한자) : 해당 파일에서만 사용가능 
	// 객체에 정보를 담아서 사용하려면 getter/setter 메소드가 필요함 & 생성자도 필요함
	//		→ alt + shift + s
	
	// -- 필드 생성시 varchar로 설정했기 때문에 String으로 변수 생성
	private String email;
	private String pw;
	private String tel;
	private String address;
	
	// alt+shift+s → constructor(생성자) & getter/setter
	// 생성자메소드 → Default생성자와 사용자정의생성자 같이 만들기
	
	// -- Default 생성자
	public MemberDTO() {}
	
	// -- 사용자 정의 생성자 : 무조건 받을 값을 정함
	public MemberDTO(String email, String pw, String tel, String address) {
		this.email = email;
		this.pw = pw;
		this.tel = tel;
		this.address = address;
	}
	
	// --getter/setter
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

	//print할 때 객체를 넣으면 주소값이 나옴. 객체를 생성할 때 내부 값을 한번에 확인하고 싶을 때 사용함
	@Override
	public String toString() {
		// format("%,%,%",1,2,3) %위치에 맞게 값이 입력됨
		return String.format("MemberDTO:[email:%s, pw:%s, tel:%s, address:%s]", email,pw,tel,address);
		// 또는 아래 코드로 작성
		// return "MemberDTO:[email: "+email+", pw: "+pw+"tel: "+tel.."
	}
	
	
	
	
	

}
