<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	
	<% String site = request.getParameter("site"); %>
	
	<!-- 방법1. 넘겨받는 정보가 url일 아닐 경우 -->
	<%-- <% String data = "";
	if(site.equals("naver")){
		data = "https://www.naver.com";
	}else if(site.equals("daum")){
		data = "https://www.daum.net";
	}else if(site.equals("google")){
		data = "https://www.google.com";
	}
	response.sendRedirect(data); %> --%>
	
	
	<!-- 방법2. 넘겨받는 정보가 url일 경우 -->
	<% response.sendRedirect(site); %>
</body>
</html>