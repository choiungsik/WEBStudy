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
		//HttpSession session = request.getSession(); // 내장객체로 이미 있기때문에 별도로 받을 필요는 없음(단 servlet은 써야함)
		session.setAttribute("id", "lee");
	%>
	
</body>
</html>