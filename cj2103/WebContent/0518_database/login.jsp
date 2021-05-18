<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>login.jsp(회원인증창)</title>
	<script>
		function fCheck(){
			myform.submit();
		}
	</script>
	<style>
		#container{
			margin-top:100px;
			margin:0 auto;
			border-collapse:collapse;
		}
		table{
			width : 350px;
			margin : 0 auto;
			border-collapse : collapse;
			
		}
		table,th,td{
			border:1px solid gray;
			padding:20px;
		}
		th{
			background-color:#ccc;
		}
	</style>
</head>
<body>
	<div id='container'>
		<form name="myform" method="post" action="<%=request.getContextPath()%>/LoginOk">
			<table>
				<tr>
					<th colspan=2><font size="5">로 그 인</font></th>
				</tr>
				<tr>
					<th><label for="mid">아이디</label></th>
					<td><input type="text" name="mid" id="mid" autofocus/></td>
				</tr>
				<tr>
					<th><label for="pwd">비밀번호</label></th>
					<td><input type="password" name="pwd" id="pwd"/></td>
				</tr>
				<tr>
					<td colspan="2" style="text-align:center">
						<input type="button" value="로그인" onclick="fCheck()"/> &nbsp;
						<input type="reset" value="취소"/> &nbsp;
						<input type="button" value="회원가입" onclick="location.href='loginInput.jsp';"/>
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>