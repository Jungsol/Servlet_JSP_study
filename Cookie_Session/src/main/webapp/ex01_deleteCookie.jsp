<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
		<h1>��Ű���� ����</h1>
	<%
	//������ ��Ű�� ���� �̸� ��Ű ����
	Cookie cookie = new Cookie("id","");
			
	//��Ű ��ȿ�ð� ����(�ʴ���)
	// ������ ��� : 0�Է�
	// ������ �ƴ� ��ȿ�ð� ������ ��� cookie�� �ۼ� �� �ð�����
	cookie.setMaxAge(0);
	response.addCookie(cookie);
	%>
	
	<a href="ex01_createCookie.jsp">��Ű ����</a>
</body>
</html>