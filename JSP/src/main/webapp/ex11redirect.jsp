<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- a태그(<a href="주소">내용</a>)와 비슷한 기능이지만 가장 큰 차이점은 바로이동하느냐 아니냐차이임 
		a태그를 활용할 경우 '내용'이라는 부분이 ex11redirect.jsp 페이지에 표시되고 해당 "내용"부분을 클릭해야 이동함(두번 클릭하는 것임)		
	-->
	<!-- 리다이렉트 : 페이지를 이동하는 기능 -->
	<% response.sendRedirect("https://www.naver.com"); %>
	
	<!-- 데이터를 가지고 이동하는 방법 -->
	<%-- <% response.sendRedirect("https://www.naver.com?변수=값&변수=값"); %> --%>
</body>
</html>