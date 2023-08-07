<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>CANDY TOON</title>
        <link rel="stylesheet" href="../resources/CSS/reset.css">
        <link rel="stylesheet" href="../resources/CSS/ranking/compleated.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Bungee&display=swap" rel="stylesheet">
    </head>
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
                        <li><a href="../member/login.jsp">로그인</a></li>
                        <li><a href="../member/register.jsp">회원가입</a></li>
                        <li><a href="../customerCenter/notice.jsp">고객센터</a></li>
                    </ul>
                </div>
                <div id="sortType">
                    <ul>
                        <li>오늘</li>
                        <li>주간</li>
                        <li>월간</li>
                    </ul>
                </div>
            </nav>
        </header>

        <!-- 메인 -->
        <main>
            <section id="rankingList">
                <ul>
                    <li>
                        <div class="ranking">
                            <div class="rank"><h1>1</h1></div>
                            <div class="cover"><img src="../resources/images/cover/compleated-top5/compleatedTop1.png" alt="화산귀환"></div>
                            <div class="info">
                                <div>
                                    <div class="title"><p>화산귀환</p></div>
                                    <div class="category"> 
                                        <span class="writerInfo">글</span>
                                        <span>LICO</span>
                                        <span class="writerInfo">그림</span>
                                        <span>비가</span>
                                        <span class="genre">장르</span>
                                        <span>무협/사극</span>
                                    </div>
                                    <div class="count">총 73화</div>
                                </div>
                                <div class="story">
                                    <p>
                                        대 화산파 13대 제자.천하삼대검수 매화검존 청명. <br>
                                        천하를 혼란에 빠뜨린 고금제일마 천마의 목을 치고 십만대산의 정상에서 영면. <br>
                                        백 년의 시간을 뛰어넘어 아이의 몸으로 다시 살아나다. <br>
                                        ......뭐? 화산이 망해? 이게 뭔 개소리야!? <br>
                                    </p>
                                </div>
                                <div class="price">
                                    <p>대여 캔디3개 · 소장 캔디5개</p>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="ranking">
                            <div class="rank"><h1>2</h1></div>
                            <div class="cover"><img src="../resources/images/cover/compleated-top5/compleatedTop2.png" alt="캐슬"></div>
                            <div class="info">
                                <div>
                                    <div class="title"><p>캐슬</p></div>
                                    <div class="category"> 
                                        <span class="writerInfo">글/그림</span>
                                        <span>정연</span>
                                        <span class="genre">장르</span>
                                        <span>액션</span>
                                    </div>
                                    <div class="count">총 121화</div>
                                </div>
                                <div class="story">
                                    <p>
                                        복수를 위해 칼을 갈아온 특급 킬러 '김신', <br>
                                        뒷세계 '절대권력'과의 목숨 건 한판 승부! <br>  
                                    </p>
                                </div>
                                <div class="price">
                                    <p>대여 캔디3개 · 소장 캔디5개</p>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="ranking">
                            <div class="rank"><h1>3</h1></div>
                            <div class="cover"><img src="../resources/images/cover/compleated-top5/compleatedTop3.png" alt="별이삼샵"></div>
                            <div class="info">
                                <div>
                                    <div class="title"><p>별이삼샵</p></div>
                                    <div class="category"> 
                                        <span class="writerInfo">글/그림</span>
                                        <span>혀노</span>
                                        <span class="genre">장르</span>
                                        <span>로맨스</span>
                                    </div>
                                    <div class="count">총 145화</div>
                                </div>
                                <div class="story">
                                    <p>
                                        ㄱ나니? 발신자 제한번호로 그녀에게 마음을 전했던 이야기. <br>
                                        '남과여' 혀노 작가가 담아낸 촌스럽지만 풋풋했던 2000년대 그 시절. <br>
                                    </p>
                                </div>
                                <div class="price">
                                    <p>대여 캔디3개 · 소장 캔디5개</p>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="ranking">
                            <div class="rank"><h1>4</h1></div>
                            <div class="cover"><img src="../resources/images/cover/compleated-top5/compleatedTop4.png" alt="치즈인더트랩"></div>
                            <div class="info">
                                <div>
                                    <div class="title"><p>치즈인더트랩</p></div>
                                    <div class="category"> 
                                        <span class="writerInfo">글/그림</span>
                                        <span>순끼</span>
                                        <span class="genre">장르</span>
                                        <span>로맨스</span>
                                    </div>
                                    <div class="count">총 312화</div>
                                </div>
                                <div class="story">
                                    <p>
                                        평범한 여대생 홍설, 그리고 어딘가 수상한 선배 유정. <br>
                                        미묘한 관계의 이들이 펼쳐나가는 이야기. <br>
                                    </p>
                                </div>
                                <div class="price">
                                    <p>대여 캔디3개 · 소장 캔디5개</p>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="ranking">
                            <div class="rank"><h1>5</h1></div>
                            <div class="cover"><img src="../resources/images/cover/compleated-top5/compleatedTop5.png" alt="태시트"></div>
                            <div class="info">
                                <div>
                                    <div class="title"><p>태시트</p></div>
                                    <div class="category"> 
                                        <span class="writerInfo">글/그림</span>
                                        <span>김다찌</span>
                                        <span class="genre">장르</span>
                                        <span>액션</span>
                                    </div>
                                    <div class="count">총 86화</div>
                                </div>
                                <div class="story">
                                    <p>
                                        좀비 바이러스를 내뿜는 오염물질로 무너진 세상. 그곳에 적응한 사람들. <br>
                                        뛰어난 박사 ‘사이먼’이 실종되고 마을 ‘아미나’ 사람들은 절망에 빠진다. <br>
                                        그런 ‘아미나’에서 태어나고 자란 ‘루비’. <br>
                                        그녀로 인해 묻혀있던 사건들이 서서히 모습을 드러내기 시작하는데... <br>
                                    </p>
                                </div>
                                <div class="price">
                                    <p>대여 캔디3개 · 소장 캔디5개</p>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </section>
            <section id="pages">
                <ul>
                    <li>1</li>
                    <li>2</li>
                    <li>3</li>
                    <li>4</li>
                </ul>
            </section>
        </main>
    
        <!-- 푸터 -->
        <footer>
            <ul>
                <li>상호 : (주)캔디툰</li>
                <li>사업자등록번호 : 123-45-67890</li>
                <li>대표전화 : 1234-5678</li>
                <li>주소 : 서울특별시 중구 캔디로 123 캔디빌딩 1층</li>
            </ul>    
        </footer>

    </body>
</html>