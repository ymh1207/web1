<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>title</title>
</head>
<body>
	<h2>jsp선언문과 / 스크립틀릿 / 표현식</h2>
	<%
		int tot=0;
		for(int i=0;i<10;i++){
			tot+=i;
			out.println("1 + "+i+" = "+tot+"<br/>");
		}
	%>
	<%!
	 	public String strLower(String str){
			String res=str.toLowerCase();
			return res;
		}
	%>
	<p>
		소문자로 출력됩니다.<%=strLower("ABCD")%>
	</p>
</body>
</html>