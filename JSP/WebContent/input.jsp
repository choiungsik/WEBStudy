<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" %>
<%@ page errorPage="error.jsp"%>   <!-- ������ ���� �� �ڵ尡 ������ �ʵ��� ������ ������������ �̵��ϰ� ���� -->
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action=return.jsp>  <!-- �⺻���� servlet�� ã�� ������ Ȯ���ڸ� ����ξ���� -->
		<input type="text" name="num1">
		<input type="text" name="num2">
	<select name="select">
		<option>+</option>
		<option>-</option>
		<option>*</option>
		<option>/</option>
	</select>
		<input type="submit" value="���">
	</form>
	<%= 2/0 %>
</body>
</html>