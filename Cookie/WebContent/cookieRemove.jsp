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
		Cookie cookie = new Cookie("id", "smhrd");
		cookie.setMaxAge(60);
		response.addCookie(cookie);
	%>
</body>
</html>