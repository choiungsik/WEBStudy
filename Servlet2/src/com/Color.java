package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Color")
public class Color extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String color = request.getParameter("color");
		System.out.println(color);

		response.setCharacterEncoding("EUC-KR");
		PrintWriter out = response.getWriter();
		out.print("<html>");
		out.print("<body bgcolor="+color+">");
		out.print("</body>");
		out.print("</html>");
	}

}
