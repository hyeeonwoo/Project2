<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Gowun+Batang&family=Gowun+Dodum&family=Jua&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/7395e48b31.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="style.css">
    <script src="./js/main.js" defer></script>
    <title>놀러가자!</title>
</head>
<body>

    <!-- Navbar -->
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

    <!-- Review Registration Form -->
    <section class="section">
        <div class="section_container">
            <div class="reviewRegiForm">
                <h1>숙소 리뷰 등록</h1>
                <form action="docs-registerlogin.jsp" method="post">
                    <div class="form-group">
                        <label for="user_id">ID</label>
                        <input type="text" id="user_id" name="user_id" class="reviewRegister" value="<%= (String)session.getAttribute("user_id") %>" readonly />
                    </div>

                    <div class="form-group">
                        <label for="accommodation_name">숙소명</label>
                        <input type="text" id="accommodation_name" name="accommodation_name" class="reviewRegister" placeholder="숙소명을 입력하세요." required />
                    </div>

                    <div class="form-group">
                        <label for="rating">별점</label>
                        <div class="star-rating">
                            <input type="radio" id="star5" name="rating" value="5" required /><label for="star5" title="5 stars">&#9733;</label>
                            <input type="radio" id="star4" name="rating" value="4" required /><label for="star4" title="4 stars">&#9733;</label>
                            <input type="radio" id="star3" name="rating" value="3" required /><label for="star3" title="3 stars">&#9733;</label>
                            <input type="radio" id="star2" name="rating" value="2" required /><label for="star2" title="2 stars">&#9733;</label>
                            <input type="radio" id="star1" name="rating" value="1" required /><label for="star1" title="1 star">&#9733;</label>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="review_content">후기</label>
                        <textarea id="review_content" name="review_content" rows="5" cols="30" class="reviewRegister" placeholder="후기를 입력하세요." required></textarea>
                    </div>

                    <div class="form-group" style="text-align: center;">
                        <input type="submit" value="리뷰 등록" class="reviewSubmit" />
                    </div>
                </form>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer id="footer">
        <div class="footer_logo">
            <div class="navbar_logo">
                <i class="fas fa-star"></i>
                <a href="index.jsp">놀러가자</a>
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

    <%
        // Database connection information
        String jdbcUrl = "jdbc:mariadb://trd-prd-rds-master.crgoyc04k2rj.ap-northeast-2.rds.amazonaws.com:3306/nolgaja_db?useUnicode=true&characterEncoding=utf8mb4";
        String dbUser = "boss";
        String dbPassword = "sd12!fg34";

        Connection conn = null;
        PreparedStatement pstmt = null;

        if(request.getMethod().equalsIgnoreCase("POST")) {
            try {
                // Load MariaDB driver
                Class.forName("org.mariadb.jdbc.Driver");

                // Connect to the database
                conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);

                // Insert user data into the database
                String sql = "INSERT INTO reviews (user_id, accommodation_name, rating, review_content) VALUES (?, ?, ?, ?)";
                pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, request.getParameter("user_id"));
                pstmt.setString(2, request.getParameter("accommodation_name"));
                pstmt.setInt(3, Integer.parseInt(request.getParameter("rating")));
                pstmt.setString(4, request.getParameter("review_content"));

                int row = pstmt.executeUpdate();
                if(row > 0) {
                    out.println("<script>alert('리뷰가 성공적으로 등록되었습니다.'); location.href='docs-searchlogin.jsp';</script>");
                } else {
                    out.println("<script>alert('리뷰 등록에 실패했습니다. 다시 시도해주세요.'); location.href='docs-registerlogin.jsp';</script>");
                }
            } catch(Exception e) {
                e.printStackTrace();
                out.println("<script>alert('오류가 발생했습니다: " + e.getMessage() + "'); location.href='docs-registerlogin.jsp';</script>");
            } finally {
                // Close resources
                if(pstmt != null) try { pstmt.close(); } catch(SQLException e) { e.printStackTrace(); }
                if(conn != null) try { conn.close(); } catch(SQLException e) { e.printStackTrace(); }
            }
        }
    %>
</body>
</html>
