<!-- ** 지시자(자동생성) -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- ** 선언문(%!)(거의 사용하지 않음!)->jsp에서 자바메소드를 만들어서 처리할 일이 거의 없기 때문. 보통 servlet에서 작업함 -->
<%!
	// 상수나 메소드만 정의
	public void show(){
		System.out.print("Hello JSP!");
	}
%>

<!-- ** 스크립틀릿(자바구현)(%) -->
<%
	// 자바 문법(변수~배열, 객체)을 사용할 수 있게 하는 문법
	String str = "Hello";
	show();
%>

<!-- ** 표현식(%=): 웹페이지에 결괏값을 보여줄 때(변수, 반환값을 가지는 메소드) -->
<%=str %>

<!-- 아래 문장(Random())은 반환값이 없는 메소드이기 때문에 실행X -->
<%-- <%=System.out.print("HELLO") %> --%>
<%-- <%=(new Random()).nextInt(5) %> --%>
	
</body>
</html>