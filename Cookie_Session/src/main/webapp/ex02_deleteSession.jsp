<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>세션 정보 삭제</h1>
	
	<%
		// 세션에 저장된 특정이름의 값을 삭제
		session.removeAttribute("id");
	
		// 세션 전체 삭제(로그아웃기능)
		//session.invalidate();
	%>
</body>
</html>