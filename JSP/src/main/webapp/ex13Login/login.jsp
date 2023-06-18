<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%-- DB���� �� �ڵ�
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		if(id.equals("smart") && pw.equals("1234")){
			
			// ������Ʈ�� �������� �����͸� loginTrue.jsp�� ����
			response.sendRedirect("loginTrue.jsp?id="+id);
		}else{
			response.sendRedirect("loginFalse.jsp");
		}
	%> --%>




	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		// try~catch�� : ����ó������
		// try : ���۽�Ű����� �ڵ� �ۼ� / catch: ���� �߻��� catch�� �̵���
		//finally�� : ������ �����ϴ� ����
		
		// ������������ �ۼ��ؾ� finally������ �����
		Connection conn = null; // �����ͺ��̽��� �����ϴ� ��ü
		PreparedStatement psmt = null; //db���� �����ִ� ��ü ���ȼ��� ���� �������� ����.
		ResultSet rs = null; // ���� DB select ������ ���(prepareStatement�� �̿��� ����� ����� �޾ƿ��� ��ü)
		
		final String driver = "org.mariadb.jdbc.Driver";
		final String DB_IP = "localhost";
		final String DB_PORT = "3306";
		final String DB_NAME = "JSP_study";
		final String DB_URL = "jdbc:mariadb://" + DB_IP + ":" + DB_PORT + "/" + DB_NAME;
		
				
		try{
			// --------- 1. ����̹� �ε�
			Class.forName(driver);
			// --------- 2. DB ����
			conn = DriverManager.getConnection(DB_URL, "root", "1234");
			
			if(conn == null){
				System.out.print("DB�������");
			}else{
				System.out.print("���Ἲ��!");
			}
			
			// --------- 3. ������ ����
			String sql="select * from test_member where id = ? and pw = ?";
			psmt = conn.prepareStatement(sql);
			
			//setString(?�� �ε��� 1���ͽ���, �Ű�����)
			psmt.setString(1, id); // ù��° ����ǥ(sql���� �ް� ?�� �Ű����� id ����) 
			psmt.setString(2, pw); // �ι�° ����ǥ
			
			// --- ������� ������ �����ϴ� �ܰ�
			
			// --- ������� ����ܰ�
			rs = psmt.executeQuery(); //������ ����
			
			if(rs.next()){ //db�κ��� ���� ����Ȯ�� => �������� �ش��ϴ� �����Ͱ� �ִٸ�?
				//next() ���������� Ȯ��
				String getNick = rs.getString(3);
				response.sendRedirect("loginTrue.jsp?nick="+getNick);
				/* String getNick = rs.getString(3); //getString(3) : select�� ����° �÷�
				System.out.print(getNick);
				response.sendRedirect("loginTrue.jsp?nick="+getNick); */
			}else{
				System.out.print("����");
				response.sendRedirect("loginFalse.jsp");
			}
			
		} catch (ClassNotFoundException e){
			// ojdbc6.jar������ ���ų� Class��ΰ� �߸��� ���
			System.out.print("����̹� �ε� ����");
			e.printStackTrace();
		} catch (SQLException e){
			// DB���� �� SQL���� ������ �߻��� ���
			System.out.print("DB���� ���� �Ǵ� SQL���� Ȯ��");
			e.printStackTrace();
		}finally{
			// --------- 4.�����ͺ��̽� ���� ����
			// : Connection��ü, PreparedStatement��ü, ResultSet��ü
			// ���� ������ ��������
			conn.close(); //MVC���� ���� �� �ڵ�
			
			/* // MVC���� ���� �� �Ʒ��ڵ�� ������.
			try {
				if (rs != null) {
					rs.close();
					System.out.print("rs����");
				}
				if (psmt != null) {
					psmt.close();
				}

				if (conn != null && !conn.isClosed()) {
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} */
			
		}
		
	%>

	
</body>
</html>