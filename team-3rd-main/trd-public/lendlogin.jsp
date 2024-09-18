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
    <link rel="stylesheet" href="style.css?after">
    <script src="./js/lend.js" defer></script>
    <script src="./js/main.js" defer></script>

    <title>놀러가자</title>
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

    <!-- section lend_Q -->
    <section id="lend_Q">
        <div id="lend_Q1">
            <h1 class="lend_Q_Q">1/8</h1>
            <h1 class="lend_Q_Q">어디로 가실 계획인가요?</h1>
        </div>
        <div id="lend_Q2" class="hidden">
            <h1 class="lend_Q_Q">2/8</h1>
            <h1 class="lend_Q_Q">지역의 이름을 입력해 주세요!</h1>
        </div>
        <div id="lend_Q3" class="hidden">
            <h1 class="lend_Q_Q">3/8</h1>
            <h1 class="lend_Q_Q">원하는 숙소를 입력해 주세요!</h1>
        </div>
        <div id="lend_Q4" class="hidden">
            <h1 class="lend_Q_Q">4/8</h1>
            <h1 class="lend_Q_Q">임대할 주소를 입력해 주세요!</h1>
        </div>
        <div id="lend_Q5" class="hidden">
            <h1 class="lend_Q_Q">5/8</h1>
            <h1 class="lend_Q_Q">임대할 기간을 설정해 주세요!</h1>
        </div>
        <div id="lend_Q6" class="hidden">
            <h1 class="lend_Q_Q">6/8</h1>
            <h1 class="lend_Q_Q">상세 내용을 입력해 주세요!</h1>
        </div>
        <div id="lend_Q7" class="hidden">
            <h1 class="lend_Q_Q">7/8</h1>
            <h1 class="lend_Q_Q">임대 비용을 입력해 주세요!</h1>
        </div>
        <div id="lend_Q8" class="hidden">
            <h1 class="lend_Q_Q">8/8</h1>
            <h1 class="lend_Q_Q">이미지를 넣고, 등록 정보를 확인해 주세요</h1>
        </div>
    </section>

    <!-- section lend_Answer -->
    <section id="lend_answer" class="section">
        <div id="lend_form" class="section_container">

            <!-- lend_form_A1 -->
            <form id="lend_form_A1">
                <div class="radiogroup" role="radiogroup">
                    <input type="radio" id="Choice1" name="category" value="tractor">
                    <label for="Choice1" class="lend_answer_list">
                        <p class="lend_answer_list_p">호텔</p>
                    </label>
                    <input type="radio" id="Choice2" name="category" value="combine">
                    <label for="Choice2" class="lend_answer_list">
                        <p class="lend_answer_list_p">리조트</p>
                    </label>
                    <input type="radio" id="Choice3" name="category" value="rice transplanter">
                    <label for="Choice3" class="lend_answer_list">
                        <p class="lend_answer_list_p">펜션</p>
                    </label>
                    <input type="radio" id="Choice4" name="category" value="rotary">
                    <label for="Choice4" class="lend_answer_list">
                        <p class="lend_answer_list_p">풀빌라</p>
                    </label>
                    <input type="radio" id="Choice5" name="category" value="livestock machinery">
                    <label for="Choice5" class="lend_answer_list">
                        <p class="lend_answer_list_p">글램핑/캠핑</p>
                    </label>
                    <input type="radio" id="Choice6" name="category" value="forklift">
                    <label for="Choice6" class="lend_answer_list">
                        <p class="lend_answer_list_p">게스트하우스</p>
                    </label>
                    <input type="radio" id="Choice7" name="category" value="etc">
                    <label for="Choice7" class="lend_answer_list">
                        <p class="lend_answer_list_p">기타</p>
                    </label>
                </div>
                <div class="lend_answer_bottom">
                    <button type="submit" id="lend_next_btn" class="lend_answer_next hidden">
                        <input type="submit" value="다음" class="lend_answer_next_p">
                    </button>
                </div>
            </form>

            <!-- lend_form_A2 -->
            <form id="lend_form_A2" class="hidden">
                <div class="section_container">
                    <div class="input_row" style="width: 50%; margin: 30px;">
                        <input type="text" name="model" class="input_text" placeholder="원하는 숙소를 입력해 주세요" required>
                    </div>
                </div>
                <div class="lend_answer_bottom">
                    <button type="button" class="lend_answer_back" id="A2_btn">
                        <p>뒤로</p>
                    </button>
                    <button type="submit" id="lend_next_btn" class="lend_answer_next">
                        <input type="submit" value="다음" class="lend_answer_next_p">
                    </button>
                </div>
            </form>

            <!-- lend_form_A3 -->
            <form id="lend_form_A3" class="hidden">
                <div class="section_container">
                    <div class="input_row" style="width: 50%; margin-top: 30px;" id="lend_form_A3_maker">
                        <input type="text" name="maker" class="input_text" placeholder="제조사를 입력해 주세요" required>
                    </div>
                    <div>
                        <br>
                    </div>
                    <div class="input_row" style="width: 50%; margin: 30px;" id="lend_form_A3_date">
                        <input type="text" name="date" class="input_text" placeholder="제년식를 입력해 주세요" required>
                    </div>
                </div>
                <div class="lend_answer_bottom">
                    <button type="button" class="lend_answer_back" id="A3_btn">
                        <p>뒤로</p>
                    </button>
                    <button type="submit" id="lend_next_btn" class="lend_answer_next">
                        <input type="submit" value="다음" class="lend_answer_next_p">
                    </button>
                </div>
            </form>

            <!-- lend_form_A4 -->
            <form id="lend_form_A4" class="hidden">
                <div class="section_container">
                    <div class="input_row" style="width: 50%; margin: 30px;">
                        <input type="text" name="adress" class="input_text" placeholder="주소를 입력해 주세요" required>
                    </div>
                </div>
                <div class="lend_answer_bottom">
                    <button type="button" class="lend_answer_back" id="A4_btn">
                        <p>뒤로</p>
                    </button>
                    <button type="submit" id="lend_next_btn" class="lend_answer_next">
                        <input type="submit" value="다음" class="lend_answer_next_p">
                    </button>
                </div>
            </form>

            <!-- lend_form_A5 -->
            <form id="lend_form_A5" class="hidden">
                <div class="section_container">
                    <div class="A5_date">
                        <div class="A5_date_box" id="lend_form_A5_start">
                            <label>
                                <p class="date_p">시작일</p>
                            </label>
                            <input type="date" id="date1" name="startDate" class="date" required>
                        </div>
                        <div class="A5_date_box" id="lend_form_A5_end">
                            <label>
                                <p class="date_p">종료일</p>
                            </label>
                            <input type="date" id="date2" name="endDate" class="date" required>
                        </div>
                    </div>
                </div>
                <div class="lend_answer_bottom">
                    <button type="button" class="lend_answer_back" id="A5_btn">
                        <p>뒤로</p>
                    </button>
                    <button type="submit" id="lend_next_btn" class="lend_answer_next">
                        <input type="submit" value="다음" class="lend_answer_next_p">
                    </button>
                </div>
            </form>

            <!-- lend_form_A6 -->
            <form id="lend_form_A6" class="hidden">
                <div class="section_container">
                    <div class="input_row" style="width: 50%;">
                        <textarea name="detail" class="input_text" style="height: 200px;" required></textarea>
                    </div>
                </div>
                <div class="lend_answer_bottom">
                    <button type="button" class="lend_answer_back" id="A6_btn">
                        <p>뒤로</p>
                    </button>
                    <button type="submit" id="lend_next_btn" class="lend_answer_next">
                        <input type="submit" value="다음" class="lend_answer_next_p">
                    </button>
                </div>
            </form>

            <!-- lend_form_A7 -->
            <form id="lend_form_A7" class="hidden">
                <div class="section_container">
                    <div class="input_row" style="width: 50%; margin: 30px;">
                        <input type="price" name="maker" class="input_text" placeholder="$000원 /1박" required>
                    </div>
                </div>
                <div class="lend_answer_bottom">
                    <button type="button" class="lend_answer_back" id="A7_btn">
                        <p>뒤로</p>
                    </button>
                    <button type="submit" id="lend_next_btn" class="lend_answer_next">
                        <input type="submit" value="다음" class="lend_answer_next_p">
                    </button>
                </div>
            </form>

            <!-- lend_form_A8 -->
            <form id="lend_form_A8" class="hidden" name="docsForm" method="post" action="product-register.jsp"
                enctype="multipart/form-data">
                <div class="section_container">
                    <div class="lend_card">
                        <div class="lend_card_top">
                            <div class="filebox">
                                <input class="upload-name" value="파일을 업로드하면 이미지가 표시됩니다">
                                <label for="file">파일찾기</label>
                                <input type="file" id="file" multiple name="imgFile[]" onchange="readURL(this);"
                                    required>
                            </div>
                            <div class="A8_img">
                                <img id="preview" class="hidden">
                            </div>
                            <div class="lend_card_text">

                                <h2>기계종류</h2><input id="category" value=""></input>
                                <h2>기계명</h2><input id="model" value=""></input>
                                <h2>가격</h2><input id="price" value=""></input>
                                <p>제조사</p><input id="maker" value=""></input>
                                <p>제조년식</p><input id="date" value=""></input>
                                <p>주소</p><input id="adress" value=""></input>
                                <p>시작일</p><input id="startdate" value=""></input>
                                <p>종료일</p><input id="enddate" value=""></p>
                                <p>상세내용</p><input id="detail" value=""></input>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="lend_answer_bottom">
                    <button type="button" class="lend_answer_back" id="A8_btn">
                        <p>뒤로</p>
                    </button>
                    <button type="submit" id="lend_next_btn" class="lend_answer_next">
                        <input type="submit" value="다음" class="lend_answer_next_p">
                    </button>
                </div>
            </form>
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