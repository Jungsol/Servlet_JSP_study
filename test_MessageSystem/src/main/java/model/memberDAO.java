package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

//DB연결하기 위한 정보→ 여기 정의한 내용들을 각각의 controller에서 불러서 사용함
public class MemberDAO {

	// 필드 변수 생성 시 객체생성에 이용할 거라서 null 입력안해도 자동으로 default값 입력됨.
	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;
	private int cnt;
	
	// === DB 연동기능 생성
	public void connection() {
		//String DB_URL = "jdbc:mariadb://localhost:3306/jsp_study";
		String driver = "org.mariadb.jdbc.Driver";
		String DB_IP ="localhost";
		String DB_PORT = "3306";
		String DB_NAME = "JSP_study";
		String DB_URL = "jdbc:mariadb://" + DB_IP + ":" + DB_PORT + "/" + DB_NAME;
		String DB_USER = "root";
		String DB_PW = "1234";
		
		try {
			// -- 1. 오라클 드라이버 동적로딩(=실행할 때 로딩 ↔정적로딩:무조건 가지고있음)
			Class.forName(driver); // 해당 단계에서 에러날 경우 jdbc파일 제대로 추가되어있는지 확인하기
			// -- 2. 데이터베이스 연동
			// 프로젝트 진행시 localhost는 바뀔 수 있음. DB저장된 IP주소를 작성하면 됨
			conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PW);
			if(conn == null) System.out.println("db연결 실패");
		} catch (ClassNotFoundException e) { //driver연결 문제시
			e.printStackTrace(); // 콘솔창에 출력한다는 의미
		} catch (SQLException e) { //db 연결 문제시
			e.printStackTrace();
		}
	} // end connection()
	
	// === DB 종료기능 생성
	private void close() {
		// -- 4. 데이터베이스 연결 종료
		// 종료하지 않으면 사용하면서 계속누적됨
		try {
			if(rs != null) rs.close();
			if(psmt != null) psmt.close();
			if(conn != null) conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	} // end close()
	
	
	
	/* === 필요한 기능 : 회원가입, 로그인, 회원정보수정, 회원정보조회 */
	
	// === 회원가입(db데이터 저장)
	// join메소드 → DB에 저장될 수 있게 하기위한 메소드
	// MemberDTO클래스에는 회원정보가 저장되어 있음
	public int member_join(MemberDTO member) {
		try {
			connection();
		
			// --3. 쿼리문 실행
			String sql = "insert into web_member values(?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, member.getEmail());
			psmt.setString(2, member.getPw());
			psmt.setString(3, member.getTel());
			psmt.setString(4, member.getAddress());
			
			// 쿼리실행
			cnt = psmt.executeUpdate(); // insert, update, delete에 대해서 실행함
			
		}catch (SQLException e) {
			e.printStackTrace();	
		}finally { //finally(무조건실행)로 작성하는 이유 : 에러가 날 경우 catch문에서 끝나는데 그렇게되면 db가 정상으로 종료되지 않기때문
			close();
		}
		
		return cnt;
	}//end member_join()
	
	
	
	
}// end MemberDAO()
