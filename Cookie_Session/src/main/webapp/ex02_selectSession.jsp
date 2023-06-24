<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>세션 정보 조회</h1>
	
	<%
		// -- 세션 정보 가져오기
		//		세션에 정보가 Object타입으로 저장되어 있기 때문에
		// 		Object(부모클래스)를 Stirng(자식클래스)으로 변환(다운캐스팅)해서 변수에 저장/활용
		//	  * 다운캐스팅
		//	   - 자식클래스 변수 = (자식클래스)부모타입의 데이터
		String id = (String)session.getAttribute("id");
		out.print(id);
	%>
	
	<!-- 세션에 저장된 데이터를 바로 사용할 경우 -->
	<!-- 다른 곳에서 사용할 가능성도 있고, 
		null에 대한 여부도 확인하기 때문에 바로 표현식으로 쓰는 방식은 거의 사용하지 않음. -->
	<%=session.getAttribute("id") %>
</body>
</html>