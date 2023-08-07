<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>아이디찾기</title>
        <link rel="stylesheet" href="../resources/CSS/reset.css">
        <link rel="stylesheet" href="../resources/CSS/member/find_Id.css">
    </head>
    <body>
        <script>
            document.addEventListener("DOMContentLoaded", ()=>{
                document.querySelector("form").addEventListener("submit", function() {
                    const memberName = document.querySelector("#memberName").value;
                    const memberEmail = document.querySelector("#memberEmail").value;

                    const nameRegExp = /^[가-힣]{2,4}$/g;
                    const emailRegExp = /^[a-zA-Z0-9]{4,20}@[a-z]+\.[a-z]{3}/g;

                    if(!nameRegExp.test(memberName)) {
                        alert("올바른 이름 형식이 아닙니다.")
                        event.preventDefault();
                    } else if (!emailRegExp.test(memberEmail)) {
                        alert("올바른 이메일 형식이 아닙니다.")
                        event.preventDefault();
                    } 
                })
            })
        </script>
        <div id="find">
            <form action="/member/findId.do" method="post">
                <div id="findId">
                    <h1>아이디 찾기</h1>
                </div>
                <div id="userInput">
                    <div id="name">
                        <input type="text" id="memberName" name="memberName" placeholder="이름"><img src="../resources/images/icons/login.png" alt="로그인">
                    </div>
                    <div id="email">
                        <input type="email" id="memberEmail" name="memberEmail" placeholder="가입시 등록한 이메일"><img src="../resources/images/icons/email.png" alt="이메일">
                    </div>
                </div>
                <div id="findBtn">
                    <button type="submit">찾기</button>
                </div>
            </form>
        </div>
    </body>
</html>