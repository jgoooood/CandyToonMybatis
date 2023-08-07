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
        <link rel="stylesheet" href="../resources/CSS/ranking/total.css">
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
                            <div class="cover">
                                <a href="/content/webtoon.jsp">
                                <img src="../resources/images/cover/total-top5/totalTop1.png" alt="상수리"></a>
                            </div>
                            <div class="info">
                                <div>
                                    <div class="title">
                                        <a href="../webtoon.jsp">
                                        <p>상수리나무아래</p></a>
                                    </div>
                                    <div class="category"> 
                                        <span class="writerInfo">글</span>
                                        <span>서말,나무</span>
                                        <span class="writerInfo">그림</span>
                                        <span>P</span>
                                        <span class="genre">장르</span>
                                        <span>로맨스</span>
                                    </div>
                                    <div class="count">총 64화</div>
                                </div>
                                <div class="story">
                                    <p>
                                        말더듬이 공작 영애 맥시밀리언은 아버지의 강요로 비천한 출생의 기사와 결혼하게 된다. <br>
                                        결혼식을 치르고 원정을 떠나간 남편은 3년 후,<br> 
                                        전 대륙에 명성을 떨치는 기사가 되어 돌아오는데…. <br>
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
                            <div class="cover"><img src="../resources/images/cover/total-top5/totalTop2.png" alt="호랑이형님"></div>
                            <div class="info">
                                <div>
                                    <div class="title"><p>호랑이형님</p></div>
                                    <div class="category"> 
                                        <span class="writerInfo">글/그림</span>
                                        <span>이상규</span>
                                        <span class="genre">장르</span>
                                        <span>판타지</span>
                                    </div>
                                    <div class="count">총 392화</div>
                                </div>
                                <div class="story">
                                    <p>
                                        신비한 힘을 가진 아이를 이용하여 세상을 지배하려는 반인반수 흰눈썹!<br>
                                        그리고 얼떨결에 아이의 보호자가 된 괴물호랑이 빠르와 착호갑사 지망생 가우리!<br>
                                        이제 힘을 합쳐 흰눈썹으로부터 아이와 세상을 지켜라!!!<br>
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
                            <div class="cover"><img src="../resources/images/cover/total-top5/totalTop3.png" alt="김부장"></div>
                            <div class="info">
                                <div>
                                    <div class="title"><p>김부장</p></div>
                                    <div class="category"> 
                                        <span class="writerInfo">글</span>
                                        <span>박태준 만화회사</span>
                                        <span class="writerInfo">그림</span>
                                        <span>정종택</span>
                                        <span class="genre">장르</span>
                                        <span>액션</span>
                                    </div>
                                    <div class="count">총 89화</div>
                                </div>
                                <div class="story">
                                    <p>
                                        오직 자신의 딸 '민지'를 위해 특수요원직을 관두고 평범함을 선택한 가장 김부장.<br>
                                        그러던 어느 날 민지가 소리소문 없이 사라지고, 김부장은 자신을 감시하는 국가를 적으로 돌리면서까지 딸을 찾아나서기 시작하는데...<br>
                                        [외모지상주의], [싸움독학] 그리고 [인생존망]의 세계관을 잇는 공식 스핀오프 작품!<br>
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
                            <div class="cover"><img src="../resources/images/cover/total-top5/totalTop4.png" alt="마루는강쥐"></div>
                            <div class="info">
                                <div>
                                    <div class="title"><p>마루는 강쥐</p></div>
                                    <div class="category"> 
                                        <span class="writerInfo">글/그림</span>
                                        <span>모죠</span>
                                        <span class="genre">장르</span>
                                        <span>코믹</span>
                                    </div>
                                    <div class="count">총 59화</div>
                                </div>
                                <div class="story">
                                    <p>
                                        우리 집 강아지 마루가 사람이 되었다, 그것도 5살 아이로!<br>
                                        강아지 + 어린아이의 무한 에너지와 호기심을 지닌 사고뭉치 강쥐 탄생!<br>
                                        마루야~! 또 어디가!!! 유쾌한 이웃들과 우당탕탕 즐거운 마루의 나날들<Br>
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
                            <div class="cover"><img src="../resources/images/cover/total-top5/totalTop5.png" alt="나노마신"></div>
                            <div class="info">
                                <div>
                                    <div class="title"><p>나노마신</p></div>
                                    <div class="category"> 
                                        <span class="writerInfo">글</span>
                                        <span>현절무</span>
                                        <span class="writerInfo">그림</span>
                                        <span>금강불괴</span>
                                        <span class="genre">장르</span>
                                        <span>무협</span>
                                    </div>
                                    <div class="count">총 156화</div>
                                </div>
                                <div class="story">
                                    <p>
                                        갖은 멸시와 목숨의 위협을 받던 마교의 사생아 천여운, <br>
                                        미래에서 나타난 후손이 천여운의 몸에 나노 머신을 주입한 후 그의 인생이 송두리째 바뀐다.<br>
                                        마교를 넘어 무림 최고의 자리에 오르기 위한 천여운의 거침없는 이야기가 시작된다!<br>
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