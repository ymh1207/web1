<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="formCheck.js"></script>
    <title>Document</title>
    <style>
        body{
            margin: 0px;
        }
        .content{
            height: 100%
        }
        .menubar{
            margin: 20px 0px 20px 0px;
        }
        .footer{
            background-color: gray;
            height: 100px;
            margin: 0px;
            text-align: center;
            padding: 30px;
        }
        h1{
            text-align: center;
        }
        #butt{
            margin-top: 50px;
            float: right;
        }
        h4{
            margin-top: 30px;
            margin-bottom: 50px;
        }
        label{
            font-weight: 900;
        }
        .butt{
            float: right;
        } 
        .cotainer2{
            margin-top: 50px;
            height: 800px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>ARAZIO</h1>
        <div class="menubar">
            <div class="container">
                <nav class="navbar navbar-expand-md bg-light navbar-light">
                    <!-- Brand -->
                    <a class="navbar-brand" href="homepage.html">HOME</a>
                    <!-- Toggler/collapsibe Button -->
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                    <span class="navbar-toggler-icon"></span>
                    </button>
                    <!-- Navbar links -->
                    <div class="collapse navbar-collapse justify-content-end" id="collapsibleNavbar">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                        <a class="nav-link" href="#">펜션소개</a>
                        </li>
                        <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#">방소개</a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="roomintro1.html">101</a>
                            <a class="dropdown-item" href="roomintro2.html">102</a>
                            <a class="dropdown-item" href="roomintro3.html">103</a></div>
                        </li>
                        <li class="nav-item">
                        <a class="nav-link" href="#">부대시설</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#">예약</a>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="reservation.html">예약하기</a>
                                <a class="dropdown-item" href="cancel.html">예약조회/변경/취소</a>
                                <a class="dropdown-item" href="question.html">예약문의</a></div>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#">커뮤니티</a>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item" href="freeboard.html">자유게시판</a>
                                    <a class="dropdown-item" href="photoboard.html">포토앨범</a></div>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="login.html">로그인</a>
                                </li>
                                <li class="nav-item">
                                <a class="nav-link" href="signUp.html">회원가입</a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
        <div class="container cotainer2">
            <h4>회원가입</h4>
            <!-- <p>빨간색 부분은 <code>*필수입력</code> 입니다.</p> -->
            <form method="post" action="/cj2103/TestSignUp" name="myform">
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
                    <label for="name">이름</label>
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
    </div>
    <div class="footer">
        <div>
            청주시 서원구 사창동 그린컴퓨터 아트학원
        </div>
        Copyright 2021-05-20 ARAZIO Design by YMH
    </div>
</body>
</html>