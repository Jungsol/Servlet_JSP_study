<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>���ǿ� ���� ����</h1>
	<%
		// -- ���� : ������ ������ ������ �� �ִ� ���尴ü����(Scope) �� �ϳ�
		// 		��Ű�� ����ڿ��� ����������ϱ� ������ response.addCookie�� ������
		//  	������ ������ ����Ǳ� ������ �߰� ó���� ������ ����
		// ���ǿ� ������ ������ �� ObjectŸ������ ��ȯ�Ǿ� �����		
		session.setAttribute("id", "smhrd");
	
		// ���� ��ȿ�Ⱓ ����(�ʴ���) �� ��Ű�� �ٸ���:�����ϴ� �޼ҵ尡 ���� ����
		// �� ���ǱⰣ ������ 0���� ������ �����Ǵ°� �ƴ� ��� ������ �ǹ���.
		// �� ����Ʈ��: 30��
		session.setMaxInactiveInterval(60);
		
	%>
</body>
</html>