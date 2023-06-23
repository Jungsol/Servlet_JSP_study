<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>쿠키정보 생성됨</h1>
	<%
		//쿠키생성
		Cookie cookie = new Cookie("id","스마트");
		
		//쿠키정보를 사용자에게 전송
		response.addCookie(cookie);
	
	%>
	
	<a href="ex01_selectCookie.jsp">쿠키 조회</a>
	
	
</body>
</html>