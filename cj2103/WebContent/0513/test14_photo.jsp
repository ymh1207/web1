<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String sw2=request.getParameter("sw2")==null?"":request.getParameter("sw2");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>photo</title>
<style>
	.container{
		width:100%;
		margin:0px auto;
	}
	.photoMenu{
		float:left;
		width:150px;
		text-align:center;
	}
</style>
</head>
<body>
	<br/>
	<h2>이곳은 포토갤러리 입니다.</h2>
	<hr/>
	<div class="container">
		<div class="photoMenu">
			<p><a href="test14.jsp?sw=photo&sw2=1">강아지</a></p>
			<p><a href="test14.jsp?sw=photo&sw2=2">강아지</a></p>
			<p><a href="test14.jsp?sw=photo&sw2=3">강아지</a></p>
			<p><a href="test14.jsp?sw=photo&sw2=4">강아지</a></p>
			<p><a href="test14.jsp?sw=photo&sw2=5">강아지</a></p>
		</div>
		<div class="photoContent">
			<h4>작 품 전 시 회</h4>
			<%if(sw2.equals("1")) {%>
			<p><img src="../images/dog1.jpg" width="500px"/></p>
			<%}else if(sw2.equals("2")) {%>
			<p><img src="../images/dog2.jpg" width="500px"/></p>
			<%}else if(sw2.equals("3")) {%>
			<p><img src="../images/dog3.jpg" width="500px"/></p>
			<%}else if(sw2.equals("4")) {%>
			<p><img src="../images/dog4.jpg" width="500px"/></p>
			<%}else if(sw2.equals("5")){%>
			<p><img src="../images/dog5.jpg" width="500px"/></p>
			<%}else {%>
			<img src="../images/5.jpg" width='500px'/>
			<%} %>
		</div>
	</div>
</body>
</html>