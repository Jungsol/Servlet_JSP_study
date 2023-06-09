package kr.or.jstudy;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/image")
public class Ex05Image extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html; charset=euc-kr");
		PrintWriter out = response.getWriter();

		String image = request.getParameter("image");

		if (image.equals("duck")) {
			out.print("<img src='images/duck.jpg'>");
		} else if (image.equals("bear")) {
			out.print("<img src='images/bear.jpg'>");
		} else {
			out.print("<img src='images/mouse.jpg'>");
		}

	}

}
