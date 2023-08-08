<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
    <!-- head -->
	<jsp:include page="/WEB-INF/views/include/head.jsp"></jsp:include>
        <link rel="stylesheet" href="../resources/CSS/customerCenter/ask.css">
        <title>CANDYTOON</title>
    <body>
         <!-- 헤더, 네비 -->
		<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
		
        <!-- 메인 -->
        <main>
            <div id="center">
	                <div id = "centerMenu">
	                    <ul>
	                        <li><a href="/customerCenter/notice.do">공지사항</a></li>
	                        <li><a href="/fnq/list.do">FAQ</a></li>
	                        <li><a href="/ask/list.do">1:1문의</a></li>
	                    </ul>
	                </div>
                <div id="centerSearch">
                    <input type="search" placeholder="궁금한 점을 검색해 보세요.">
                    <img src="../resources/images/icons/centerSearch.png" alt="검색">
                </div>
            </div>
            <div id = "ask">      
                <table>
                	<colgroup>
                		<col width="15%">
                		<col width="15%">
                		<col width="45%">
                		<col width="25%">
                	</colgroup>
                	<thead id=tableHead>
	                    <tr>
	                        <th>번호</th>
	                        <th>문의유형</th>
	                        <th>제목</th>
	                        <th>등록일</th>
	                    </tr>
	                </thead>
	                <tbody>
	                	<c:forEach var="ask" items="${requestScope.aList }">
		                    <tr>
		                        <td>${ask.askNo }</td>
		                        <td>${ask.askCategory }</td>
		                        <td><a href="/ask/detail.do?askNo=${ask.askNo }">${ask.askSubject }</a></td>
		                        <td>${ask.askDate }</td>
		                    </tr>
	                	</c:forEach>
	                </tbody>
                </table>
            </div>
            <div>    
                <button id="askBtn"><a href="/ask/insert.do">문의등록</a></button>
            </div>
            <div id="pages">
                <ul>
                    <li>${pageNavi }</li>
                </ul>
            </div>
        </main>
        
        <!-- 푸터 -->
        <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
    </body>
</html>