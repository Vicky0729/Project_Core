<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>홈화면입니다!</h1>

	<%
	if (session != null && session.getAttribute("user_id") != null) {
		String userId = (String) session.getAttribute("user_id"); // 세션에서 user_id를 가져옵니다.
		out.println("Welcome, " + userId + "!");
	} else {
		response.sendRedirect("Login.jsp"); // 로그인 페이지로 리다이렉트
	}
	%>
</body>
</html>