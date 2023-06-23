<%@page import="java.net.URLDecoder"%>
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
	<ul>
		<li><a href="mouse.jsp">마우스</a></li>
		<li><a href="phone.jsp">갤럭시와 아이폰</a></li>
		<li><a href="computer.jsp">사무용 PC</a></li>
	</ul>
	
	<hr>
	
	
	<h5>최근 본 상품</h5>
	<% 
		//1. 쿠키값 받아오기
		Cookie[] cookies = request.getCookies();

		//2. 쿠키값 null처리
		if(cookies != null){
			for(Cookie e : cookies){
				//3. 쿠키이름 가져오기
				//4. 쿠키이름에 item이 포함되어 있는 경우
				//  - 문자열변수.contains(문자열) 활용 : boolean 타입 결괏값
				if(e.getName().contains("item")){
					//5. 해당 vaule 가져오기
					//  → 쿠키파일에 인코딩된 데이터가 저장되어 있어 값 접근시 한글로 보여지지 않음
					// 해결책 : URLDecoder.decode(문자열데이터, 인코딩방식)
					String value = URLDecoder.decode(e.getValue(),"utf-8");
					out.print(value + "<br>");			
				}
			}
		}
		
	
	%>
</body>
</html>