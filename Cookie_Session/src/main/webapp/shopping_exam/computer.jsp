<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	��ǻ�Ϳ� ���� �� �������Դϴ�.<br>
	�𵨸� : �繫�� PC<br>
	��ǰ����: 450,000��<br>
	
	<%
		//1. ��ǰ������ ������ ��Ű��ü ����
		//  - 'item����'�� �̸� ���� ex) item1, item2 ...
		//2. 1�ð���������
		//3. Ŭ���̾�Ʈpc�� ��Ű�� ������ ���� response��ü�� ����
		
		// ** ��Ű�� �����͸� ������ �� ������ ����Ұ�!(���� ��� �Ʒ��� ���� �ڵ�)
		//     Cookie cookie = new Cookie("item1","������ ���̹� ���콺");
		//   �� �ذ�å : URLEncoder.encode(���ڿ�������, ���ڵ����);
		Cookie cookie = new Cookie("item2",URLEncoder.encode("�繫�� PC","utf-8"));
		cookie.setMaxAge(60*60);
		
		response.addCookie(cookie);
	%>
	
	<a href="list.jsp">��ǰ��� ������</a>
	
</body>
</html>