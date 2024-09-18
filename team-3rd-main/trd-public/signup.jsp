<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
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
    <script src="./main.js" defer></script>

    <title>놀러가자</title>
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

    <section id="signup" class="section">
        <div class="section_container">
            <div class="navbar_logo" style="font-size: 35px;">
                <i class="fas fa-star"></i>
                <a href="index.jsp">놀러가자</a>
            </div>
            <form action="signup.jsp" method="post">
                <div class="signup_wrap">
                    <label>아이디<span class="red_dot">*</span></label>
                    <div class="input_row">
                        <input type="text" name="id" class="input_text" value="" maxlength="16" required="">
                    </div>
                    <!-- #2 PASSWORD VERIFICATION -->
                    <script>
                        var check = function () {
                            if (document.getElementById('pw').value ==
                                document.getElementById('cpassword').value) {
                                document.getElementById('message').style.color = 'green';
                                document.getElementById('message').innerHTML = 'matching';
                            } else {
                                document.getElementById('message').style.color = 'red';
                                document.getElementById('message').innerHTML = 'not matching';
                            }
                        }
                    </script>
                    <label>비밀번호<span class="red_dot">*</span></label>
                    <div class="input_row">
                        <input type="password" name="pw" id="pw" class="input_text" value="" minlength="8"
                            maxlength="30" required="" onkeyup='check();'>
                    </div>
                    <label>비밀번호 재확인<span class="red_dot">*</span></label>
                    <div class="input_row">
                        <input type="password" name="cpassword" id="cpassword" class="input_text" value="" minlength="8"
                            maxlength="30" required="" onkeyup='check();'>
                    </div>
                    <span id='message'></span>
                    <span class="text-danger"></span>
                    <label>이름<span class="red_dot">*</span></label>
                    <div class="input_row">
                        <input type="text" name="name" class="input_text" value="" maxlength="50" required="">
                    </div>
                    <label>이메일</label>
                    <div class="input_row">
                        <input type="email" name="email" class="input_text" value="" maxlength="30"
                            placeholder="abcd@~mail.com">
                    </div>
                    <label>휴대전화<span class="red_dot">*</span></label>
                    <div class="input_row">
                        <input type="tel" name="phone" class="input_text" value="" maxlength="16"
                            pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" required placeholder="010-xxxx-xxxx">
                    </div>
                    <label>주소<span class="red_dot">*</span></label>
                    <div class="input_row">
                        <input type="text" name="address" class="input_text" value="" maxlength="128" required=""
                            placeholder="~시 ~읍/면/동/리">
                    </div>
                    <div class="signup_submit">
                        <button type="submit" class="btn_login" name="signup">
                            <span class="btn_text">회원가입</span>
                        </button>
                    </div>

                </div>
                <div class="sigup_bottom">
                    <p><a class="btn-login" href="login.jsp" class="signup_btn">
                            이미 계정이 있으신가요?
                        </a></p>
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
        <div class="footer_text">
            <p class="footer_text_p">한국정보교육원 | 서울시 관악구 봉천로 227 보라매샤르망 503호</p>
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

    <%
        // 데이터베이스 연결 정보
        String jdbcUrl = "jdbc:mariadb://trd-prd-rds-master.crgoyc04k2rj.ap-northeast-2.rds.amazonaws.com:3306/nolgaja_db?useUnicode=true&characterEncoding=utf8mb4";
        String dbUser = "boss";
        String dbPassword = "sd12!fg34";

        Connection conn = null;
        PreparedStatement pstmt = null;

        if(request.getParameter("signup") != null) {
            try {
                // MariaDB 드라이버 로드
                Class.forName("org.mariadb.jdbc.Driver");

                // 데이터베이스 연결 RDS 엔드포인트(jdbcUrl)와 데이터베이스 사용자 이름 및 비밀번호를 실제 값으로 교체하기 
                conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);

                // 사용자 데이터 삽입
                String sql = "INSERT INTO users (id, pw, name, email, phone, address) VALUES (?, ?, ?, ?, ?, ?)";
                pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, request.getParameter("id"));
                pstmt.setString(2, request.getParameter("pw"));  // 비밀번호는 실제로는 해시하여 저장
                pstmt.setString(3, request.getParameter("name"));
                pstmt.setString(4, request.getParameter("email"));
                pstmt.setString(5, request.getParameter("phone"));
                pstmt.setString(6, request.getParameter("address"));

                int row = pstmt.executeUpdate();
                if(row > 0) {
                    out.println("<script>alert('회원가입이 완료되었습니다.'); location.href='login.jsp';</script>");
                } else {
                    out.println("<script>alert('회원가입에 실패했습니다. 다시 시도해주세요.'); location.href='signup.jsp';</script>");
                }
            } catch(Exception e) {
                e.printStackTrace();
                out.println("<script>alert('오류가 발생했습니다: " + e.getMessage() + "');</script>");
            } finally {
                if(pstmt != null) pstmt.close();
                if(conn != null) conn.close();
            }
        }
    %>
</body>

</html>
