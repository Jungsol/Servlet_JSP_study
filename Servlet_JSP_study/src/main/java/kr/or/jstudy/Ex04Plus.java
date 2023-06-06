package kr.or.jstudy;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Plus")
public class Ex04Plus extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setContentType("text/html; charset=euc-kr");
		PrintWriter out = response.getWriter();
		
		// 두 수의 정보(num1, num2)를 변수에 저장
		String num1 = request.getParameter("num1");
		String num2 = request.getParameter("num2");
		
		// 문자열 -> 정수형으로 변환
		int n1 = Integer.parseInt(num1);
		int n2 = Integer.parseInt(num2);
				
		

		out.print("<h1>연산결과</h1>");
		out.print("<h1>"+(n1+n2)+"</h1>");
		
	}

}
