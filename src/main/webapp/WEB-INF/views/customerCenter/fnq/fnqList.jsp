<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
     <!-- head -->
	<jsp:include page="/WEB-INF/views/include/head.jsp"></jsp:include>
        <link rel="stylesheet" href="../resources/CSS/customerCenter/FAQ.css">
        <title>CANDYTOON</title>
    <body>
        <!-- 헤더, 네비 -->
		<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
		
        <!-- 메인 -->
        <main>
        	<c:if test="${sessionScope.memberId ne null }">
	            <div id="center">
	                <div id = "centerMenu">
	                    <ul>
	                        <li><a href="/customerCenter/notice.do">공지사항</a></li>
	                        <li><a href="/fnq/list.do">FAQ</a></li>
	                        <li><a href="/ask/list.do?currentPage=1">1:1문의</a></li>
	                    </ul>
	                </div>
	                <div id="centerSearch">
	                    <input type="search" placeholder="궁금한 점을 검색해 보세요.">
	                    <img src="../resources/images/icons/centerSearch.png" alt="검색">
	                </div>
	            </div>
            </c:if>
            <c:if test="${sessionScope.memberId eq null }">
            	<div id="center">
	                <div id = "centerMenu">
	                    <ul>
	                        <li><a href="/customerCenter/notice.do">공지사항</a></li>
	                        <li><a href="/fnq/list.do">FAQ</a></li>
	                    </ul>
	                </div>
	                <div id="centerSearch">
	                    <input type="search" placeholder="궁금한 점을 검색해 보세요.">
	                    <img src="../resources/images/icons/centerSearch.png" alt="검색">
	                </div>
	            </div>
            </c:if>
	            <div id = "FAQ">
	                <table>
	                    <tr>
	                        <th>분류</th>
	                        <th>제목</th>
	                        <th>등록일</th>
	                    </tr>
	                    <tr>
	                        <td>회원계정</td>
	                        <td><a href="#">아이디, 비밀번호 ID/PW 찾기</a></td>
	                        <td>2023.05.01</td>
	                    </tr>
	                    <tr>
	                        <td>컨텐츠이용</td>
	                        <td><a href="#">작품 영구삭제 방법</a></td>
	                        <td>2023.02.05</td>
	                    </tr>
	                    <tr>
	                        <td>이벤트</td>
	                        <td><a href="#">출석체크 이벤트 유의사항</a></td>
	                        <td>2023.01.01</td>
	                    </tr>
	                    <tr>
	                        <td>환불</td>
	                        <td><a href="#">캔디(캐시) 충전 환불</a></td>
	                        <td>2022.12.01</td>
	                    </tr>
	                    <tr>
	                        <td>회원계정</td>
	                        <td><a href="#">회원탈퇴 방법</a></td>
	                        <td>2021.01.01</td>
	                    </tr>
	                </table>
	            </div>
	            <div id ="pages">
	                <ul>
	                    <li>1</li>
	                    <li>2</li>
	                    <li>3</li>
	                    <li>4</li>
	                </ul>
	            </div>
        </main>
        
        <!-- 푸터 -->
        <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
    </body>
</html>