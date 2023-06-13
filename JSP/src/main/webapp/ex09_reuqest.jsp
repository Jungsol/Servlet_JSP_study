<%@page import="org.eclipse.jdt.internal.compiler.parser.ParserBasicInformation"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		String name = request.getParameter("name");
		int java = Integer.parseInt(request.getParameter("java"));
		int web = Integer.parseInt(request.getParameter("web"));
		int iot = Integer.parseInt(request.getParameter("iot"));
		int and = Integer.parseInt(request.getParameter("and"));
		
		
		double avg = (java+web+iot+and)/4.0;
		
		String grade = "F";
		
		if(avg>95){
			grade="A+";
		}else if(avg>90){
			grade="A";
		}else if(avg>85){
			grade="B";
		}else if(avg >= 80){
			grade="B+";
		}
	%>
	
	<form>
		<fieldset>
			<legend>성적확인프로그램</legend>
			<table>
				<tr>
					<td>이름</td>
					<td><%=name %></td>
				</tr>
				<tr>
					<td>KAVA점수</td>
					<td><%=java %></td>
				</tr>
				<tr>
					<td>WEB점수</td>
					<td><%=web %></td>
				</tr>
				<tr>
					<td>iot점수</td>
					<td><%=iot %></td>
				</tr>
				<tr>
					<td>ANDROID점수</td>
					<td><%=and %></td>
				</tr>
				<tr>
					<td>평균</td>
					<td><%=avg %></td>
				</tr>
				<tr>
					<td>학점</td>
					<td><%=grade %></td>
				</tr>
				
			</table>
		</fieldset>
	</form>

</body>
</html>