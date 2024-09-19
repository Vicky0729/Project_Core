<%@page import="Model.BoardDAO"%>
<%@page import="Model.BoardDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- <link rel="stylesheet" type="text/css" href="importFile/css/파일명.css"> -->
<style>
#globals-box {
	width: 380px;
	border-left: 1px solid rgb(198, 198, 198);
	border-right: 1px solid rgb(198, 198, 198);
}

#globals-container {
	display: flex;
	justify-content: center;
	align-items: center;
}

header {
	display: flex;
	position: sticky;
	/* div 내부에서 스크롤 시 고정 */
	top: 0;
	z-index: 10;
	/* 다른 요소 위에 표시되도록 설정 */
	width: 100%;
	/* div 내부 전체 너비 */
	text-align: center;
	height: 40px;
	align-items: center;
	background-color: white;
}

html, body {
	margin: 0;
	padding: 0;
}

.header-content {
	display: flex;
	align-items: center;
	justify-content: center;
	gap: 30px;
	/* 이미지와 텍스트 간격 */
	margin-left: 15px;
}

footer {
	width: 380px;
	height: 40px;
	position: fixed;
	bottom: 0;
	align-content: center;
	background-color: white;
}

.footer-content {
	display: flex;
	align-items: center;
	justify-content: center;
	gap: 50px;
	font-size: 10px;
}

#btn-Post {
	margin-left: 170px;
	width: 25px;
	height: 25px;
}

#post_user_logo {
	width: 30px;
	/* 가로 길이 */
	height: 30px;
	/* 세로 길이 */
	background-color: lightgray;
	/* 배경 색상 */
	border-radius: 50%;
	/* 동그랗게 만들기 */
	overflow: hidden;
	/* 자식 요소가 div 밖으로 나가지 않게 */
}

#post_user_logo img {
	width: 100%;
	height: 100%;
	object-fit: cover;
}

#post_user_info {
	display: flex;
	align-items: center;
	margin-left: 15px;
	height: 40px;
}

#post_user_name {
	margin-left: 10px;
}

#post_click {
	height: 40px;
	display: flex;
	align-items: center;
}

#post_a {
	margin-left: 10px;
}

#post_a a {
	width: 30px;
	height: 30px;
	margin-left: 15px;
}

#post_emo_btn {
	margin-left: 200px;
}

#post_emo_btn button {
	width: 30px;
	height: 30px;
	margin-left: 5px;
}

#post_content {
	padding: 20px;
	font-size: 15px;
}
</style>
</head>
<body>

	<%
	BoardDAO boardDAO = new BoardDAO();
    List<BoardDTO> boards = boardDAO.allBoard();
    request.setAttribute("boards", boards);
	%>


	<div id="globals-container">
		<div id="globals-box" align="center">
			<header>
				<div class="header-content">
					<h5>냉장고를 부탁해😘</h5>
					<button id="btn-Post">+</button>
				</div>
			</header>


			<c:forEach var="b" items="${boards}">
				<div id="PostMaxBox">
					<div id="post_user_info">
						<div id="post_user_logo">
							<img src="https://i.ibb.co/bLpKZhn/chat-1.png" alt="사용자로고">
						</div>
						<div id="post_user_name">
							<h6>${b.user_id}</h6>
						</div>
					</div>
					<div id="post_photo">
						<img src="https://th.bing.com/th/id/OIP.KHK6t0_B-mcZ3YKPbxVY-AHaFj?w=231&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7" alt="닭국수" width="380px"
							height="380px"> <span>${b.file_rname}</span>
					</div>
					<div id="post_click">
						<div id="post_a">
							<a href="#"><img src="https://i.ibb.co/bLpKZhn/chat-1.png"
								alt="chat-1" border="0" width="20px"></a> <a href="#"><img
								src="https://i.ibb.co/bLpKZhn/chat-1.png" alt="chat-1"
								border="0" width="20px"></a>
						</div>
						<div id="post_emo_btn">
							<button>😘</button>
							<button>🤣</button>
						</div>
					</div>
					<div id="post_content">
						<span>${b.b_content}</span>
					</div>
				</div>
			</c:forEach>


			<footer>
				<div align="center" class="footer-content">
					<div>
						<a href="Home.html">Home</a>
					</div>
					<div>
						<a href="Post_Main.html">게시판</a>
					</div>
					<div>
						<a href="Like_Recipe.html">나만의레시피</a>
					</div>
					<div>
						<a href="My_Page.html">마이페이지</a>
					</div>
				</div>
			</footer>
		</div>

	</div>
</body>
</html>