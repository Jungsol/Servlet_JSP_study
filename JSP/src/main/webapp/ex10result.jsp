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
	<!-- ex10write.jsp에서 입력한 주제와 랜덤한 아이템 하나를 출력
		-> Random객체 활용 : 아이템이 저장된 배열의 인덱스 -->
	<% String title = request.getParameter("title"); 
		String[] itemArr = request.getParameterValues("item");
		
		Random rd = new Random();
		int pos = rd.nextInt(itemArr.length);
	%>

	<fieldset>
		<legend>결과</legend>
		
		<%= title %><br>
		<h2><%=itemArr[pos] %>></h2>
		
		<!-- 또는 랜덤정의와 실행을 동시에 할 수 있음 -->
		<%-- <%out.print(item[new Random().nextInt(itemArr.length)]); %> --%>	
		
	</fieldset>
</body>
</html>