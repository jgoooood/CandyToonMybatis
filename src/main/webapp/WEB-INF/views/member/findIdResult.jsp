<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>아이디찾기 결과</title>
        <link rel="stylesheet" href="../resources/CSS/reset.css">
        <link rel="stylesheet" href="../resources/CSS/member/find_IdResult.css">
    </head>
    <body>
        <div id="find">
            <div id="findId">
                <h1>아이디 찾기 결과</h1><Br>
            </div>
            <div id="findText">
                <p>입력하신 정보와 일치하는 아이디를 찾았습니다.</p>
            </div>
            <div id="find_IdResult">
                <input type="text"  value="${memberId}">
            </div>
            <div id="findBtn">
                <button><a href="/member/login.do">로그인</a></button>
                <button><a href="/member/confirmPw.do">비밀번호 변경</a></button>
            </div>
        </div>
    </body>
</html>