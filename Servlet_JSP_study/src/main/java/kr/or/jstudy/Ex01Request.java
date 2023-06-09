package kr.or.jstudy;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//URL Mapping : 문자열 경로와 실제 실행할 서블릿 클래스를 매핑
//				외부에서 접근할 때 문자열 경로를 통해서 서블릿을 실행

@WebServlet("/Request") // 서버 프로그램을 동작시키기 위해 노출시키는 경로
public class Ex01Request extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setContentType("text/html; charset=euc-kr");
		PrintWriter out = response.getWriter();
		
		// request객체 : 요청에 대한 정보를 저장하는 객체;
		// 정보 : 데이터, 사용자ip, 데이터전송방식, 쿠키, 이전에 접속한 사이트주소, 인코딩방식 등...

		// 실습 - ip 가져오기(ip 별로 안내멘트 다르게 설정)
		String ip = request.getRemoteAddr();

		if (ip.equals("0:0:0:0:0:0:0:1")) {
			out.println("localhost 환영합니다.");
		} else {
			out.println("기타 환영합니다.");
		}
	}

}
