package kr.or.jstudy;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/dataSend") // Ex03_dataSend.html의 form태그와 동일하게 이름 맞춤
public class Ex03DataSend extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// request.getParameter(input태그의 name속성값)
		String data = request.getParameter("data");
		System.out.println(data);
	}

}
