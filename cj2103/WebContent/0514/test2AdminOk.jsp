<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String pwd = request.getParameter("pwd")==null?"":request.getParameter("pwd");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>title</title>
</head>
<body>
	<h2>관리자 인증 확인창</h2>
	<p>관리자 비밀번호를 확인하세요</p>
	<p>입력한 비밀번호는 : <%=pwd %> 입니다.</p>
	<p><a href="test2.jsp">다시 로그인</a></p>
</body>
</html>