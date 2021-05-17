<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>title</title>
</head>
<body>
	<h2>회원가입</h2>
	<form name='myform' method='post' action='test8Ok3.jsp'>
		<div>아이디 : <input type='text' name='mid'/></div>
		<div>비밀번호 : <input type='password' name='pwd'/></div>
		<div>성명 : <input type='text' name='name'/></div>
		<div>나이 : <input type='number' name='age'/></div>
		<div>성별 : 
			<input type='radio' name='gender' value='남자' checked/>남자
			<input type='radio' name='gender' value='여자'/>여자
		</div>
		<div>주소 : <input type='text' name='address'/></div>
		<div>
			<input type='submit' value='전송'/>
			<input type='reset' value='취소'/>
		</div>
	</form>
</body>
</html>