package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
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
		
		request.setCharacterEncoding("utf-8"); // db에 한글로 저장하기 위함
		
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String tel = request.getParameter("tel");
		String addr = request.getParameter("addr");
		
		//MemberDAO 사용을 위한 객체 생성
		MemberDAO dao = new MemberDAO();
		MemberDTO member = new MemberDTO(email, pw, tel, addr);
		
		// sql문 전송실행
		int cnt = dao.member_join(member);
		System.out.println("cnt값 : "+cnt);
		
		if(cnt>0) {
			// -- forward방식으로 페이지 이동
			// 외부서버를 찾으려 하면 404에러
			RequestDispatcher dispatcher = request.getRequestDispatcher("login.html");
			
			//request영역에 데이터 저장
			request.setAttribute("email", email);
			
			//페이지 이동시 request, response객체를 전달(정보유지o)
			dispatcher.forward(request, response);
			
			//response.sendRedirect("login.html");
		}else {
			response.sendRedirect("index.html");
		}
		
	}

}
