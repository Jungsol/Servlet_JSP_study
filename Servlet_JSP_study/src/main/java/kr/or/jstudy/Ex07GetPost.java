package kr.or.jstudy;

import java.io.IOException;
import java.io.PrintWriter;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/GetPost") // '/'지우면 안됨(지우면 실행X)
public class Ex07GetPost extends HttpServlet {
	
	// Get 방식과 Post방식을 구분해서 로직을 처리해야 할 경우
	// doGet과 doPost메소드를 구현
	
	// service : get, post보다 가장 먼저 호출되는 메소드
	//			만약 doGet, doPost를 사용할거라면 service 메소드는 주석처리하고 사용
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//한글 인코딩 설정(POST방식). get방식은 적용X
		request.setCharacterEncoding("utf-8"); //post만 적용
//		response.setCharacterEncoding("utf-8"); // post, get 적용
		response.setContentType("text/html;charset=utf-8"); //브라우저 출력용
		PrintWriter out = response.getWriter();
		
		String data = request.getParameter("data");
		System.out.println(data);
		out.println(data);
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String data = request.getParameter("data");
		System.out.println("GET방식: "+data);
		out.println(data);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String data = request.getParameter("data");
		System.out.println("POST방식: "+data);
		out.println(data);
	}

}
