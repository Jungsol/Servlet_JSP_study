package kr.or.jstudy;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Info")
public class Ex08Info extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		// 직업, 성별, 취미 정보를 가져온 후 콘솔창에 출력하시오.
		// getParameter() : 값을 하나만 가져옴
		// getParameterValues() : 하나 이상의 값을 가져옴
		//	-> 문자열 배열로 변환
		//  -> 여러 개의 input 태그 name속성이 동일한 경우
		//		(= 체크박스 뿐 아니라 text 타입도 묶어서 가져올 수 있음)
		
		String job = request.getParameter("job");
		String gender = request.getParameter("gender");
		String[] hobby = request.getParameterValues("hobby");
		// hobby라는 변수 자체는 데이터를 저장하고 있는 주소값을 가지고 있다.
				
		
		out.println("직업: "+job+"<br>");
		out.println("성별: "+gender+"<br>");
		out.println("취미: ");
		for(int i=0; i<hobby.length; i++) {
			out.println(hobby[i]);
			if(i < hobby.length-1) {
				out.println(", ");
			}
		}
				
		
	}
}
