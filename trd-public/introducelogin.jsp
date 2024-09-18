<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link href="https://fonts.googleapis.com/css2?family=Gowun+Batang&family=Gowun+Dodum&family=Jua&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/7395e48b31.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="style.css?after">
    <script src="./js/introduce.js" defer></script>
    <script src="./js/main.js" defer></script>
    <title>놀러가자!</title>
</head>

<body>

    <!-- navbar -->
    <nav id="navbar">
        <div class="navbar_logo">
            <a href="index.jsp"><i class="fas fa-star"></i> 놀러가자</a>
        </div>
        <ul class="navbar_list">
            <li class="space-before"><a href="product-searchlogin.jsp">인기숙소</a></li>
            <li><a href="lendlogin.jsp">국내숙소</a></li>
            <li><a href="docs-searchlogin.jsp">게시판</a></li>
            <li><a href="docs-registerlogin.jsp">리뷰등록</a></li>
            <li><a href="introducelogin.jsp">회사소개</a></li>
        </ul>
        <ul class="navbar_list">
            <li><a href="login.jsp">로그아웃</a></li>
            <li><a href="signup.jsp">회원가입</a></li>
        </ul>
        <button class="navbar_toggle_btn">
            <i class="fas fa-bars"></i>
        </button>
    </nav>

    <!-- section home -->
    <section id="home">
        <div class="home_container">
            <h1 class="home_title">About</h1>
            <p class="home_description">편안한 여행을 위한, 재밌는 놀거리를 위한</p>
        </div>
        <div class="intro_navbar">
            <div class="intro_navbar_wrap">
                <ul class="intro_navbar_ul">
                    <li class="intro_navbar_li1" data-link="#about">인사말</li>
                    <li class="intro_navbar_li2" data-link="#service">개발 & 운영</li>
                    <li class="intro_navbar_li3" data-link="#location">회사 위치</li>
                    <li class="intro_navbar_li4" data-link="#contact">Contact</li>
                </ul>
            </div>
        </div>
    </section>

    <!-- section about -->
    <section id="about" class="section">
        <div class="section_container">
            <div class="about_imgs">
                <h1>숙소 예약 & 숙박 정보</h1>
                <h2>저희 놀러가자는 고객을 위한 서비스입니다.</h2>
                <img src="../img/가운데1.png" class="about_img"
                    alt="https://www.freepik.com/vectors/organic-farming'>Organic farming vector created by freepik - www.freepik.com">
                <br>
                <a href='https://www.freepik.com/vectors/organic-farming' class="explain">Organic farming vector created
                    by freepik - www.freepik.com</a>
            </div>
        </div>
    </section>

    <!-- section service -->
    <section id="service" class="section">
        <div class="section_container">
            <h1>운영 중인 서비스</h1>
            <h2>예약 - 놀거리 - 교통</h2>
            <div class="section_service">
                <div class="service_service">
                    <div class="service_icon" style="color: #5fa5d4; border: 1px solid #5fa5d4; ">
                        <span class="material-symbols-outlined" style="font-size: 80px;">
                            calendar_clock
                            </span>
                    </div>
                    <div class="service_title">예약 서비스</div>
                </div>
                <div class="service_service">
                    <div class="service_icon" style="color: #ff6863; border: 1px solid #ff6863;">
                        <span class="material-symbols-outlined" style="font-size: 80px;">
                            sports_esports
                            </span>
                    </div>
                    <div class="service_title">놀거리 예약 서비스</div>
                </div>
                <div class="service_service">
                    <div class="service_icon" style="color: #feb546; border: 1px solid #feb546;">
                        <span class="material-symbols-outlined" style="font-size: 80px;">
                            directions_bus
                            </span>
                    </div>
                    <div class="service_title">교통 할인 서비스</div>
                </div>
            </div>
        </div>
    </section>

    <!-- section location -->
    <section id="location" class="section">
        <div class="section_container">
            <h1>회사 위치</h1>
            <h3 class="location_h3">상세 주소 : 한국정보교육원 | 서울시 관악구 봉천로 227 보라매샤르망 503호</h3>

            <!-- 지도를 표시할 div 입니다 -->
            <div id="map" style="width:100%;height:500px;z-index:1;position:relative;"></div>

            <script type="text/javascript"
                src="//dapi.kakao.com/v2/maps/sdk.js?appkey=26379676c982d4d975ccee24531321d2&libraries=services"></script>
            <script>
                var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
                    mapOption = {
                        center: new kakao.maps.LatLng(36.54349293081557, 128.79632590241707), // 지도의 중심좌표
                        level: 3 // 지도의 확대 레벨
                    };

                // 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
                var map = new kakao.maps.Map(mapContainer, mapOption);

                // 마커가 표시될 위치입니다 
                var markerPosition = new kakao.maps.LatLng(36.54349293081557, 128.79632590241707);

                // 마커를 생성합니다
                var marker = new kakao.maps.Marker({
                    position: markerPosition
                });
                // 마커가 지도 위에 표시되도록 설정합니다
                marker.setMap(map);
                var iwContent = '<div style="padding: 5px 5px 5px 33px">억새풀<br><a href="https://map.kakao.com/link/map/NGN 연구실,36.54349293081557, 128.79632590241707" style="color:blue" target="_blank">큰지도보기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
                    iwPosition = new kakao.maps.LatLng(33.450701, 126.570667); //인포윈도우 표시 위치입니다

                // 인포윈도우를 생성합니다
                var infowindow = new kakao.maps.InfoWindow({
                    position: iwPosition,
                    content: iwContent
                });

                // 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
                infowindow.open(map, marker); 
            </script>
        </div>
    </section>

    <!-- section contact -->
    <section id="contact" class="section">
        <div class="section_container">
            <h1 class="contact_title">Contact</h1>
        </div>
        <a href="https://www.freepik.com/photos/paddy-field" class="contact_title"></a>
    </section>

    <!-- arrow up button -->
    <button class="arrow">
        <div class="btn_arrow" data-link="#about"><i class="fas fa-carrot">
                <p>top</p>
            </i></div>
    </button>

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