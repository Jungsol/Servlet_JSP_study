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
		// ���� ���� ����
		// session.removeAttribute("user_name"); //�ش��ڵ�� Ư�� ���Ǹ� ������
		session.invalidate(); //���� ��ü ����
		response.sendRedirect("login.html");
	%>
</body>
</html>