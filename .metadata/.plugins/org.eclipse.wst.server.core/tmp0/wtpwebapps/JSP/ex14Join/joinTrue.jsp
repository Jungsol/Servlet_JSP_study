<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<link href="login.css" rel="stylesheet">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<meta charset="EUC-KR">
	<title>Insert title here</title>
</head>
<body id="LoginForm">
<!-- loginCheck에서 넘겨받은 id를 가져오시오. -->
	<div class="container">
		<div class="main-div">
			<div class="panel">
				<!-- id를 웹페이지에 출력하시오. -->
				<%-- <h1><%= request.getParameter("nick") %>님을 환영합니다.</h1> --%>
				<h1><%=request.getParameter("nick") %>를 환영합니다.</h1>
				
				<a href="logout.jsp">로그아웃</a>
			
			
			</div>
		</div>
	</div>
	
</body>
</html>