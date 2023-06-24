<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>세션에 정보 저장</h1>
	<%
		// -- 세션 : 서버에 정보를 저장할 수 있는 내장객체영역(Scope) 중 하나
		// 		쿠키는 사용자에게 전달해줘야하기 때문에 response.addCookie를 하지만
		//  	세션은 서버에 저장되기 때문에 추가 처리할 내용이 없음
		// 세션에 정보를 저장할 때 Object타입으로 변환되어 저장됨		
		session.setAttribute("id", "smhrd");
	
		// 세션 유효기간 설정(초단위) → 쿠키와 다른점:삭제하는 메소드가 따로 있음
		// → 세션기간 설정에 0값을 넣으면 삭제되는게 아닌 계속 저장을 의미함.
		// → 디폴트값: 30분
		session.setMaxInactiveInterval(60);
		
	%>
</body>
</html>