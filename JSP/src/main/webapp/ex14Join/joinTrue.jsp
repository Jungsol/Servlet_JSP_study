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
<!-- loginCheck���� �Ѱܹ��� id�� �������ÿ�. -->
	<div class="container">
		<div class="main-div">
			<div class="panel">
				<!-- id�� ���������� ����Ͻÿ�. -->
				<h1><%=request.getParameter("nick") %>��!<br>ȸ�������� �����մϴ�!	</h1>
				
				
				<a href="../ex13Login/login.html">�α���</a>
			
			
			</div>
		</div>
	</div>
	
</body>
</html>