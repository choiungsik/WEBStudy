<%@page import="java.net.URLEncoder"%>
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
		Cookie cookie = new Cookie("id", URLEncoder.encode("웅식", "EUC-KR"));  // 쿠키는 생성때부터 키값과 밸류값을 넣어야함
		response.addCookie(cookie); // 생성한 쿠키를 발송(로그인 성공한 사람들이 들어와서 발송받음)
	%>
	
</body>
</html>