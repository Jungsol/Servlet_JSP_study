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
	%>
</body>
</html>