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
            <form action="/ask/insert.do" method="post">
		        <c:if test="${sessionScope.memberId ne null }">
		            <h1>이용문의 등록</h1>
		            <div id="userAsk">
		            	<input type="hidden" name="memberId" value="${sessionScope.memberId}">
		                <table>
		                    <tr>
		                        <th id="askType">문의유형</th>
		                        <td>
		                            <select id="selectType" name="askCategory" required>
		                                <option value="결제/환불">결제/환불</option>
		                                <option value="사이트이용">사이트이용</option>
		                                <option value="이벤트">이벤트</option>
		                                <option value="기타">기타</option>
		                            </select>
		                        </td>
		                    </tr>
		                    <tr id="askTitle">
		                        <th>제목</th>
		                        <td><input type="text" name="askSubject" required placeholder="제목을 입력해주세요."></td>
		                    </tr>
		                    <tr id="askContent">
		                        <th>내용</th>
		                        <td><textarea name="askContent" placeholder="문의하실 내용을 입력해주세요." required></textarea></td>
		                    </tr>
		                </table>
		            </div>
		            <div>
		                <button id="askBtn" type="submit">등록하기</button>
		            </div>
		        </c:if>
	        </form>
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