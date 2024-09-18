<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Gowun+Batang&family=Gowun+Dodum&family=Jua&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/7395e48b31.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="./style.css">
    <script src="../main.js" defer></script>

    <title>놀러가자!</title>
</head>

<body>

    <!-- navbar -->
    <nav id="navbar">
        <div class="navbar_logo">
            <a href="index1.jsp"><i class="fas fa-star"></i> 놀러가자</a>
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

    <!-- section main img -->
    <section id="main">
        <div class="main_img"> 
        </div>
    </section>

    <!-- section item -->
    <section id="machine" class="section">
        <div class="section_container">
            <h1>여름 펜션</h1><br>
            <hr>
            <div class="machine_list">
                <div class="machine_list_item" onclick="location.href='#';">
                    <img src="../img/1.jpg"
                        class="machine_list_item_img">
                    <h2>카사레스 펜션</h2>
                    <p>가격 : 225,000원</p>
                </div>
                <div class="machine_list_item" onclick="location.href='#';">
                    <img src="../img/2.jpg"
                        class="machine_list_item_img">
                    <h2>파주 펜션</h2>
                    <p>가격 : 300,000원</p>
                </div>
                <div class="machine_list_item" onclick="location.href='#';">
                    <img src="../img/3.jpg"
                        class="machine_list_item_img">
                    <h2>카디스 펜션</h2>
                    <p>가격 : 271,000원</p>
                </div>
                <div class="machine_list_item" onclick="location.href='#';">
                    <img src="../img/4.jpg"
                        class="machine_list_item_img">
                    <h2>그안 펜션</h2>
                    <p>가격 : 208,000원</p>
                </div>
                <div class="machine_list_item" onclick="location.href='#';">
                    <img src="../img/5.jpg"
                        class="machine_list_item_img">
                    <h2>경주 펜션</h2>
                    <p>가격 : 245,000원</p>
                </div>
                <div class="machine_list_item" onclick="location.href='#';">
                    <img src="../img/6.jpg"
                        class="machine_list_item_img">
                    <h2>여수 펜션</h2>
                    <p>가격 : 316,000원</p>
                </div>
                <div class="machine_list_item" onclick="location.href='#';">
                    <img src="../img/7.jpg"
                        class="machine_list_item_img">
                    <h2>강원도 펜션</h2>
                    <p>가격 : 300,000원</p>
                </div>
                <div class="machine_list_item" onclick="location.href='#';">
                    <img src="../img/8.jpg"
                        class="machine_list_item_img">
                    <h2>가평 펜션</h2>
                    <p>가격 : 300,000원</p>
                </div>
                <div class="machine_list_item" onclick="location.href='#';">
                    <img src="../img/9.jpg"
                        class="machine_list_item_img">
                    <h2>대부도 펜션</h2>
                    <p>가격 : 300,000원</p>
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
