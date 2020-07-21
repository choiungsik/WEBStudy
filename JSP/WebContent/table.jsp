<%@page import="java.util.Scanner"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table border='1'>
	<%
		Scanner scan = new Scanner(System.in);
		int num1 = scan.nextInt();
		for (int i = 0; i < num1; i++){
			out.print("<td>"+(i+1)+"</td>");
		}
	%>
	</table>
</body>
</html>