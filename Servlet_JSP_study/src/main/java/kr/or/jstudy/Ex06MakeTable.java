package kr.or.jstudy;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/makeTable")
public class Ex06MakeTable extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=euc-kr");
		PrintWriter out = response.getWriter();
		
		int floor = Integer.parseInt(request.getParameter("floor"));
		int room = Integer.parseInt(request.getParameter("room"));
		
		out.print("<table border='1'>");
		
		int k = 0; //테이블 내 표시되는 숫자를 자동증가시키기 위함
		
		for(int i=0; i<floor; i++) {
			out.print("<tr>");
			for(int j=0; j<room; j++) {
				k++;
				out.print("<td>"+k+"</td>");					
			}
			out.print("</tr>");
		}
		
		
	}

}

