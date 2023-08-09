<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
    <!-- head -->
	<jsp:include page="/WEB-INF/views/include/head.jsp"></jsp:include>
        <link rel="stylesheet" href="../resources/CSS/customerCenter/askForm.css">
        <title>CANDYTOON</title>
    <body>
        <!-- 헤더, 네비 -->
		<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
		
        <!-- 메인 -->
        <main>
	        <c:if test="${sessionScope.memberId ne null }">
	            <h1>${memberId }님의 문의내역</h1>
	            <div id="userAsk">
	            	<input type="hidden" name="memberId" value="${sessionScope.memberId}">
	                <table>
	                    <tr>
	                        <th id="askType">문의유형</th>
	                        <td><input type="text" id="askCategory" name="askCategory" required value="${ask.askCategory }"></td>
	                    </tr>
	                    <tr id="askTitle">
	                        <th>제목</th>
	                        <td><input type="text" name="askSubject" required value="${ask.askSubject }"></td>
	                    </tr>
	                    <tr id="askContent">
	                        <th>내용</th>
	                        <td><textarea name="askContent" required>${ask.askContent }</textarea></td>
	                    </tr>
	                </table>
	            </div>
	            <div>
	                <button id="askBtn"><a href="/ask/modify.do?askNo=${ask.askNo}">수정하기</a></button>
	                <button id="askBtn"><a href="/ask/delete.do?askNo=${ask.askNo}">삭제하기</a></button>
	                <button id="askBtn"><a href="/ask/list.do">목록이동</a></button>
	            </div>
	        </c:if>
        </main>
        <!-- 푸터 -->
        <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
        
		<!--  
        <script>
            document.querySelector("#askBtn").addEventListener("click", function(){
                alert("이용문의 등록이 완료되었습니다.");
                location.replace("./ask.jsp");
            })
        </script>-->
    </body>
</html>