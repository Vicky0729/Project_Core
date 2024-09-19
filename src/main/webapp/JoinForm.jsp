<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="ImportFile/css/EX_about_Text_Logo.css">
<link rel="stylesheet" type="text/css"
	href="ImportFile/css/EX_Containers.css">
<link rel="stylesheet" type="text/css"
	href="ImportFile/css/EX_style_content.css">
<link rel="stylesheet" type="text/css"
	href="ImportFile/css/EX_with_headers_footers.css">
<link rel="stylesheet" type="text/css"
	href="ImportFile/css/JoinForm.css">
<title>Insert title here</title>
</head>
<body>
	<!-- 전역 컨테이너 -->
	<div class="globals-container">
		<div class="globals-space" align="center">
			<!-- 타이틀&로고 -->
			<!-- (수정 항목 : 로고&타이틀 배열 방향, 디자인 디테일) -->
			<div class="logo_container" id="joinPageLogo-container">
				<!-- 냉부로고 사이즈 120 -->
				<img src="ImportFile/imgs/logoM.png" alt="냉부로고" id="joinPageLogoImg" />

				<!-- 타이틀 위치 (가로 배치, 폰트 사이즈 조정) -->
				<h2 class="title_text" id="joinPageLogoTitle">
					<span class="title_text title_1">냉장고를</span> <br /> 
					<span class="title_text title_2">부탁해!</span>
				</h2>
			</div>

			<!-- 회원가입 정보 입력창 -->
			<form action="JoinService" method="post">
				<div class="input_container design_text joinPageInput">
					<input type="text" name="userName" placeholder="이름 또는 별명을 입력하세요" />
					<input type="text" name="userId" placeholder="ID를 입력하세요" />
				</div>

				<!-- ID 중복체크 버튼 -->
				<div class="JoinPageIdCheck-container">
					<button class="btn b_pink" id="joinPageIdCheckBtn" type="submit"
						name="idCheck" value="btn-New-ID">
						<span class="design_text" id="joinPageIdCheckBtnTxt">중복확인</span>
					</button>
					<!-- ⭐⭐ 추후, Script로 hidden 메세지 추가 
                    : "사용 가능한 아이디 입니다." OR "사용이 불가능한 아이디 입니다." ⭐⭐ -->
					<span class="system_text idc_Success">사용 가능한 ID 입니다.</span>
					<!-- <span class="system_text idc_Fail">사용이 불가능한 ID 입니다.</span> -->
				</div>

				<div class="input_container design_text joinPageInput">
					<input type="text" name="userPw" placeholder="PW를 입력하세요" /> <input
						type="text" name="user_pw_Check" placeholder="PW 확인" /> <input
						id="JoinPageInputEmail" type="text" name="userEmail"
						placeholder="이메일을 입력하세요" />
				</div>
				<input type="text" name="userProfileImg" />

				<!-- '회원가입환영.jsp(가상)' OR 'Home.jsp' 페이지 이동 -->
				<button class="btn b_green design_text" id="joinPageSubmit"
					type="submit" name="action" value="btn-Join">
					<span class="design_text" id="joinPageSubmitTxt">Join Us</span>
				</button>
			</form>
		</div>
	</div>


</body>
</html>