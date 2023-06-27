package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MemberDAO;
import model.MemberDTO;

@WebServlet("/JoinCon")
public class JoinCon extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String tel = request.getParameter("tel");
		String address = request.getParameter("address");
		System.out.println("JoinCon접속확인");
		
		MemberDAO dao = new MemberDAO();
		MemberDTO member = new MemberDTO(email, pw, tel, address);
		
		int cnt = dao.member_join(member);
		System.out.println("cnt값: "+cnt);
		
		if(cnt>0) {
			response.sendRedirect("join_success.jsp?email="+email);
//			RequestDispatcher dispatcher = request.getRequestDispatcher("join_success.jsp");
//			request.setAttribute("email", email);
//			
//			dispatcher.forward(request, response);
		}else {
			response.sendRedirect("main.jsp");
		}
	}

}


