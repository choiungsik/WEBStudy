
<!-- 지시자(import할 때 자동생성이니 별도 작업필요없음) -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- 선언문(메소드 생성) -->
	<%!
		public int sum(int num1, int num2){
		int num3 = num1 + num2;
		return num3;
	}
	%>
	
<!-- 스크립틀립(java코드 작성) -->
	<%
	int num1 = 2;
	int num2 = 3;
	System.out.println(num1 + num2);
	
	int num4 = 0;
	
	for (int i = 0; i <= 100; i++){
		num4 += i;
	}
	%>
	
<!-- 표현식(외부에 표현 실제 보여지는 문장, out.print와 동일) -->
	<%=
	sum(1,2), num4
	%>

</body>
</html>