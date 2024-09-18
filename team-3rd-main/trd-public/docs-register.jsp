<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.naming.*" %>
<!DOCTYPE html>
<html lang="en">
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
    <!-- navbar and form content remain the same -->

    <%
        // Database connection details
        String jdbcUrl = "jdbc:mariadb://dbtest.c1ik2ys6up6a.ap-northeast-2.rds.amazonaws.com:3306/nolgaja_db?useUnicode=true&characterEncoding=utf8mb4";
        String dbUser = "admin";
        String dbPassword = "qkrgusdn!!";

        if (request.getMethod().equalsIgnoreCase("POST")) {
            try (Connection conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);
                 PreparedStatement pstmt = conn.prepareStatement("INSERT INTO reviews (user_id, accommodation_name, rating, review_content) VALUES (?, ?, ?, ?)")) {
                 
                // Validate and set parameters
                String userId = request.getParameter("user_id");
                String accommodationName = request.getParameter("accommodation_name");
                String ratingStr = request.getParameter("rating");
                String reviewContent = request.getParameter("review_content");

                if (userId != null && accommodationName != null && ratingStr != null && reviewContent != null) {
                    int rating = Integer.parseInt(ratingStr);
                    pstmt.setString(1, userId);
                    pstmt.setString(2, accommodationName);
                    pstmt.setInt(3, rating);
                    pstmt.setString(4, reviewContent);

                    int row = pstmt.executeUpdate();
                    if (row > 0) {
                        out.println("<script>alert('리뷰가 성공적으로 등록되었습니다.'); location.href='docs-searchlogin.jsp';</script>");
                    } else {
                        out.println("<script>alert('리뷰 등록에 실패했습니다. 다시 시도해주세요.'); location.href='docs-registerlogin.jsp';</script>");
                    }
                } else {
                    out.println("<script>alert('모든 필드를 입력해 주세요.'); location.href='docs-register.jsp';</script>");
                }

            } catch (Exception e) {
                // Log error (consider using a logger instead)
                System.err.println("Database error: " + e.getMessage());
                out.println("<script>alert('오류가 발생했습니다. 나중에 다시 시도해주세요.'); location.href='docs-register.jsp';</script>");
            }
        }
    %>
</body>
</html>
