<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<!-- out객체 : 웹 페이지에 정보를 출력하기 위한 객체
				-> html태그와 같이 사용하게 되면 코드 간결 -->
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