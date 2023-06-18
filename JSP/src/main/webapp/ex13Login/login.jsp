<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%-- DB연결 전 코드
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		if(id.equals("smart") && pw.equals("1234")){
			
			// 쿼리스트링 형식으로 데이터를 loginTrue.jsp로 전달
			response.sendRedirect("loginTrue.jsp?id="+id);
		}else{
			response.sendRedirect("loginFalse.jsp");
		}
	%> --%>




	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		// try~catch문 : 예외처리구문
		// try : 동작시키고싶은 코드 작성 / catch: 에러 발생시 catch로 이동함
		//finally문 : 무조건 실행하는 구문
		
		// 전역변수에서 작성해야 finally문에서 실행됨
		Connection conn = null; // 데이터베이스와 연결하는 객체
		PreparedStatement psmt = null; //db실행 시켜주는 객체 보안성이 높고 가독성이 좋다.
		ResultSet rs = null; // 보통 DB select 문에서 사용(prepareStatement를 이용해 실행된 결과를 받아오는 객체)
		
		final String driver = "org.mariadb.jdbc.Driver";
		final String DB_IP = "localhost";
		final String DB_PORT = "3306";
		final String DB_NAME = "JSP_study";
		final String DB_URL = "jdbc:mariadb://" + DB_IP + ":" + DB_PORT + "/" + DB_NAME;
		
				
		try{
			// --------- 1. 드라이버 로드
			Class.forName(driver);
			// --------- 2. DB 연동
			conn = DriverManager.getConnection(DB_URL, "root", "1234");
			
			if(conn == null){
				System.out.print("DB연결실패");
			}else{
				System.out.print("연결성공!");
			}
			
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
				String getNick = rs.getString(3);
				response.sendRedirect("loginTrue.jsp?nick="+getNick);
				/* String getNick = rs.getString(3); //getString(3) : select된 세번째 컬럼
				System.out.print(getNick);
				response.sendRedirect("loginTrue.jsp?nick="+getNick); */
			}else{
				System.out.print("실패");
				response.sendRedirect("loginFalse.jsp");
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
			// 종료 순서는 역순으로
			conn.close(); //MVC패턴 적용 전 코드
			
			/* // MVC패턴 적용 후 아래코드로 수정함.
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
			} */
			
		}
		
	%>

	
</body>
</html>