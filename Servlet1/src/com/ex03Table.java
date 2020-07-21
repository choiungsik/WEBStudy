package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ex03Table")
public class ex03Table extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 한글 문자 인코딩
		response.setCharacterEncoding("EUC-KR");
		// 바늗시 printwriter 생성 전에 인코딩 시킬 것
		// 웹페이지에 글자와 태그 작성
		PrintWriter out = response.getWriter();
		String num1 = request.getParameter("num1");
		int num2 = Integer.parseInt(num1);
		
		
		out.print("<html>");
		out.print("<body>");
		out.print("안녕하세요!");
		out.print("<br>");
		out.print("<table border='1'>");
		out.print("<tr>");
		for (int i = 0; i < num2; i++) {
			out.print("<td>"+(i+1)+"</td>");
			
		}
		out.print("</tr>");
		out.print("</table>");
		out.print("</body>");
		out.print("</html>");
	}

}
