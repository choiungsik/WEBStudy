package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Mul")
public class Mul extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String num1 = request.getParameter("mul");
		int mul = Integer.parseInt(num1);

		response.setCharacterEncoding("EUC-KR");
		PrintWriter out = response.getWriter();
		out.print("<html>");
		out.print("<body>");
		out.print("<table border='1'>");
		for (int i = 0; i < 9; i++) {
			out.print("<tr>");
			out.print("<td>"+mul+" * "+(i+1)+" = "+mul*(i+1)+"</td>");
			out.print("</tr>");
		}
		out.print("</table>");
		out.print("</body>");
		out.print("</html>");
	}

}
