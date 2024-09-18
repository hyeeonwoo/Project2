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
    <link rel="stylesheet" href="./style.css?after">
    <script src="./main.js" defer></script>

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

    <!-- login -->
    <section id="login" class="section">
        <div class="section_container">
            <div class="navbar_logo" style="font-size: 35px;">
                <i class="fas fa-star"></i>
                <a href="index.jsp">놀러가자</a>
            </div>
            <form action="login.jsp" method="post">
                <div class="login_pannel">
                    <div class="login_pannel_inner">
                        <div class="id_pw_wrap">
                            <div class="input_row">
                                <input type="text" id="id" class="input_text" name="id" placeholder="아이디" required>
                            </div>
                            <div class="input_row">
                                <input type="password" id="pw" class="input_text" name="pw" placeholder="비밀번호" required>
                            </div>
                        </div>
                        <div class="keep">
                        </div>
                        <button type="submit" class="btn_login" name="login">
                            <span class="btn_text">로그인</span>
                        </button>
                    </div>
                </div>
            </form>
            <div class="login_find">
                <span><a href="#" class="login_find_menu">아이디 찾기</a></span>
                <span><a href="#" class="login_find_menu">비밀번호 찾기</a></span>
                <span><a href="signup.jsp" class="login_find_menu">회원가입</a></span>
            </div>

            <%
                if ("POST".equalsIgnoreCase(request.getMethod())) {
                    // 데이터베이스 연결 변수
                    Connection conn = null;
                    PreparedStatement pstmt = null;
                    ResultSet rs = null;
        
                    // 사용자 입력 값 받기
                    String userId = request.getParameter("id");
                    String password = request.getParameter("pw");
        
                    try {
                        // 데이터베이스 연결
                        Class.forName("org.mariadb.jdbc.Driver");
                        String dbUrl = "jdbc:mariadb://trd-prd-rds-master.crgoyc04k2rj.ap-northeast-2.rds.amazonaws.com:3306/nolgaja_db";
                        String dbUser = "boss"; // 데이터베이스 사용자 이름
                        String dbPassword = "sd12!fg34"; // 데이터베이스 비밀번호
                        conn = DriverManager.getConnection(dbUrl, dbUser, dbPassword);
        
                        // SQL 쿼리
                        String sql = "SELECT * FROM users WHERE id = ? AND pw = ?";
                        pstmt = conn.prepareStatement(sql);
                        pstmt.setString(1, userId);
                        pstmt.setString(2, password);
        
                        rs = pstmt.executeQuery();
        
                        if (rs.next()) {
                            session.setAttribute("user_id", userId);  // 세션에 사용자 ID 저장
                            out.println("<script>alert('로그인 성공!'); location.href='index1.jsp';</script>");
                        } else {
                            out.println("<script>alert('로그인 실패! 아이디 또는 비밀번호를 확인하세요.'); history.back();</script>");
                        }
                    } catch (SQLException e) {
                        e.printStackTrace();
                        out.println("<script>alert('SQL 오류 발생: " + e.getMessage() + "'); history.back();</script>");
                    } catch (ClassNotFoundException e) {
                        e.printStackTrace();
                        out.println("<script>alert('JDBC 드라이버 오류 발생: " + e.getMessage() + "'); history.back();</script>");
                    } catch (Exception e) {
                        e.printStackTrace();
                        out.println("<script>alert('오류 발생: " + e.getMessage() + "'); history.back();</script>");
                    } finally {
                        // 리소스 해제
                        if (rs != null) try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
                        if (pstmt != null) try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); }
                        if (conn != null) try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
                    }
                }
            %>  
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
</body>

</html>
