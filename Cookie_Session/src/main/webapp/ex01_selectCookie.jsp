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
	// 쿠키정보 조회 : 쿠키정보가 하나 이상 반환되기 때문에 쿠키배열로 저장
	Cookie[] cookies = request.getCookies();
	
	//예외처리
	if(cookies != null){
		for(Cookie e : cookies){
			out.print("쿠키이름: "+e.getName()+"<br>");
			out.print("쿠키값: "+e.getValue()+"<br>");
		}
	}
	
	%>

	<a href="ex01_deleteCookie.jsp">쿠키 삭제</a>
</body>
</html>