<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<title>Forty by HTML5 UP</title>
	<meta charset="EUC-KR" />
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<link rel="stylesheet" href="assets/css/main.css" />
</head>
	<style>
	#Update>ul.actions {
		margin-top: 10%;
	}
	</style>
<body style="text-align: center;">

	<!-- Wrapper -->
	<div id="wrapper">
		<!-- Menu -->
		<nav id="Update">
			<ul style="list-style: none;">
				<li><h1>환영합니다!</h1></li>
				<li>회원가입을 축하합니다.</li>
				<!-- request영역에 저장된 회원정보 중 이메일을 출력하시오. -->
				<!-- ** Form양식을 통해 입력한 데이터는 request.getParameter()활용
					 ** forward방식으로 전달한 경우 request.getAttribute() 활용 -->
				<li>메세지시스템의 새로운 이메일은 <%=request.getAttribute("email") %>입니다.</li> <!-- forward방식 -->
				<li>메세지시스템의 새로운 이메일은 <%=request.getParameter("email") %>입니다.</li> <!-- sendRedirect방식 -->
				
				<li><button onclick='location.href="main.jsp"'>시작하기</button></li>
			</ul>
		</nav>
	</div>
	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="assets/js/main.js"></script>
</body>
</html>