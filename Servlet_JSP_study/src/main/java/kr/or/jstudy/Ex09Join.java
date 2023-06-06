package kr.or.jstudy;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/JoinService")
public class Ex09Join extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String tel = request.getParameter("tel");
		String gender = request.getParameter("gender");
		String[] hobby = request.getParameterValues("hobby");
		String birthday = request.getParameter("birthday");
		String color = request.getParameter("color");
		String country = request.getParameter("country");
		String talk = request.getParameter("talk");
		
		System.out.println("ID : "+ id);
		System.out.println("NAME : "+ name);
		System.out.println("EMAIL : "+ email);
		System.out.println("TEL : "+ tel);
		System.out.println("GENDER : "+ gender);
		System.out.print("HOBBY : ");
		for(int i = 0; i < hobby.length; i++) {
			System.out.print(hobby[i]+" ");
		}
		System.out.println();
		System.out.println("BIRTHDAY : "+ birthday);
		System.out.println("COLOR : "+ color);
		System.out.println("COUNTRY : "+ country);
		System.out.println("TALK : "+ talk);
				
	}

}
