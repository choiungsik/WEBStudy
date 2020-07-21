<%@page import="java.net.URLEncoder"%>
<%@page import="java.sql.ResultSet"%>
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
	String name = null;
	
	Class.forName("oracle.jdbc.driver.OracleDriver");  //strim과 같이 ojdbc6 안에 있는 class파일을 가져옴
	
	String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
	String db_id = "hr";
	String db_pw = "hr";
	Connection conn = DriverManager.getConnection(db_url, db_id, db_pw);
	
	String sql = "select name from ex_member where id=? and pw=?";
	PreparedStatement psmt = conn.prepareStatement(sql);
	psmt.setString(1, id);
	psmt.setString(2, pw);
	
	ResultSet rs = psmt.executeQuery();
	
	if (rs.next()){
		name = rs.getString("NAME");
	}
	
	if (rs != null){
		rs.close();
	}
	if (psmt != null){
		psmt.close();
	}
	if (conn != null){
		conn.close();
	}
	
	if (name != null) {
		System.out.print("로그인 성공");
		response.sendRedirect("LoginSuccess.jsp?name="+URLEncoder.encode(name, "EUC-KR"));
	} else {
		System.out.print("로그인 실패");
		response.sendRedirect("LoginFail.jsp");
	}
	%>
</body>
</html>