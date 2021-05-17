<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
 String sw= request.getParameter("sw")==null?"" : request.getParameter("sw");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body{
            margin: 0px;
        }
        .container{
            width: 100%;
            margin: 0px;
        }
        .a{
            /* background-color: gray; */
            text-align: center;
            height: 100vh;
            float: left;
            width: 20%;
        }
        .b{
            /* background-color: skyblue; */
            height: 100vh;
            width: 80%;
            float: left;
            margin:300px 0px 0px 0px;
        }
        img{
            margin: 10px;
            border: 2pt solid red;
        }
        .c{
        }
    </style>
    <title>Document</title>
</head>
<body>
    <div class="container">
        <div class="a">
            <a href="selftest.jsp?sw=jpg1"><img src="../images/1.jpg" width="200px"></a>
            <a href="selftest.jsp?sw=jpg2"><img src="../images/2.jpg" width="200px"></a>
            <a href="selftest.jsp?sw=jpg3"><img src="../images/3.jpg" width="200px"></a>
            <a href="selftest.jsp?sw=jpg4"><img src="../images/4.jpg" width="200px"></a>
            <a href="selftest.jsp?sw=jpg5"><img src="../images/5.jpg" width="200px"></a>
            <a href="selftest.jsp?sw=jpg6"><img src="../images/6.jpg" width="200px"></a>
        </div>
        <div class="b">
        	<div class='c'>
	        <% if(sw.equals("jpg1")) { %>
			<%@include file="jpg1.jsp"%>
			<% }else if(sw.equals("jpg2")){%>
				<%@include file="jpg2.jsp"%>
			<% }else if(sw.equals("jpg3")){ %>
				<%@include file="jpg3.jsp"%>
			<% }else if(sw.equals("jpg4")){ %>
			<%@include file="jpg4.jsp"%>
			<% }else if(sw.equals("jpg5")){ %>
			<%@include file="jpg5.jsp"%>
			<% }else if(sw.equals("jpg6")){ %>
			<%@include file="jpg6.jsp"%>
			<% }else{ %>
				<br/>
				<h2>content</h2>
				<hr/>	
			<% } %>
			</div>
        </div>
    </div>
</body>
</html>