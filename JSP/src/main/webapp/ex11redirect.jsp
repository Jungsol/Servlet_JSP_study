<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- a�±�(<a href="�ּ�">����</a>)�� ����� ��������� ���� ū �������� �ٷ��̵��ϴ��� �ƴϳ������� 
		a�±׸� Ȱ���� ��� '����'�̶�� �κ��� ex11redirect.jsp �������� ǥ�õǰ� �ش� "����"�κ��� Ŭ���ؾ� �̵���(�ι� Ŭ���ϴ� ����)		
	-->
	<!-- �����̷�Ʈ : �������� �̵��ϴ� ��� -->
	<% response.sendRedirect("https://www.naver.com"); %>
	
	<!-- �����͸� ������ �̵��ϴ� ��� -->
	<%-- <% response.sendRedirect("https://www.naver.com?����=��&����=��"); %> --%>
</body>
</html>