package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ex01Form")
public class ex01Form extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("���������� ���Ӽ���");
		String id = request.getParameter("id");
		String pw = request.getParameter("password");
		String hobit = request.getParameter("hobit");
		String gender = request.getParameter("gender");
		System.out.println("����ڰ� �Է��� ID : "+id);
		System.out.println("����ڰ� �Է��� PW : " + pw);
		System.out.println("����ڰ� ������ ���ɻ� : "+ hobit);
		System.out.println("������� ���� : "+ gender);
	}

}
