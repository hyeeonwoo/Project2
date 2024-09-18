<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Gowun+Batang&family=Gowun+Dodum&family=Jua&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/7395e48b31.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="./style.css">
    <script src="./modal.js" defer></script>
    <title>놀러가자!</title>
</head>

<body>
    <!-- navbar -->
    <nav id="navbar">
        <div class="navbar_logo">
            <a href="index.jsp"><i class="fas fa-star"></i> 놀러가자</a>
        </div>
        <ul class="navbar_list">
            <li class="space-before"><a href="product-search.jsp">인기숙소</a></li>
            <li><a href="lend.jsp">국내숙소</a></li>
            <li><a href="docs-search.jsp">게시판</a></li>
            <li><a href="docs-register.jsp">리뷰등록</a></li>
            <li><a href="introduce.jsp">회사소개</a></li>
        </ul>
        <ul class="navbar_list">
            <li><a href="login.jsp">로그인</a></li>
            <li><a href="signup.jsp">회원가입</a></li>
        </ul>
        <button class="navbar_toggle_btn">
            <i class="fas fa-bars"></i>
        </button>
    </nav>

    <!-- section search -->
    <section id="product" class="">
        <div class="section_container">
            <ul class="product_list">
                <li><p><img src="../img/호텔1.png" class="icon">호텔</p></li>
                <li><p><img src="../img/리조트.png" class="icon">리조트</p></li>
                <li><p><img src="../img/펜션.png" class="icon">펜션</p></li>
                <li><p><img src="../img/캠핑.png" class="icon">캠핑</p></li>
                <li><p><img src="../img/글램핑.png" class="icon">글램핑</p></li>
                <li><p><img src="../img/풀빌라.png" class="icon">풀빌라</p></li>
                <li><p><img src="../img/etc.png" class="icon">기타</p></li>
                <li><button class="openBtn">필터</button>
                    <div id="modal" class="hidden">
                        <div class="modal_bg"></div>
                        <div class="modalBox">
                            <form name="ProductForm" method="post" action="product-search-submit.jsp"
                                enctype="multipart/form-data">
                                <div class="flex">
                                    <p>지역명</p>
                                    <div class="input_row" style="width: 40%; margin: 30px;">
                                        <input type="text" name="searchWord" class="input_text"
                                            placeholder="지역명을 입력해주세요">
                                    </div>
                                </div>

                                <div class="flex">
                                    <p>종류</p>
                                    <select class="input_row" style="width: 40%; margin: 30px; margin-left: 40px;"
                                        name="category">
                                        <option value="all">전체</option>
                                        <option value="etc">기타</option>
                                        <option value="tractor">호텔</option>
                                        <option value="combine">리조트</option>
                                        <option value="rice_transplanter">펜션</option>
                                        <option value="rotary">캠핑</option>
                                        <option value="livestock_machinery">글램핑</option>
                                        <option value="forklift">풀빌라</option>
                                    </select>
                                </div>

                                <div class="flex">
                                    <p>시작일</p>
                                    <div class="input_row" style="width: 40%; margin: 30px;">
                                        <input type="date" name="sDate" class="input_text" placeholder="">
                                    </div>
                                </div>

                                <div class="flex">
                                    <p>종료일</p>
                                    <div class="input_row" style="width: 40%; margin: 30px;">
                                        <input type="date" name="eDate" class="input_text" placeholder="">
                                    </div>
                                </div>
                                <div class="flex">
                                    <button type="button" class="lend_answer_back" style="margin: 30px;">
                                        <p>닫기</p>
                                    </button>
                                    <button type="submit" class="lend_answer_back" value="모델 검색" style="margin: 30px;">
                                        <p>검색</p>
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </section>

    <!-- section product -->
    <section id="product_item" class="">
        <div class="section">
            <div class="product_item_wrap">
                <div class="product_list_item" onclick="location.href='#';">
                    <img src="../img/호텔1.jpg" class="product_list_item_img">
                    <div class="product_item_detail">
                        <h3>호텔</h3>
                        <p>지역</p>
                        <p>서귀포, 중문관광로 72번길 35</p>
                        <h3>가격/박 380,000원 </h3>
                    </div>
                </div>

                <div class="product_list_item" onclick="location.href='#';">
                    <img src="../img/호텔2.jpg" class="product_list_item_img">
                    <div class="product_item_detail">
                        <h3>호텔</h3>
                        <p>지역</p>
                        <p>서울 중구 동호로 249번지</p>
                        <h3>가격/박 410,000원 </h3>
                    </div>
                </div>

                <div class="product_list_item" onclick="location.href='#';">
                    <img src="../img/리조트.jpg" class="product_list_item_img">
                    <div class="product_item_detail">
                        <h3>리조트</h3>
                        <p>지역</p>
                        <p>인천 중구 영종해안남로321번길 186</p>
                        <h3>가격/박 457,000원 </h3>
                    </div>
                </div>

                <div class="product_list_item" onclick="location.href='#';">
                    <img src="../img/리조트1.jpg" class="product_list_item_img">
                    <div class="product_item_detail">
                        <h3>리조트</h3>
                        <p>지역</p>
                        <p>부산광역시 해운대구 마린시티3로 52</p>
                        <h3>가격/박 356,000원 </h3>
                    </div>
                </div>

                <div class="product_list_item" onclick="location.href='#';">
                    <img src="../img/풀빌라.jpg" class="product_list_item_img">
                    <div class="product_item_detail">
                        <h3>풀빌라</h3>
                        <p>지역</p>
                        <p>경기도 가평군 상면 돌아우길 56</p>
                        <h3>가격/박 460,000원</h3>
                    </div>
                </div>

                <div class="product_list_item" onclick="location.href='#';">
                    <img src="../img/캠핑.jpg" class="product_list_item_img">
                    <div class="product_item_detail">
                        <h3>캠핑</h3>
                        <p>지역</p>
                        <p>인천 강화군 하점면 고려산로377번길 31</p>
                        <h3>가격/박 270,000원 </h3>
                    </div>
                </div>

                <div class="product_list_item" onclick="location.href='#';">
                    <img src="../img/글램핑.jpg" class="product_list_item_img">
                    <div class="product_item_detail">
                        <h3>글램핑</h3>
                        <p>지역</p>
                        <p>경기 가평군 상면 원흥길 46-12</p>
                        <h3>가격/박 320,000원 </h3>
                    </div>
                </div>

                <div class="product_list_item" onclick="location.href='#';">
                    <img src="../img/9.jpg" class="product_list_item_img">
                    <div class="product_item_detail">
                        <h3>펜션</h3>
                        <p>지역</p>
                        <p>경기 가평군 북면 꽃넘이길 87-19 (제령리)</p>
                        <h3>가격/박 349,000원 </h3>
                    </div>
                </div>

                <div class="product_list_item" onclick="location.href='#';">
                    <img src="../img/10.jpg" class="product_list_item_img">
                    <div class="product_item_detail">
                        <h3>펜션</h3>
                        <p>지역</p>
                        <p>경주시 감포읍 감포리 139-2</p>
                        <h3>가격/박 358,000원 </h3>
                    </div>
                </div>

                <div class="product_list_item" onclick="location.href='#';">
                    <img src="../img/11.jpg" class="product_list_item_img">
                    <div class="product_item_detail">
                        <h3>펜션</h3>
                        <p>지역</p>
                        <p>충청북도 청주시 상당구 미원면 30-26</p>
                        <p>8월 1일~10일</p>
                        <h3>가격/박 370,000원</h3>
                    </div>
                </div>

                <div class="product_list_item" onclick="location.href='#';">
                    <img src="../img/5.jpg" class="product_list_item_img">
                    <div class="product_item_detail">
                        <h3>펜션</h3>
                        <p>지역</p>
                        <p>강화도 하월시 바당구 145-3</p>
                        <h3>가격/박 340,000원</h3>
                    </div>
                </div>

                <div class="product_list_item" onclick="location.href='#';">
                    <img src="../img/8.jpg" class="product_list_item_img">
                    <div class="product_item_detail">
                        <h3>펜션</h3>
                        <p>지역</p>
                        <p>안동시 팔천3길 145-3</p>
                        <h3>가격/박 334,000원</h3>
                    </div>
                </div>
            </div>
        </div>
    </section>



    <!-- footer -->
    <footer id="footer">
        <div class="footer_logo">
            <div class="navbar_logo">
                <i class="fas fa-star"></i>
                <a href="index.jsp">놀러가자</a>
            </div>
        </div>
        </div>
        <div class="footer_text">
            <p class="footer_text_p">한국정보교육원 | 서울시 관악구 봉천로 227 보라매샤르망 503호 </p>
            <p class="footer_text_p">TEL : 010-0000-0000 / E-MAIL : phyeonw95@gmail.com</p>
            <p class="footer_text_p">COPYRIGHT (C)2024 놀러가자. ALL RIGHTS RESERVED.</p>
        </div>
        <div class="footer_box">
            <ul class="footer_list">
                <li><a href="introduce.jsp" class="footer_text_p">회사소개</a></li>
                <li><a href="conditions.jsp" class="footer_text_p">이용약관</a></li>
                <li><a href="user-policy.jsp" class="footer_text_p">개인정보처리방침</a></li>
                <li><a href="instruction.jsp" class="footer_text_p">서비스이용안내</a></li>
            </ul>
        </div>
    </footer>
</body>

</html>