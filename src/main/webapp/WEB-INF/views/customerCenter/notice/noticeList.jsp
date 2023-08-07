<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
    <!-- head -->
	<jsp:include page="/WEB-INF/views/include/head.jsp"></jsp:include>
        <link rel="stylesheet" href="../resources/CSS/customerCenter/notice.css">
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
            <div id = "notice">
                <table>
                    <tr>
                        <th>분류</th>
                        <th>제목</th>
                        <th>등록일</th>
                    </tr>
                    <tr>
                        <td>안내</td>
                        <td><a href="#">캔디 충전 오류 해결 안내</a></td>
                        <td>2023.05.01</td>
                    </tr>
                    <tr>
                        <td>업데이트</td>
                        <td><a href="#">서비스 점검 안내(02/18)</a></td>
                        <td>2023.02.05</td>
                    </tr>
                    <tr>
                        <td>공지</td>
                        <td><a href="#">건전한 댓글 문화를 위한 안내 사항</a></td>
                        <td>2023.01.01</td>
                    </tr>
                    <tr>
                        <td>공지</td>
                        <td><a href="#">개인정보 처리방침' 변경에 대한 안내</a></td>
                        <td>2022.12.01</td>
                    </tr>
                </table>
            </div>
            <div id="pages">
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