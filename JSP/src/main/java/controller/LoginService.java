package controller;

import java.io.IOException;
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

import model.TestMemberDAO;

// 자동 import :  ctrl + shift + o(영어)

@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		//로그인체크를 위한 기능
		
		// 1. 객체 생성
		TestMemberDAO dao = new TestMemberDAO();
		String nick = dao.loginCheck(id, pw);
		
		if(nick != null){ 
			response.sendRedirect("ex13Login/loginTrue.jsp?nick="+nick);
		}else{
			
			response.sendRedirect("ex13Login/loginFalse.jsp");
		}
	}
}
