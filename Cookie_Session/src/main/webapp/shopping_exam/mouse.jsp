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
	
	���콺�� ���� �� �������Դϴ�.<br>
	�𵨸� : ������ ���̹� ���콺<br>
	��ǰ����: 21,900��<br>
	
	<%
		//1. ��ǰ������ ������ ��Ű��ü ����
		//  - 'item����'�� �̸� ���� ex) item1, item2 ...
		//2. 1�ð���������
		//3. Ŭ���̾�Ʈpc�� ��Ű�� ������ ���� response��ü�� ����
		
		// ** ��Ű�� �����͸� ������ �� ������ ����Ұ�!(���� ��� �Ʒ��� ���� �ڵ�)
		//     Cookie cookie = new Cookie("item1","������ ���̹� ���콺");
		//   �� �ذ�å : URLEncoder.encode(���ڿ�������, ���ڵ����);
		Cookie cookie = new Cookie("item1",URLEncoder.encode("������ ���̹� ���콺","utf-8"));
		cookie.setMaxAge(60*60);
		
		response.addCookie(cookie);
		
	%>
	
	<a href="list.jsp">��ǰ��� ������</a>
</body>
</html>