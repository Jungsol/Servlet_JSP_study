<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		// 세션 정보 삭제
		// session.removeAttribute("user_name"); //해당코드는 특정 세션만 삭제함
		session.invalidate(); //세션 전체 삭제
		response.sendRedirect("login.html");
	%>
</body>
</html>