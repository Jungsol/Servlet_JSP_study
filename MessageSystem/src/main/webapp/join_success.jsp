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
				<li><h1>ȯ���մϴ�!</h1></li>
				<li>ȸ�������� �����մϴ�.</li>
				<!-- request������ ����� ȸ������ �� �̸����� ����Ͻÿ�. -->
				<!-- ** Form����� ���� �Է��� �����ʹ� request.getParameter()Ȱ��
					 ** forward������� ������ ��� request.getAttribute() Ȱ�� -->
				<li>�޼����ý����� ���ο� �̸����� <%=request.getAttribute("email") %>�Դϴ�.</li> <!-- forward��� -->
				<li>�޼����ý����� ���ο� �̸����� <%=request.getParameter("email") %>�Դϴ�.</li> <!-- sendRedirect��� -->
				
				<li><button onclick='location.href="main.jsp"'>�����ϱ�</button></li>
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