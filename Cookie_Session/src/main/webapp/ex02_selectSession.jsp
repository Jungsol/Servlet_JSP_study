<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>���� ���� ��ȸ</h1>
	
	<%
		// -- ���� ���� ��������
		//		���ǿ� ������ ObjectŸ������ ����Ǿ� �ֱ� ������
		// 		Object(�θ�Ŭ����)�� Stirng(�ڽ�Ŭ����)���� ��ȯ(�ٿ�ĳ����)�ؼ� ������ ����/Ȱ��
		//	  * �ٿ�ĳ����
		//	   - �ڽ�Ŭ���� ���� = (�ڽ�Ŭ����)�θ�Ÿ���� ������
		String id = (String)session.getAttribute("id");
		out.print(id);
	%>
	
	<!-- ���ǿ� ����� �����͸� �ٷ� ����� ��� -->
	<!-- �ٸ� ������ ����� ���ɼ��� �ְ�, 
		null�� ���� ���ε� Ȯ���ϱ� ������ �ٷ� ǥ�������� ���� ����� ���� ������� ����. -->
	<%=session.getAttribute("id") %>
</body>
</html>