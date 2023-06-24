package controller;

import java.io.IOException;
import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.TestMemberDAO;

// 자동 import :  ctrl + shift + o(영어)

@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
				
		// 객체 생성
		TestMemberDAO dao = new TestMemberDAO();
		
		// 메소드의 반환여부 꼭 확인하고 리턴값 자료형 맞춰서 작성
		String nick = dao.loginCheck(id, pw);
		
		// nick의 값이 null이 아니라면 DB에 정보 있는 것 → != null
		if(nick != null){ 
			
			// 1. session객체 생성(아래 두가지 기능)
			//   1) 사용자가 방문을 했다면 세션이 생성되어 있는지 체크하고
			// 	 2) 생성이 안되어 있다면 생성함
			HttpSession session = request.getSession();
			
			// 2. session객체에 닉네임 저장
			session.setAttribute("user_nick", nick);

			// * sendRedirect는 이동만 시키고 session을 통해 정보 확인함
			response.sendRedirect("ex13Login/loginTrue.jsp");
			
			// ↓ session사용 전 페이지 이동 코드.
			// * 한글닉네임을 사용자에게 표시할 때 encode 메소드 이용해야 한글표시됨.
			// response.sendRedirect("ex13Login/loginTrue.jsp?nick="+URLEncoder.encode(nick,"utf-8"));
			
		}else{
			
			response.sendRedirect("ex13Login/loginFalse.jsp");
		}
	}
}
