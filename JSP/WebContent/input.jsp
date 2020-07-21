<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" %>
<%@ page errorPage="error.jsp"%>   <!-- 에러가 있을 때 코드가 보이지 않도록 별도의 에러페이지로 이동하게 설정 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action=return.jsp>  <!-- 기본으로 servlet을 찾기 때문에 확장자를 적어두어야함 -->
		<input type="text" name="num1">
		<input type="text" name="num2">
	<select name="select">
		<option>+</option>
		<option>-</option>
		<option>*</option>
		<option>/</option>
	</select>
		<input type="submit" value="계산">
	</form>
	<%= 2/0 %>
</body>
</html>