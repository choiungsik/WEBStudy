
<!-- ������(import�� �� �ڵ������̴� ���� �۾��ʿ����) -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- ����(�޼ҵ� ����) -->
	<%!
		public int sum(int num1, int num2){
		int num3 = num1 + num2;
		return num3;
	}
	%>
	
<!-- ��ũ��Ʋ��(java�ڵ� �ۼ�) -->
	<%
	int num1 = 2;
	int num2 = 3;
	System.out.println(num1 + num2);
	
	int num4 = 0;
	
	for (int i = 0; i <= 100; i++){
		num4 += i;
	}
	%>
	
<!-- ǥ����(�ܺο� ǥ�� ���� �������� ����, out.print�� ����) -->
	<%=
	sum(1,2), num4
	%>

</body>
</html>