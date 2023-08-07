<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
    <!-- head -->
	<jsp:include page="/WEB-INF/views/include/head.jsp"></jsp:include>
    <title>마이페이지</title>
    <link rel="stylesheet" href="../resources/CSS/member/myPage.css">
    
    <body>
        <!-- 헤더 -->
        <header>
            <div id="logo">
                <a href="/index.jsp"><p>CANDY TOON</p></a>
            </div>
            <div id="searchArea">
                <div class="search">
                    <input type="text" placeholder="제목/작가로 검색할 수 있습니다.">
                    <!-- <button id="goSearch">검색</button> -->
                    <a href="#"><img src="../resources/images/icons/serch.png" alt="검색"></a>
                </div>
            </div>
            <!-- 네비게이터 -->
            <nav>
                <div id="mainMenu">
                    <ul>
                        <li><a href="../ranking/total.jsp">웹툰랭킹</a></li>
                        <li><a href="../ranking/new.jsp">신작</a></li>
                        <li><a href="../ranking/compleated.jsp">완결</a></li>
                        <li><a href="#">요일</a></li>
                        <li><a href="#">장르</a></li>
                    </ul>
                </div>
                <div  id="customerCenter">
                    <ul>
                        <li><a href="/member/logout.do">로그아웃</a></li>
                        <li><a href="/member/myPage.do">마이페이지</a></li>
                        <li><a href="/customerCenter/notice.do">고객센터</a></li>
                    </ul>
                </div>
            </nav>
        </header>
        <!-- 메인 -->
        <main>
            <section id="leftSection">
                <div id="userBox">
                    <div><img src="../resources/images/icons/book.png" alt="서재"></div>
                    <h1>보관함</h1>
                    <ul>
                        <li>소장작품</li>
                        <li>최근 조회한 작품</li>
                        <li>관심 작품</li>
                    </ul>
                </div>
                <div id="userPay">
                    <div><img src="../resources/images/icons/credit-card.png" alt="결제"></div>
                    <h1>결제</h1>
                    <ul>
                        <li>결제내역</li><br>
                        <li>캔디충전</li><br>
                        <li>충전내역</li>
                    </ul>
                </div>
                <div id="userInfo">
                    <div><img src="../resources/images/icons/user.png" alt="개인"></div>
                    <h1>개인</h1>
                    <ul>
                        <li>댓글관리</li><br>
                        <li>회원정보</li>
                    </ul>
                </div>
            </section>
            <section id="rightSection">
                <div id="topArea">
                    <div id="userAccount">
                        <div><img src="../resources/images/icons/account.png" alt="계정"></div>
                        <div>
                       		<p name="memberId">${member.memberId }<br>
                            ${member.memberEmail }</p>
                        </div>
                    </div>
                    <div id="userCandy">
                        <div><img src="../resources/images/icons/candy.png" alt="캔디"></div>
                        <div id="candy">
                            <span>보유캔디</span>
                            <span id="have">50개</span>
                        </div>
                    </div>
                </div>
                <div id="bottomArea">
                        <ul>
                            <li><p>소장 작품<br><span class="count">35</span></p></li>
                            <li><p>최근 조회한 작품<br><span class="count">7</span></p></li>
                            <li><p>관심작품<br><span class="count">5</span></p></li>
                        </ul>
                </div>
            </section>
        </main>
        <!-- 푸터 -->
        <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
    </body>
</html>