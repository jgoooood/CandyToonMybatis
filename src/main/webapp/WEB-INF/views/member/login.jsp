<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>로그인</title>
        <link rel="stylesheet" href="../resources/CSS/reset.css">
        <link rel="stylesheet" href="../resources/CSS/member/login.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Bungee&display=swap" rel="stylesheet">
    </head>
    <body>
        <script>
            document.addEventListener("DOMContentLoaded", function() {
                document.querySelector("form").addEventListener("submit", (event)=>{
                    const loginId = document.querySelector("#memberId").value;
                    const loginPw = document.querySelector("#memberPw").value;

                    const idRegExp = /^[a-z0-9]{5,10}$/g;
                    const pwRegExp = /^[a-z0-9]{6,20}$/g;

                    if(!idRegExp.test(loginId)) {
                        alert("아이디는 영문, 숫자 조합 5~10자 입력해주세요.");
                        event.preventDefault();
                    } else if(!pwRegExp.test(loginPw)) {
                        alert("비밀번호는 영문, 숫자 조합 6~20자 입력해주세요.");
                        event.preventDefault();
                    } 
                })
            })
         </script>
        <div id="login">
            <div ID="loginLogo">
                <a href="/index.jsp"><p>CANDY TOON</p></a>
            </div>
            <form action="/member/login.do" method="post">
	            <div id="loginInput">
                    <div id="loginId">
                        <input type="text" id="memberId" name="memberId" placeholder="아이디" autofocus>
                        <img src="../resources/images/icons/login.png" alt="로그인">
                    </div>
                    <div id="loginPw">
                        <input type="password" id="memberPw" name="memberPw" placeholder="비밀번호">
                        <img src="../resources/images/icons/pw.png" alt="비밀번호">
                    </div>
            	</div>
                <div id="loginBtn">
                    <button type="submit">로그인</button>
                </div>
                <div id="find">
                    <ul>
                        <li><a href="/member/findId.do">아이디찾기</a></li>
                        <li><a href="/member/confirmPw.do">비밀번호변경</a></li>
                        <li><a href="/member/register.do">회원가입</a></li>
                    </ul>
                </div>
           	</form>
        </div>
    </body>
</html>