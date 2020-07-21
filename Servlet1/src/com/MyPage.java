package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/MyPage")
public class MyPage extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 한글 문자 인코딩
		response.setCharacterEncoding("EUC-KR");
		// 바늗시 printwriter 생성 전에 인코딩 시킬 것
		// 웹페이지에 글자와 태그 작성
		PrintWriter out = response.getWriter();
		
		out.print("<html>");
		out.print("<body>");
		out.print("Hello World!");
		out.print("<br>");
		out.print("한글측정");
		out.print("<br>");
		// 이미지를 webcontect에 넣으면 이 페이지가 실행할 때는 똑같은 webcontent위치로 되므로 같은 위치에서는 그냥 파일명만 작성하면 정상적동
		out.print("<img src = 'pic1.jpg'>");
		out.print("<img src = 'pic2.jpg'>");
		out.print("<img src = 'pic3.jpg'>");
		out.print("</body>");
		out.print("</html>");
		
	}

}
