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
		// �ѱ� ���� ���ڵ�
		response.setCharacterEncoding("EUC-KR");
		// �وf�� printwriter ���� ���� ���ڵ� ��ų ��
		// ���������� ���ڿ� �±� �ۼ�
		PrintWriter out = response.getWriter();
		String num1 = request.getParameter("num1");
		int num2 = Integer.parseInt(num1);
		
		
		out.print("<html>");
		out.print("<body>");
		out.print("�ȳ��ϼ���!");
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
