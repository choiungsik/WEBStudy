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
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
		String select = request.getParameter("select");
		%>
		<!-- üũ�ڽ��� ���� �������� ���� ���ÿ� �Ѿ���� ��쿡�� request.getParameterValues(name)�� ���� 
		�Ѿ���� ���� �迭�������� �����ؼ� �����;� �ȴ�. -->
	<%
		int result = 0;

		if (select.equals("+")) {
			result = num1 + num2;
		} else if (select.equals("-")) {
			result = num1 - num2;
		} else if (select.equals("*")) {
			result = num1 * num2;
		} else if (select.equals("/")) {
			result = num1 / num2;
		}
		out.print(num1+select+num2+" = "+result);
	%>
</body>
</html>