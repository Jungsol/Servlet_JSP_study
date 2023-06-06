package kr.or.jstudy;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex02Response")
public class Ex02Response extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// response 객체 : 사용자에게 정보를 보낼 때 사용
		// 데이터는 물론, 페이지 이동시에도 사용함.

		// 문자인코딩설정 : 컴퓨터가 해석할 수 있도록 변환(euc-kr(지역적), utf-8(전세계))
		// ㄴ "text/html"의미 : MIME타입. 클라이언트에게 전송된 문서의 다양성을 알려주기 위한 메커니즘(응답할 때 html인지,
		// 						동영상인지 등으로 정의하는 것)
		response.setContentType("text/html; charset=euc-kr");
		PrintWriter out = response.getWriter();

		out.print("<h1>Hello World!</h1>");
		out.print("<h1>안녕하세요</h1>");
	}

}
