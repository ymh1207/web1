<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>title</title>
</head>
<body>
	<h2>성적 자료</h2>
	<form name='myform' method='get' action='<%=request.getContextPath()%>/0514/T4'>
		<p>성명 : <input type='text' name='name'/></p>
		<p>학번 : <input type='text' name='hakbun'/></p>
		<p>국어 : <input type='number' name='kor'/></p>
		<p>영어 : <input type='number' name='eng'/></p>
		<p>수어 : <input type='number' name='mat'/></p>
		<p><input type='submit' value='전송'/>
			<input type='reset' value='다시입력'/>
		</p>
	</form>
</body>
</html>