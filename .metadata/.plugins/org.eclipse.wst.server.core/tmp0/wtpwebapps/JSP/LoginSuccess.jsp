<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
		<% String name = request.getParameter("name");
			System.out.println(name);%>
		<table border="1">
			<td>
			<a><%= name%>�� ȯ���մϴ�.</a><br>
			<a href="exMain.jsp">�α׾ƿ�</a>
			</td>
		</table>
</body>
</html>