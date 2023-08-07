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
        <link rel="stylesheet" href="../resources/CSS/member/changePw.css">
    </head>
    <body>
        <script>
            document.addEventListener("DOMContentLoaded", function(){
                document.querySelector("form").addEventListener("submit", function(event){
                    const newPw = document.querySelector("#new-pw").value;
                    const repeatPw = document.querySelector("#new-pwRe").value;

                    const pwRegExp = /^[a-z0-9]{6,20}$/g;

                    if(!pwRegExp.test(newPw)) {
                        alert("비밀번호는 영문, 숫자 조합 6~20자 입력해주세요.")
                        event.preventDefault();
                    } else if(newPw!==repeatPw) {
                        alert("비밀번호가 일치하지 않습니다.")
                        event.preventDefault();
                    } 
                })
            })

        </script>
        <div id="change">
            <div id="changePw">
                <h1>비밀번호 재설정</h1>
            </div>
            <form action="/member/changePw.do" method="post">
                <div id="inputPw">
                    <div id="newPw">
                        <input type="password" id="new-pw" name="newPW" placeholder="새 비밀번호를 입력해주세요">
                    </div>
                    <div id="repeatPw">
                        <input type="password" id="new-pwRe" name="rePw" placeholder="재입력해주세요.">
                    </div>
                </div>
    
                <div id="changeBtn">
                    <button type="submit">변경하기</button>
                </div>
            </form>
        </div>

    </body>
</html>