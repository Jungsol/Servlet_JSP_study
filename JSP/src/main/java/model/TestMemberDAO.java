package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

// DAO는 DB관련만 처리해야함
public class TestMemberDAO {
	// try~catch문 : 예외처리구문
	//  -- try : 동작시키고싶은 코드 작성 / catch: 에러 발생시 catch로 이동함
	// finally문 : 무조건 실행하는 구문
	
	// 전역변수에서 작성해야 finally문에서 실행됨
	Connection conn = null; // 데이터베이스와 연결하는 객체
	PreparedStatement psmt = null; //db실행 시켜주는 객체 보안성이 높고 가독성이 좋다.
	ResultSet rs = null; // 보통 DB select 문에서 사용(prepareStatement를 이용해 실행된 결과를 받아오는 객체)

	String driver = "org.mariadb.jdbc.Driver";
	String DB_IP = "localhost";
	String DB_PORT = "3306";
	String DB_NAME = "JSP_study";
	String DB_URL = "jdbc:mariadb://" + DB_IP + ":" + DB_PORT + "/" + DB_NAME;
	String DB_USER = "root";
	String DB_PW = "1234";
	
	
	
	
	// ******* 메소드 생성 - 로그인처리(DB정보 조회 후 존재여부 확인)
	// 외부로부터 id, pw를 확인할 수 있는 매개변수 
	public String loginCheck(String id, String pw) {
		
		String nick = null; // 반환용도(DB조회성공 후 결과를 담을 변수)
		
		try{
			// --------- 1. 드라이버 로드
			Class.forName(driver);
			// --------- 2. DB 연동
			conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PW);
			
			/*//연결확인용
			if(conn == null){
				System.out.print("DB연결실패");
			}else{
				System.out.print("연결성공!");
			}
			*/
			
			// --------- 3. 쿼리문 실행
			String sql="select * from test_member where id = ? and pw = ?";
			psmt = conn.prepareStatement(sql);
			
			//setString(?의 인덱스 1부터시작, 매개변수)
			psmt.setString(1, id); // 첫번째 물음표(sql문을 받고 ?에 매개변수 id 삽입) 
			psmt.setString(2, pw); // 두번째 물음표
			
			// --- 여기까지 쿼리문 정의하는 단계
			
			// --- 여기부터 실행단계
			rs = psmt.executeQuery(); //쿼리문 실행
			
			if(rs.next()){ //db로부터 받은 정보확인 => 쿼리문에 해당하는 데이터가 있다면?
				//next() 다음데이터 확인
				/*String getNick = rs.getString(3);//getString(3) : select된 세번째 컬럼*/				
				nick = rs.getString(3); // ===== 값만 담고 해당 메소드의 가장 마지막에 return함
			}
			
		} catch (ClassNotFoundException e){
			// ojdbc6.jar파일이 없거나 Class경로가 잘못된 경우
			System.out.print("드라이버 로드 실패");
			e.printStackTrace();
		} catch (SQLException e){
			// DB연결 및 SQL관련 오류가 발생한 경우
			System.out.print("DB접속 실패 또는 SQL문장 확인");
			e.printStackTrace();
		}finally{
			// --------- 4.데이터베이스 연결 종료
			// : Connection객체, PreparedStatement객체, ResultSet객체
			// ! 종료 순서는 역순으로
			
			try {
				if (rs != null) {
					rs.close();
					System.out.print("rs종료");
				}
				if (psmt != null) {
					psmt.close();
				}

				if (conn != null && !conn.isClosed()) {
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return nick;
	} // end loginCheck()
	
	
	
	
	
	// ******* 2. 메소드 생성 - 가입
	//-- 메소드를 실행하는데 필요한 매개변수 개수와 자료형, 리턴여부 꼭 생각
	public int join(String id, String pw, String nick) {
		
		int cnt = 0;
		
		try {
			// 1. 드라이버 로드
			Class.forName(driver);
			
			// 2. db 연결
			conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PW);
			
			// 3. sql 작성
			String sql = "insert into test_member set id=?, pw=?, nick=?";
			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			psmt.setString(2, pw);
			psmt.setString(3, nick);
			
			//-- 데이터베이스에 변화X SQL
			// executeQuery(): select (데이터에 변화없음)
			
			//-- 데이터베이스에 변화O SQL
			// executeUpdate(): insert, update, delete
			//  ★★★★★★ → int형 반환 
			
			// sql실행
			cnt = psmt.executeUpdate();
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(psmt != null) {psmt.close();}
				if(conn != null) {conn.close();}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return cnt;
	}// end join()
	
	
	
	
}// end TestMemberDAO()


