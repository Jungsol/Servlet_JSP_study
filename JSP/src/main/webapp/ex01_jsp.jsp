<!-- ** ������(�ڵ�����) -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- ** ����(%!)(���� ������� ����!)->jsp���� �ڹٸ޼ҵ带 ���� ó���� ���� ���� ���� ����. ���� servlet���� �۾��� -->
<%!
	// ����� �޼ҵ常 ����
	public void show(){
		System.out.print("Hello JSP!");
	}
%>

<!-- ** ��ũ��Ʋ��(�ڹٱ���)(%) -->
<%
	// �ڹ� ����(����~�迭, ��ü)�� ����� �� �ְ� �ϴ� ����
	String str = "Hello";
	show();
%>

<!-- ** ǥ����(%=): ���������� �ᱣ���� ������ ��(����, ��ȯ���� ������ �޼ҵ�) -->
<%=str %>

<!-- �Ʒ� ����(Random())�� ��ȯ���� ���� �޼ҵ��̱� ������ ����X -->
<%-- <%=System.out.print("HELLO") %> --%>
<%-- <%=(new Random()).nextInt(5) %> --%>
	
</body>
</html>