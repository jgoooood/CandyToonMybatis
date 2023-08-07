<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- 헤더 -->
<header>
    <div id="logo">
        <a href="/index.jsp"><p>CANDY TOON</p></a>
    </div>
    <div id="searchArea">
        <div class="search">
            <input type="text" placeholder="제목/작가로 검색할 수 있습니다.">
            <!-- <button id="goSearch">검색</button> -->
            <a href="#"><img src="/resources/images/icons/serch.png" alt="검색"></a>
        </div>
    </div>
    <!-- 네비게이터 -->
    <nav>
        <div id="mainMenu">
            <ul>
                <li><a href="/ranking/total.jsp">웹툰랭킹</a></li>
                <li><a href="/new.jsp">신작</a></li>
                <li><a href="/compleated.jsp">완결</a></li>
                <li><a href="#">요일</a></li>
                <li><a href="#">장르</a></li>
            </ul>
        </div>
        <c:if test="${sessionScope.memberId ne null }">
         <div  id="customerCenter">
             <ul>
                 <li><a href="/member/logout.do">로그아웃</a></li>
                 <li><a href="/member/myPage.do?memberId=${sessionScope.memberId }">마이페이지</a></li>
                 <li><a href="/customerCenter/notice.do">고객센터</a></li>
             </ul>
         </div>
        </c:if>
        <c:if test="${memberId eq null }">
         <div  id="customerCenter">
             <ul>
                 <li><a href="/member/login.do">로그인</a></li>
                 <li><a href="/member/register.do">회원가입</a></li>
                 <li><a href="/customerCenter/notice.do">고객센터</a></li>
             </ul>
         </div>
        </c:if>
    </nav>
</header>