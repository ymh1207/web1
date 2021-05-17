<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test2.jsp</title>
</head>
<body>
	<h2>이곳은 test2.jsp</h2>
	<p>이곳은 선언문</p>
	<%!
		String str = "대한민국";
		int atom(int su1,int su2){
			int res=su1+su2;
			return res;
		}
	%>
	<p>이곳은 java코드(실행문)</p>
	<%
		out.println("<font color='blue'>이곳은 출력부 입니다.</font><br/>");
		out.println("str = "+str+"<br/>");
		int res=atom(1,2);	
		out.println("res = "+res+"<br/>");	
	%>
	<p>아래는 표현식을 이용하여 출력합니다.</p>
	<p><%= "<font color='red'>이곳은 표현식 안입니다.</font>."%></p>
</body>
</html>