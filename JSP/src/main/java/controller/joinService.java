package controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.TestMemberDAO;

@WebServlet("/joinService")
public class joinService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr"); // DB에 한글로 저장하기 위함
		
		// id, pw, nick 변수에 저장
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String nick = request.getParameter("nick");
		
		TestMemberDAO dao = new TestMemberDAO();
		int cnt = dao.join(id, pw, nick);
		
		if(cnt > 0) {
			// 한글닉네임을 사용자에게 표시할 때 encode 메소드 이용해야 한글표시됨.
			response.sendRedirect("ex14Join/joinTrue.jsp?nick="+URLEncoder.encode(nick,"utf-8"));
			
			
			/* response.sendRedirect("ex14Join/joinTrue.jsp?nick="+nick); */
			// 위 코드로 처리할 경우 nick이 한글이면 아래 에러뜨고, 정상처리안됨
			// - 에러내용 : [ex14Join/joinTrue.jsp?nick=DB저장된 한글 닉네임]인 HTTP 응답 헤더 [Location](이)가 유효하지 않은 값이므로 응답에서 제거되었습니다.
			// → 위에서 말하는 nick는 단순 전달자역할
		} else {
			response.sendRedirect("ex14Join/joinFalse.jsp");
		}
		
	}

}
