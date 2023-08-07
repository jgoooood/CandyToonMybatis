<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>비밀번호 재설정</title>
        <link rel="stylesheet" href="../resources/CSS/reset.css">
        <link rel="stylesheet" href="../resources/CSS/member/confirmPw.css">
    </head>
    <body>
        <script>
            <!--
            이메일전송버튼
            function sendEmail() {
                const userId = document.querySelector("#user-id").value;
                const userEmail = document.querySelector("#user-email").value;

                const idRegExp = /^[a-z0-9]{5,10}$/g;
                const emailRegExp = /^[a-zA-Z0-9]{4,20}@[a-z]+\.[a-z]{3}/g;

                if(!idRegExp.test(userId)) {
                    alert("아이디는 영문, 숫자 조합 5~10자 입력해주세요.")
                    event.preventDefault();
                } else if (!emailRegExp.test(userEmail)) {
                    alert("올바른 이메일형식이 아닙니다.")
                    event.preventDefault();
                } else {
                    alert("인증키가 발송되었습니다.")
                    event.preventDefault();
                }
            }
            확인버튼
            function clickBtn() {
                const emailKey = document.querySelector("#key").value;
                if (!emailKey) {
                    alert("인증키를 입력해주세요.");
                    event.preventDefault();
                } else {
                    alert("인증되었습니다. 비밀번호 변경 페이지로 이동합니다.");
                }
            } 
            
            document.addEventListener("DOMContentLoaded", function(){
                document.querySelector("form").addEventListener("submit", function(event){
                	const userId = document.querySelector("#user-id").value;
                    const userEmail = document.querySelector("#user-email").value;

                    const idRegExp = /^[a-z0-9]{5,10}$/g;
                    const emailRegExp = /^[a-zA-Z0-9]{4,20}@[a-z]+\.[a-z]{3}/g;

                    if(!idRegExp.test(userId)) {
                        alert("아이디는 영문, 숫자 조합 5~10자 입력해주세요.")
                        event.preventDefault();
                    } else if (!emailRegExp.test(userEmail)) {
                        alert("올바른 이메일형식이 아닙니다.")
                        event.preventDefault();
                    }
                })
            }) -->
        </script>
        <div id="confirm">
            <div id="confirmPw">
                <h1>비밀번호 재설정</h1>
            </div>
            <form action="/member/confirmPw.do" method="post">
                <div id="inputInfo">
                    <div id="userId">
                        <input type="text" id="user-id" name="memberId" placeholder="아이디"><img src="../resources/images/icons/login.png" alt="로그인">
                    </div>
                    <div id="email">
                        <input type="email" id="user-email" name="memberEmail" placeholder="가입시 등록한 이메일"><img src="../resources/images/icons/email.png" alt="이메일">
                    </div>
<!--                     <div> -->
<!--                         <button onclick="sendEmail()">인증요청</button> -->
<!--                     </div> -->
<!--                     <br><hr> -->
<!--                     <div id="emailKey"> -->
<!--                         <input type="text" id="key" placeholder="이메일로 발송된 인증키"><img src="../resources/images/icons/key.png" alt="인증키"> -->
<!--                     </div> -->
                </div>
    
                <div id="findBtn">
                    <button type="submit">확인</button>
                </div>
            </form>
        </div>
    </body>
</html>