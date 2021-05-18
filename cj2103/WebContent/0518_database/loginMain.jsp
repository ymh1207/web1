<%@page import="t0518_database.LoginVO"%>
<%@page import="java.util.List"%>
<%@page import="t0518_database.LoginDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String mid = (String)session.getAttribute("smid");
	String name = (String)session.getAttribute("sname");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>loginMain.jsp(로그인 완료 후 메뉴화면)</title>
	<%@include file="../include/bs.jsp" %>
	<script>
		function logDataDelete(){
			var ans=confirm("정말 탈퇴하시겠습니까?");
			if(ans){
				location.href="<%=request.getContextPath()%>/LogDataDelete?mid=<%=mid%>";
			}
		}
	</script>
	<style>
  	table{
  		margin-top:20px;
  	}
  	table, th, td {
      padding: 20px;     
    }
    td,th {
      text-align: center;
    }
    #tablemenu{
    text-align:left;
    }
  </style>
</head>
<body>
	<div class="container">
		<p><br/></p>
		<h2>정회원 공간</h2>
		<table class="table tabel-borderless">
			<tr>
				<td id="tablemenu"><font color='blue'><%=mid %></font>회원님 로그인 중입니다.</td>
				<td style="text-align:right">
					<a href="loginUpdate.jsp">회원정보수정</a> |
					<a href="javascript:logDataDelete()">회원탈퇴</a> |
					<a href="<%=request.getContextPath()%>/Logout">로그아웃</a>
				</td>
			</tr>
		</table>
		<hr/>
		<table class='table'>
		 	<tr>
		 		<th>번호</th>
		 		<th>아이디</th>
		 		<th>비밀번호</th>
		 		<th>성명</th>
		 		<th>포인트</th>
		 		<th>최종접속일</th>
		 	</tr>
<%
	//전체 회원리스트 가져오기
	LoginDAO dao = new LoginDAO();
	LoginVO vo = new LoginVO();
	List<LoginVO> vos=dao.logDataList();
	
	for(int i=0;i<vos.size();i++){
		vo=vos.get(i);
%>
		 	<tr>
		 		<td><%=vo.getIdx() %></td>
		 		<td><%=vo.getMid() %></td>
		 		<td><%=vo.getPwd() %></td>
		 		<td><%=vo.getName() %></td>
		 		<td><%=vo.getPoint() %></td>
		 		<td><%=vo.getLastdate() %></td>
		 	</tr>
<%} %>
		</table>
	</div>
</body>
</html>