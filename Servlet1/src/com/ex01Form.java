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
		System.out.println("서버페이지 접속성공");
		String id = request.getParameter("id");
		String pw = request.getParameter("password");
		String hobit = request.getParameter("hobit");
		String gender = request.getParameter("gender");
		System.out.println("사용자가 입력한 ID : "+id);
		System.out.println("사용자가 입력한 PW : " + pw);
		System.out.println("사용자가 선택한 관심사 : "+ hobit);
		System.out.println("사용자의 성별 : "+ gender);
	}

}
