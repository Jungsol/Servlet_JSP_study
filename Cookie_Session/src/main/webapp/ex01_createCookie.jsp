<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>��Ű���� ������</h1>
	<%
		//��Ű����
		Cookie cookie = new Cookie("id","����Ʈ");
		
		//��Ű������ ����ڿ��� ����
		response.addCookie(cookie);
	
	%>
	
	<a href="ex01_selectCookie.jsp">��Ű ��ȸ</a>
	
	
</body>
</html>