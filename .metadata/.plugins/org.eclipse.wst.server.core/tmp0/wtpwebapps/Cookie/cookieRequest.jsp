<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URLEncoder"%>
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
	Cookie[] cookies = request.getCookies(); // �ϳ��� �����Ǵ°� �ƴ϶� ���� ���� �����Ƿ� �迭���·� ����
	
	for(int i = 0; i<cookies.length; i++){
		if(cookies[i].getName().equals("id")){
			out.print(URLDecoder.decode(cookies[i].getValue(), "EUC-KR"));
		}
	}
	%>
</body>
</html>