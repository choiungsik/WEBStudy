<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<% String name = request.getParameter("name");%>
		<table border="1">
			<td>
			�α��μ���!<br>
			<a><%= name%>�� ȯ���մϴ�.</a><br>
			<a href="main.jsp">�α׾ƿ�</a>
			</td>
		</table>
</body>
</html>