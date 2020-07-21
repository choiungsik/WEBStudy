package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sun.awt.image.IntegerInterleavedRaster;

@WebServlet("/ex02Plus")
public class ex02Plus extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String num1 = request.getParameter("num1");
		String num2 = request.getParameter("num2");
		String cal = request.getParameter("cal");
		
		int num3 = Integer.parseInt(num1);
		int num4 = Integer.parseInt(num2);
		int sum = 0;
		if (cal.equals("+")) {
			sum = num3 + num4;			
		} else if (cal.equals("-")) {
			sum = num3 - num4;
		}else if (cal.equals("*")) {
			sum = num3 * num4;
		}else if (cal.equals("/")) {
			sum = num3 / num4;
		}
		response.setCharacterEncoding("EUC-KR");
		PrintWriter out = response.getWriter();
		out.print("<html>");
		out.print("<body>");
		out.print("입력한 결과값 : ");
		out.print(sum);
		out.print("</body>");
		out.print("</html>");
	}

}
