<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>1~100합 구하기</h1>
		<%
			int sum = 0;
		
			for(int i=1; i<=100; i++){
				System.out.println(i);
				
				sum+=i;
			}
		%>
		
		<%= sum %>

</body>
</html>