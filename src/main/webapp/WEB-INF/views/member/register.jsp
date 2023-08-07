<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>회원가입</title>
        <link rel="stylesheet" href="../resources/CSS/reset.css">
        <link rel="stylesheet" href="../resources/CSS/member/register.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Bungee&display=swap" rel="stylesheet">
    </head>
    <body>
        <script>
            document.addEventListener("DOMContentLoaded", () => {
                document.querySelector("form").addEventListener("submit", (event)=>{
                    // 입력값가져오기
                    const memberId = document.querySelector("#memberId").value;
                    const memberPw = document.querySelector("#memberPw").value;
                    const pwCheck = document.querySelector("#repeatPw").value;
                    const email = document.querySelector("#email").value;
                    const memberName = document.querySelector("#memberName").value;
                    
                    // 정규표현식
                    const idRegExp = /^[a-z0-9]{5,10}$/g;
                    const pwRegExp = /^[a-z0-9]{6,20}$/g;
                    const emailRegExp = /^[a-zA-Z0-9]{4,20}@[a-z]+\.[a-z]{3}/g;
                    const nameRegExp = /^[가-힣]{2,4}$/g;


                    if(!idRegExp.test(memberId)) {
                        alert("아이디는 영문, 숫자 조합 5~10자 입력해주세요.")
                        event.preventDefault();
                    } else if(!pwRegExp.test(memberPw)) {
                        alert("비밀번호는 영문, 숫자 조합 6~20자 입력해주세요.")
                        event.preventDefault();
                    } else if(pwCheck!==memberPw) {
                        alert("비밀번호가 일치하지 않습니다.")
                        event.preventDefault();
                    } else if(!emailRegExp.test(email)) {
                        alert("올바른 이메일형식이 아닙니다.")
                        event.preventDefault();
                    } else if(!nameRegExp.test(memberName)) {
                        alert("올바른 이름을 입력해주세요.")
                        event.preventDefault();
                    } 
                })

            })
        </script>
        <div id="join">
            <div ID="joinLogo">
                <p>CANDY TOON</p>
                <h1>회원가입</h1>
            </div>
            <form action="/member/register.do" method="post">
                <div id="userInput">
                    <ul>
                        <li>필수입력사항</li>
                        <li>
                            <label for="memberId">아이디</label>
                            <input type="text" id="memberId" name="memberId" placeholder="영문, 숫자 조합 5~10자 입력">
                        </li>
                        <li>
                            <label for="memberPw">비밀번호</label>
                            <input type="password" id="memberPw" name="memberPw" placeholder="영문, 숫자 조합 6~20자 입력">
                        </li>
                        <li>
                            <label for="repeatPw">비밀번호</label>
                            <input type="password" id="repeatPw" placeholder="비밀번호 재입력">
                        </li>
                        <li>
                            <label for="email">이메일주소</label>
                            <input type="email" id="email" name="memberEmail" placeholder="이메일 형식으로 입력">
                        </li>
                        <li>
                            <label for="memberName">이름</label>
                            <input type="text" id="memberName" name="memberName" placeholder="실명을 입력해주세요.">
                        </li>
                    </ul>
                </div>
                <div id="joinBtn">
                    <button type="submit">회원가입완료</button>
                </div>
            </form>
        </div>
       
    </body>
</html>