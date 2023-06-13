<%@page import="java.util.Calendar"%>
<%@page import="java.util.GregorianCalendar"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<!-- 내장된 객체를 사용할 때 import 되어있는지 확인할 것! -->
	<%
		GregorianCalendar cal = new GregorianCalendar();
	%>
	
	<%=cal.get(Calendar.YEAR) %>년
	<%=cal.get(Calendar.MONTH)+1 %>월
	<%=cal.get(Calendar.DATE) %>일
	
	<%=cal.get(Calendar.HOUR) %>시
	<%=cal.get(Calendar.MINUTE) %>분
	<%=cal.get(Calendar.SECOND) %>초
</body>
</html>