<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <% request.setCharacterEncoding("utf-8"); %> --%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="formCheck.js"></script>
  <style>
      #butt{
          margin-top: 50px;
          float: right;
      }
      h2{
          margin-top: 30px;
          margin-bottom: 50px;
      }
      label{
          font-weight: 900;
      }
      .butt{
        float: right;
      }
      
      input:-webkit-autofill { -webkit-box-shadow: 0 0 0 30px #fff inset;}
  </style>
</head>
<body>
<div class="container">
  <h2>회원가입</h2>
  <!-- <p>빨간색 부분은 <code>*필수입력</code> 입니다.</p> -->
<form method="post" action="/cj2103//signUp" name="myform">
  <!-- <form method="post" action="testSignUp.jsp" name="myform"> -->
    <div class="form-group was-validated">
      <label for="uname">아이디</label>
      <input type="text" class="form-control" id="uname" placeholder="아이디를 입력하세요. (첫글자는 영문, 4~20자리 영문+숫자로만 가능합니다)" name="mid" required>
      <div class="valid-feedback">입력 확인</div>
      <div class="invalid-feedback">* 필수입력</div>
      <button type="button" class='butt btn btn-secondary btn-sm' onclick="midbutt()">아이디 확인</button>
    </div>
    <div class="form-group was-validated">
      <label for="pwd">비밀번호</label>
      <input type="password" class="form-control" id="pwd1" placeholder="비밀번호를 입력하세요. (8자리 이상 영어+숫자 or 특수문자포함)" name="pwd1" required>
      <div class="valid-feedback">입력 확인</div>
      <div class="invalid-feedback">* 필수입력</div>
    </div>
    <div class="form-group was-validated">
      <label for="pwd">비밀번호 확인</label>
      <input type="password" class="form-control" id="pwd2" placeholder="비밀번호를 한 번 더 입력하세요." name="pwd2" required>
      <div class="valid-feedback">입력 확인</div>
      <div class="invalid-feedback">* 필수입력</div>
      <button type="button" class='butt btn btn-secondary btn-sm' onclick="pwdbutt()">비밀번호 확인</button>
    </div>
    <div class="form-group was-validated">
      <label for="pwd">이름</label>
      <input type="text" class="form-control" id="name" placeholder="이름을 입력하세요." name="name" required>
      <div class="valid-feedback">입력 확인</div>
      <div class="invalid-feedback">* 필수입력</div>
      <button type="button" class='butt btn btn-secondary btn-sm' onclick="namebutt()">이름 확인</button>
    </div>
    <div class="form-group">
        <label for="sel1">성별</label>
        <select class="form-control" id="sel1" name="gender">
            <option value="선택안함">선택안함</option>
            <option value="남자">남자</option>
            <option value="여자">여자</option>
        </select>
    </div>
    <div class="form-group">
        <label for="date">생년월일</label>
        <input type="date" class="form-control" id="date1" name="date1">
    </div>
    <div class="form-group" id="butt">
        <button type="submit" class="btn btn-primary" onclick="lastCheck()">가입하기</button>
        <button type="button" class="btn btn-primary">취소</button>
        <button type="reset" class="btn btn-primary">지우기</button>
    </div>
</form>
</div>
</body>
</html>