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
				<h1><%=request.getParameter("nick") %>님!<br>회원가입을 축하합니다!	</h1>
				
				
				<a href="../ex13Login/login.html">로그인</a>
			
			
			</div>
		</div>
	</div>
	
</body>
</html>