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
		// �ѱ� ���� ���ڵ�
		response.setCharacterEncoding("EUC-KR");
		// �وf�� printwriter ���� ���� ���ڵ� ��ų ��
		// ���������� ���ڿ� �±� �ۼ�
		PrintWriter out = response.getWriter();
		
		out.print("<html>");
		out.print("<body>");
		out.print("Hello World!");
		out.print("<br>");
		out.print("�ѱ�����");
		out.print("<br>");
		// �̹����� webcontect�� ������ �� �������� ������ ���� �Ȱ��� webcontent��ġ�� �ǹǷ� ���� ��ġ������ �׳� ���ϸ� �ۼ��ϸ� ��������
		out.print("<img src = 'pic1.jpg'>");
		out.print("<img src = 'pic2.jpg'>");
		out.print("<img src = 'pic3.jpg'>");
		out.print("</body>");
		out.print("</html>");
		
	}

}
