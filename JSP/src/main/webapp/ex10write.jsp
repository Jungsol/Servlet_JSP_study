<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="ex10result.jsp">
		<fieldset>
			<legend>������ ������ �ۼ�</legend>
			
			����: <input type="text" name="title">
			<hr>
			
			<!-- ex10number.html���� �Է��� ���ڸ� Ȱ���Ͽ� �Ʒ� input�±׸� ���� -->
			<% int num = Integer.parseInt(request.getParameter("num")); %>
			   
			<!-- ���1  -->
			<% for(int i=0; i<num; i++){ %>
				������<%= i+1 %> : <input type="text" name="item"><br>
			<%} %>
			
			<%-- 
			<!-- ���2 -->
			<% for(int i=0; i<num; i++){
				out.print("������"+(i+1)+": <input type='text' name='name'><br>");
			} %> 
			--%>

			<input type="submit" value="����">
		</fieldset>
	</form>
</body>
</html>