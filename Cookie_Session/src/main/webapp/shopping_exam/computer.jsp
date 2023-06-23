<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	컴퓨터에 대한 상세 페이지입니다.<br>
	모델명 : 사무용 PC<br>
	제품가격: 450,000원<br>
	
	<%
		//1. 상품정보를 저장한 쿠키객체 생성
		//  - 'item숫자'로 이름 정의 ex) item1, item2 ...
		//2. 1시간동안유지
		//3. 클라이언트pc에 쿠키를 보내기 위해 response객체에 저장
		
		// ** 쿠키에 데이터를 저장할 때 공백은 저장불가!(예를 들어 아래와 같은 코드)
		//     Cookie cookie = new Cookie("item1","로지텍 게이밍 마우스");
		//   → 해결책 : URLEncoder.encode(문자열데이터, 인코딩방식);
		Cookie cookie = new Cookie("item2",URLEncoder.encode("사무용 PC","utf-8"));
		cookie.setMaxAge(60*60);
		
		response.addCookie(cookie);
	%>
	
	<a href="list.jsp">제품목록 페이지</a>
	
</body>
</html>