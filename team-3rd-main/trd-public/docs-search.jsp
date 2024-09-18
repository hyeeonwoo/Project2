<%@ page import="java.sql.*" %>
<%@ page import="java.util.logging.Logger" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <link rel="stylesheet" href="style.css">
    <script src="./js/main.js" defer></script>
    <title>게시판 - 놀러가자</title>
    <style>
        /* Styles remain the same */
    </style>
</head>
<body>
    <!-- Navbar and other HTML remain the same -->

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
                        // Database connection info
                        String jdbcUrl = "jdbc:mariadb://trd-prd-rds-master.crgoyc04k2rj.ap-northeast-2.rds.amazonaws.com:3306/nolgaja_db";
                        String dbUser = System.getenv("DB_USER");
                        String dbPassword = System.getenv("DB_PASSWORD");

                        int rowNumber = 1; // For numbering rows
                        Logger logger = Logger.getLogger("ReviewLogger");

                        try (Connection conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);
                             PreparedStatement pstmt = conn.prepareStatement("SELECT accommodation_name, rating, review_content, created_at FROM reviews ORDER BY review_id DESC");
                             ResultSet rs = pstmt.executeQuery()) {

                            while(rs.next()) {
                                String accommodationName = rs.getString("accommodation_name");
                                int rating = rs.getInt("rating");
                                String reviewContent = rs.getString("review_content");
                                Timestamp createdAt = rs.getTimestamp("created_at");
                    %>
                    <tr>
                        <td><%= rowNumber++ %></td>
                        <td><%= accommodationName %></td>
                        <td><%= rating %></td>
                        <td class="review-cell">
                            <%= reviewContent %>
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

    <!-- Footer remains the same -->
</body>
</html>
