<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("EUC-KR");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	
	Class.forName("oracle.jdbc.driver.OracleDriver");  //strim�� ���� ojdbc6 �ȿ� �ִ� class������ ������
	
	String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
	String db_id = "hr";
	String db_pw = "hr";
	Connection conn = DriverManager.getConnection(db_url, db_id, db_pw);
	
	String sql = "insert into ex_member values(?, ?, ?)";
	PreparedStatement psmt = conn.prepareStatement(sql);
	psmt.setString(1, id);
	psmt.setString(2, pw);
	psmt.setString(3, name);
	
	int cnt = psmt.executeUpdate();
	
	if (psmt != null){
		psmt.close();
	}
	if (conn != null){
		conn.close();
	}
	
	if (cnt >0) {
		System.out.print("ȸ������ ����");
		response.sendRedirect("exMain.jsp");
	} else {
		System.out.print("ȸ������ ����");
		response.sendRedirect("exJoin.jsp");
	}
	%>
</body>
</html>