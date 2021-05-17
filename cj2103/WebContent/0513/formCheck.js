'use strict';
var midCheckSw=0;
var pwdCheckSw1=0;
var pwdCheckSw2=0;
var nameCheckSw=0;
var lastMid="";
var lastPwd1="";
var lastPwd2="";
var lastName="";

function midbutt(){
    var mid=document.getElementById('uname').value;
    var regmid= /^[A-Za-z]{1}[A-Za-z0-9]{3,19}$/gm;
    if(mid==""){
        alert("아이디를 입력해주세요");
        return false;
    }else{
        if(regmid.test(mid)){
            alert("사용가능한 아이디입니다.");
            midCheckSw=1;
            lastMid=mid;
        }else{
            alert("사용할 수 없는 아이디입니다.\n(아이디는 4~20자리, 첫글자 숫자X 영어+숫자로만 가능합니다.)");
            return false;
        }
    }
}
function pwdbutt(){
    var pwd1=document.getElementById('pwd1').value;
    var pwd2=document.getElementById('pwd2').value;
    var regpwd=/^(?=.*[a-zA-Z])((?=.*\d)|(?=.*\W)).{6,20}$/gm;
    if(pwd1!=pwd2){
        alert("비밀번호를 다시 확인해주세요.");
        return false;
    }
    else if(pwd1==""){
        alert("비밀번호를 입력해주세요.");
        return false;
    }
    else if(pwd2==""){
        alert("비밀번호를 한번 더 입력해주세요.");
        return false;
    }
    else{
        if(regpwd.test(pwd1)){
            alert("사용가능한 비밀번호입니다.");
            pwdCheckSw1=1;
            pwdCheckSw2=1;
            lastPwd1=pwd1;
            lastPwd2=pwd2;
        }else{
            alert("사용 할 수 없는 비밀번호입니다.\n(비밀번호는 8글자이상 영어+숫자or특수문자 포함)");
            return false;
        }
    }
}

function namebutt(){
    var name=document.getElementById('name').value;
    var regname= /^[가-힣a-zA-Z]+$/gm;
    if(name==""){
        alert("이름을 입력해주세요");
        return false;
    }else{
        if(regname.test(name)){
            alert("이름이 확인되었습니다.");
            nameCheckSw=1;
            lastName=name;
        }else{
            alert("이름은 한글이나 영어로 써야합니다.");
            return false;
        }
    }
}

function lastCheck(){
    var mid=document.getElementById('uname').value;
    var pwd1=document.getElementById('pwd1').value;
    var pwd2=document.getElementById('pwd2').value;
    var name=document.getElementById('name').value;
    if(lastMid==mid){
        midCheckSw=1;
    }else{
        midCheckSw=0;
    }
    if(lastPwd1==pwd1){
        pwdCheckSw1=1;
    }else{
        pwdCheckSw1=0;
    }
    if(lastPwd2==pwd2){
        pwdCheckSw2=1;
    }else{
        pwdCheckSw2=0;
    }
    if(lastName==name){
        nameCheckSw=1;
    }else{
        nameCheckSw=0;
    }
    if(midCheckSw==1 && pwdCheckSw1==1 && nameCheckSw==1 && pwdCheckSw2==1){
        alert("가입 성공!");
        // 나중에 id, pwd, name, .... 받아서 넘기는 부분 
    }else{
        if(midCheckSw==0){
            alert("아이디를 확인해주세요.");
            return false;
        }else if(pwdCheckSw1==0){
            alert("비밀번호를 확인해주세요.");
            return false;
        }else if(pwdCheckSw2==0){
            alert("비밀번호를 확인해주세요.");
            return false;
        }
        else{
            alert("이름을 확인해주세요.");
            return false;
        }
    }
}
