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
	// ��Ű���� ��ȸ : ��Ű������ �ϳ� �̻� ��ȯ�Ǳ� ������ ��Ű�迭�� ����
	Cookie[] cookies = request.getCookies();
	
	//����ó��
	if(cookies != null){
		for(Cookie e : cookies){
			out.print("��Ű�̸�: "+e.getName()+"<br>");
			out.print("��Ű��: "+e.getValue()+"<br>");
		}
	}
	
	%>

	<a href="ex01_deleteCookie.jsp">��Ű ����</a>
</body>
</html>