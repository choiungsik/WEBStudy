<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<% //String name = request.getParameter("name");
	Cookie[] cookies = request.getCookies();
	
	String name = null;
	
	//for(int i=0; i<cookies.length; i++){
	//	if(cookies[i].getName().equals("name")){
		//	name = URLDecoder.decode(cookies[i].getValue(), "EUC-KR");
		//}
//	}
	
	name = (String)session.getAttribute("name");
		System.out.println(name);%>
		<table border="1">
			<td>
			로그인성공!<br>
			<a><%= name%>님 환영합니다.</a><br>
			<a href="main.jsp">로그아웃</a>
			</td>
		</table>
</body>
</html>