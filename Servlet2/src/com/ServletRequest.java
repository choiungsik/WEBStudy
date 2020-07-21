package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ServletRequest")
public class ServletRequest extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		PrintWriter out = response.getWriter();
		String data = request.getParameter("data");
		out.print("<html>");
		out.print("<body>");
		out.print(data);
		out.print("</body>");
		out.print("</html>");
	}

}
