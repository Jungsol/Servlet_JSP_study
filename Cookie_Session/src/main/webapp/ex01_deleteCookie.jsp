<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
		<h1>쿠키정보 삭제</h1>
	<%
	//변경할 쿠키와 같은 이름 쿠키 생성
	Cookie cookie = new Cookie("id","");
			
	//쿠키 유효시간 설정(초단위)
	// 삭제할 경우 : 0입력
	// 삭제가 아닌 유효시간 설정할 경우 cookie값 작성 후 시간설정
	cookie.setMaxAge(0);
	response.addCookie(cookie);
	%>
	
	<a href="ex01_createCookie.jsp">쿠키 생성</a>
</body>
</html>