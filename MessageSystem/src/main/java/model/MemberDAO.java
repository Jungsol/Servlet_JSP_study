package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberDAO {

	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;
	private int cnt;
	
	public void connection() {
		String driver = "org.mariadb.jdbc.Driver";
		String DB_ip = "localhost";
		String DB_port = "3306";
		String DB_name = "jsp_study";
		String DB_url = "jdbc:mariadb://"+DB_ip+":"+DB_port+"/"+DB_name;
		String DB_user = "root";
		String DB_pw = "1234";
		
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(DB_url, DB_user, DB_pw);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch(SQLException e) {
			e.printStackTrace();
		}
	}//end connection()
	
	public void close() {
		try {
			if(rs != null) rs.close();
			if(psmt != null) psmt.close();
			if(conn != null) psmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}//end close()
	
	public int member_join(MemberDTO member) {
		try {
			connection();
			
			String sql = "insert into web_member values (?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, member.getEmail());
			psmt.setString(2, member.getPw());
			psmt.setString(3, member.getTel());
			psmt.setString(4, member.getAddress());
			
			cnt = psmt.executeUpdate();
			
		}catch(SQLException e){
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
	}//end member_join()
	
	
	
}

