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
		<!-- 체크박스와 같이 여러개의 값이 동시에 넘어오는 경우에는 request.getParameterValues(name)를 통해 
		넘어오는 값을 배열형식으로 저장해서 가져와야 된다. -->
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