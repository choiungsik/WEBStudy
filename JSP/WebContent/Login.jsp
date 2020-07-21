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
		String id = request.getParameter("id");
		int pw = Integer.parseInt(request.getParameter("pw"));
		
		if (id.equals("smart") && pw == 123) {
			response.sendRedirect("LoginTrue.jsp");
		} else {
			response.sendRedirect("LoginFalse.jsp");
		}
	%>
</body>
</html>