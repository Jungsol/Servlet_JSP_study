<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<!-- out��ü : �� �������� ������ ����ϱ� ���� ��ü
				-> html�±׿� ���� ����ϰ� �Ǹ� �ڵ� ���� -->
	<%
		for(int i=0; i<5; i++){
			out.print("<h1>"+(i+1)+" Hello JSP<h1>");
		}
	%>
	
	<table border="1">
		<tr>
			<%
				for(int i=0; i<3; i++){
					out.print("<td>"+(i+1)+"</td>");
				}
			%>
		</tr>
	</table>
</body>
</html>