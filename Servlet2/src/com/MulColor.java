package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/MulColor")
public class MulColor extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String color = request.getParameter("color");
		String num1 = request.getParameter("num1");
		String num2 = request.getParameter("num2");
		int mul1 = Integer.parseInt(num1);
		int mul2 = Integer.parseInt(num2);

		response.setCharacterEncoding("EUC-KR");
		PrintWriter out = response.getWriter();
		out.print("<html>");
		out.print("<body>");
		out.print("<table border='1' bgcolor="+color+">");
		for (int i = mul1; i < mul2+1; i++) {
			out.print("<tr>");
			for (int j = 0; j < 9; j++) {
				out.print("<td>"+i+" * "+(j+1)+" = "+(i*(j+1))+"</td>");
			}
			out.print("</tr>");
		}
		out.print("</table>");
		out.print("</body>");
		out.print("</html>");
	}

}
