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
	
	<!-- ���1. �Ѱܹ޴� ������ url�� �ƴ� ��� -->
	<%-- <% String data = "";
	if(site.equals("naver")){
		data = "https://www.naver.com";
	}else if(site.equals("daum")){
		data = "https://www.daum.net";
	}else if(site.equals("google")){
		data = "https://www.google.com";
	}
	response.sendRedirect(data); %> --%>
	
	
	<!-- ���2. �Ѱܹ޴� ������ url�� ��� -->
	<% response.sendRedirect(site); %>
</body>
</html>