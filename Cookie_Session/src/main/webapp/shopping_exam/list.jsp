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
		<li><a href="mouse.jsp">���콺</a></li>
		<li><a href="phone.jsp">�����ÿ� ������</a></li>
		<li><a href="computer.jsp">�繫�� PC</a></li>
	</ul>
	
	<hr>
	
	
	<h5>�ֱ� �� ��ǰ</h5>
	<% 
		//1. ��Ű�� �޾ƿ���
		Cookie[] cookies = request.getCookies();

		//2. ��Ű�� nulló��
		if(cookies != null){
			for(Cookie e : cookies){
				//3. ��Ű�̸� ��������
				//4. ��Ű�̸��� item�� ���ԵǾ� �ִ� ���
				//  - ���ڿ�����.contains(���ڿ�) Ȱ�� : boolean Ÿ�� �ᱣ��
				if(e.getName().contains("item")){
					//5. �ش� vaule ��������
					//  �� ��Ű���Ͽ� ���ڵ��� �����Ͱ� ����Ǿ� �־� �� ���ٽ� �ѱ۷� �������� ����
					// �ذ�å : URLDecoder.decode(���ڿ�������, ���ڵ����)
					String value = URLDecoder.decode(e.getValue(),"utf-8");
					out.print(value + "<br>");			
				}
			}
		}
		
	
	%>
</body>
</html>