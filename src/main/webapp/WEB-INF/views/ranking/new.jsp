<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>CANDYTOON</title>
        <link rel="stylesheet" href="../resources/CSS/reset.css">
        <link rel="stylesheet" href="../resources/CSS/ranking/new.css">
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
                            <div class="cover"><img src="../resources/images/cover/new-top5/newTop1.png" alt="사주헌터"></div>
                            <div class="info">
                                <div>
                                    <div class="title"><p>F급 사주헌터</p></div>
                                    <div class="category"> 
                                        <span class="writerInfo">글</span>
                                        <span>우리</span>
                                        <span class="writerInfo">그림</span>
                                        <span>아나민</span>
                                        <span class="genre">장르</span>
                                        <span>판타지</span>
                                    </div>
                                    <div class="count">총 25화</div>
                                </div>
                                <div class="story">
                                    <p>
                                        사주팔자대로 능력을 각성하는 세상. <br>
                                        최악의 사주를 타고 난 서강림은 헌터로 각성했지만 여전히 최약체였다. <br>
                                        살수에게 동료들을 모두 잃고, 죽기 직전 가까스로 과거로 회귀하게 된 서강림. <br>
                                        그는 결심한다. 이번 생만큼은, 팔자대로 살지 않겠다고. <br>
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
                            <div class="cover"><img src="../resources/images/cover/new-top5/newTop2.png" alt="시간여행자"></div>
                            <div class="info">
                                <div>
                                    <div class="title"><p>시간여행자</p></div>
                                    <div class="category"> 
                                        <span class="writerInfo">글</span>
                                        <span>Toma</span>
                                        <span class="writerInfo">그림</span>
                                        <span>팬더롤링</span>
                                        <span class="genre">장르</span>
                                        <span>판타지</span>
                                    </div>
                                    <div class="count">총 22화</div>
                                </div>
                                <div class="story">
                                    <p>
                                        연구소에서 근무하던 ‘우타노 히로’는 어느 날 갑자기 이상한 현상에 휘말린다. <br>
                                        깨어나 보니 그곳은 공포의 ‘이형의 것’들이 가득 퍼져 있는 황폐한 종말의 세계였다! <br>
                                        히로가 손에 넣은 무기는 시간을 되돌아갈 수 있는 ‘ES707’이라는 기묘한 총. <br>
                                        히로는 이 총을 이용해서 시간을 거슬러 올라가는 여행에 나섰다! <br>
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
                            <div class="cover"><img src="../resources/images/cover/new-top5/newTop3.png" alt="고기자"></div>
                            <div class="info">
                                <div>
                                    <div class="title"><p>고기자의 힘드러운 기자생활</p></div>
                                    <div class="category"> 
                                        <span class="writerInfo">글/그림</span>
                                        <span>고기자</span>
                                        <span class="genre">장르</span>
                                        <span>코믹</span>
                                    </div>
                                    <div class="count">총 8화</div>
                                </div>
                                <div class="story">
                                    <p>
                                        사건사고가 많으면 일이 늘어나니 그 어느 때보다 세상의 평화를 바란다. <br>
                                        그럼에도 통장에 찍히는 숫자를 보면 슬픔뿐. <br>
                                        ‘기레기’와 ‘회사원’, 그 어느 중간에서 끊임없이 고민하며 살아가는 고양이 기자는 오늘도 좌충우돌 출근을 한다. <br>
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
                            <div class="cover"><img src="../resources/images/cover/new-top5/newTop4.png" alt="궁궐의맹수"></div>
                            <div class="info">
                                <div>
                                    <div class="title"><p>궁궐의 맹수</p></div>
                                    <div class="category"> 
                                        <span class="writerInfo">글</span>
                                        <span>정오늘</span>
                                        <span class="writerInfo">그림</span>
                                        <span>한연</span>
                                        <span class="genre">장르</span>
                                        <span>판타지</span>
                                    </div>
                                    <div class="count">총 31화</div>
                                </div>
                                <div class="story">
                                    <p>
                                        자신이 왕이 되지 못할 것을 알고 있던 공주는 시녀와 조용히 여생을 살고자 했다. <br>
                                        하지만 공주를 위협이라 느끼는 왕자는 공주의 시녀를 건드리고 시녀는 사라진다. <br>
                                        진실로 자신을 아껴주던 시녀를 건드린 순간, 용이 되고자 기지개를 펴기 시작한다. <br>
                                        “현국의 공주가 삼국을 통일할 것이다.”
                                        예언이 완성되고 공주는 과연 황제가 될 수 있을까. <br>
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
                            <div class="cover"><img src="../resources/images/cover/new-top5/newTop5.png" alt="검의구도자"></div>
                            <div class="info">
                                <div>
                                    <div class="title"><p>검의 구도자</p></div>
                                    <div class="category"> 
                                        <span class="writerInfo">글</span>
                                        <span>윤소함</span>
                                        <span class="writerInfo">그림</span>
                                        <span>이형석</span>
                                        <span class="genre">장르</span>
                                        <span>판타지</span>
                                    </div>
                                    <div class="count">총 23화</div>
                                </div>
                                <div class="story">
                                    <p>
                                        검성(劍聖), 카릴 맥거번. 검으로 바꾸지 못한 미래를 다시 쓰기 위해 과거로 돌아오다. <br>
                                        전생에 얻지 못한 힘. <br>
                                        이제, 검과 마법. <br>
                                        두 가지의 길 모두 정점에 서겠다. <br>
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