<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<table border="1">
		<tr>
			<!-- 스크립틀릿은 분리 가능. 자바문법으로 HTML태그를 같이 사용할 때 -->
			<% for(int i=0; i<3; i++){ %>
				<td><%= i+1 %></td>
			<% } %>
		</tr>
	</table>
	
	<br>
	<br>
	
	<!-- 1열 5행 -->
	<table border="1">
		<% for(int i =0; i <5; i++) { %>
			<tr>
				<td><%= i+1 %></td>
			</tr>
		<% } %>
	</table>
	
	<br>
	<br>
	
	<!-- 3행 2열 -->
	<table border="1">
		<% for(int i=0; i<3; i++){ %>
			<tr>
				<% for(int j=0; j<2; j++){ %>
					<td><%= j+1 %></td>
				<% } %>
			</tr>
		<% } %>
	</table>
	
	
	
</body>
</html>