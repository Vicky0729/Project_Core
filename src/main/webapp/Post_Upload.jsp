<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
#globals-box {
	width: 380px;
	min-height: 728px;
	border-left: 1px solid rgb(198, 198, 198);
	border-right: 1px solid rgb(198, 198, 198);
}

#globals-container {
	display: flex;
	justify-content: center;
	align-items: center;
}

html, body {
	margin: 0;
	padding: 0;
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

#post_frame {
	overflow: hidden;
	width: 380px;
	height: 650px;
	position: absolute;
}

#post_frame_box {
	width: 380px;
	height: 60px;
	position: absolute;
	left: 0px;
	top: 0px;
}

.e2_6 {
	box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
	background-color: rgba(255, 255, 255, 1);
	width: 340px;
	height: 570px;
	position: absolute;
	border-top-left-radius: 30px;
	border-top-right-radius: 30px;
	border-bottom-left-radius: 30px;
	border-bottom-right-radius: 30px;
	left: 18px;
	top: 30px;
}

.e2_6 {
	border: 3px solid rgba(0, 0, 0, 1);
}

.post_ch {
	margin-top: 40px;
	margin-bottom: 10px;
}

#post_out {
	margin-top: 20px;
	margin-left: 250px;
}

#post_text {
	width: 270px;
	/* 입력창의 너비 */
	height: 180px;
	/* 입력창의 높이 */
	padding: 10px;
	/* 입력창 내부 여백 */
	border: 1px solid #ccc;
	/* 입력창 테두리 */
	border-radius: 5px;
	/* 모서리 둥글게 */
	margin-top: 10px;
}
</style>

</head>
<body>


	<div id="globals-container">
		<div id="globals-box" align="center">
			<header>
				<div class="header-content">
					<h5>냉장고를 부탁해😘</h5>
				</div>
			</header>
			<!-- 여기부터가 상단바. 아래에  HTML 코드 적기 -->


			<div id="post_frame">
				<div id="post_frame_box"></div>

				<div class="e2_6">
					<div id="post_out">
						<button>x</button>
					</div>
					<form action="BoardService" method="post"
						enctype="multipart/form-data">

						<div class="post_ch">
							<span>사진을선택해주세요</span> <input type="file" name="filename">
						</div>
						<div class="post_ch">
							<img src="../IMG/gallery.png" alt="이미지등록" width="100px">
						</div>
						<input type="text" name="title">
						<textarea id="post_text" cols="60" rows="10" name="content"></textarea>
						<div>
							<input type="submit" value="게시글 올리기">

						</div>

					</form>
				</div>
			</div>



			<!-- 여기부터가 하단바. 위에  HTML 코드 적기 -->
			<footer>
				<div align="center" class="footer-content">
					<div>
						<a href="Home.html">Home</a>
					</div>
					<div>
						<a href="Post_Main.jsp">게시판</a>
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