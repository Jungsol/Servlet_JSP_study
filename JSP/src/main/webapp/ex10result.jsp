<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- ex10write.jsp���� �Է��� ������ ������ ������ �ϳ��� ���
		-> Random��ü Ȱ�� : �������� ����� �迭�� �ε��� -->
	<% String title = request.getParameter("title"); 
		String[] itemArr = request.getParameterValues("item");
		
		Random rd = new Random();
		int pos = rd.nextInt(itemArr.length);
	%>

	<fieldset>
		<legend>���</legend>
		
		<%= title %><br>
		<h2><%=itemArr[pos] %>></h2>
		
		<!-- �Ǵ� �������ǿ� ������ ���ÿ� �� �� ���� -->
		<%-- <%out.print(item[new Random().nextInt(itemArr.length)]); %> --%>	
		
	</fieldset>
</body>
</html>