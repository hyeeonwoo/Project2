<%@ page import="java.sql.*" %>
<%@ page import="java.util.logging.Logger" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
    // Initialize logger
    Logger logger = Logger.getLogger("ReviewLogger");

    // Initialize database connection variables
    String jdbcUrl = "jdbc:mariadb://dbtest.c1ik2ys6up6a.ap-northeast-2.rds.amazonaws.com:3306/nolgaja_db";
    String dbUser = System.getenv("DB_USER"); // Fetch user from environment variables
    String dbPassword = System.getenv("DB_PASSWORD"); // Fetch password from environment variables
%>
<!DOCTYPE html>
<html lang="ko">
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
    <title>게시판 - 놀러가자</title>
    <style>
        /* Move this to external CSS file for maintainability */
        h1 {
            margin-bottom: 100px; /* 제목과 표 사이의 간격 */
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 40px; /* 표와 게시판 제목 사이의 간격 추가 */
            margin-bottom: 300px; /* 표와 푸터 사이의 간격 추가 */
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: #f2f2f2;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        .review-cell {
            position: relative;
        }
        .review-cell button {
            display: none;
            position: absolute;
            bottom: 5px;
            right: 5px;
            padding: 5px 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .review-cell:hover button {
            display: inline-block;
        }
    </style>
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

    <section class="section">
        <div class="section_container">
            <h1>게시판</h1>
            <table>
                <thead>
                    <tr>
                        <th>번호</th>
                        <th>숙소명</th>
                        <th>별점</th>
                        <th>후기</th>
                        <th>작성일</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        // Use try-with-resources for better resource management
                        try (Connection conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);
                             PreparedStatement pstmt = conn.prepareStatement("SELECT accommodation_name, rating, review_content, created_at FROM reviews ORDER BY review_id DESC");
                             ResultSet rs = pstmt.executeQuery()) {

                            int rowNumber = 1; // 번호를 순서대로 매기기 위한 변수

                            while(rs.next()) {
                                String accommodationName = rs.getString("accommodation_name");
                                int rating = rs.getInt("rating");
                                String reviewContent = rs.getString("review_content");
                                Timestamp createdAt = rs.getTimestamp("created_at");
                    %>
                    <tr>
                        <td><%= rowNumber++ %></td> <!-- 번호를 1씩 증가 -->
                        <td><c:out value="${accommodationName}" /></td>
                        <td><%= rating %></td>
                        <td class="review-cell">
                            <c:out value="${reviewContent}" />
                            <button onclick="alert('후기 내용을 클릭했습니다!')">클릭</button>
                        </td>
                        <td><%= createdAt %></td>
                    </tr>
                    <%
                            }
                        } catch(Exception e) {
                            logger.severe("Database error: " + e.getMessage());
                        }
                    %>
                </tbody>
            </table>
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
