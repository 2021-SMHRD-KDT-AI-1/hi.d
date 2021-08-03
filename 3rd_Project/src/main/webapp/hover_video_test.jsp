<%@page import="com.VO.followVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.petDAO"%>
<%@page import="com.VO.petVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">

<!-- Facebook Meta Tags / 페이스북 오픈 그래프 -->
<meta property="og:url" content="http://kindtiger.dothome.co.kr/insta">
<meta property="og:type" content="website">
<meta property="og:title" content="instagram">
<meta property="og:description" content="instagram clone">
<meta property="og:image"
	content="http://kindtiger.dothome.co.kr/insta/imgs/instagram.jpeg">

<!-- Twitter Meta Tags / 트위터 -->
<meta name="twitter:card" content="instagram clone">
<meta name="twitter:title" content="instagram">
<meta name="twitter:description" content="instagram clone">
<meta name="twitter:image"
	content="http://kindtiger.dothome.co.kr/insta/imgs/instagram.jpeg">

<!-- Google / Search Engine Tags / 구글 검색 엔진 -->
<meta itemprop="name" content="instagram">
<meta itemprop="description" content="instagram clone">
<meta itemprop="image"
	content="http://kindtiger.dothome.co.kr/insta/imgs/instagram.jpeg">


<title>Hi Dear</title>
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/profile.css">
<link rel="shortcut icon" href="imgs/icons/imagelogo.png">

<style>
/* new_header style */
/* @font-face {
            font-family: 'HeydingsCommonIconsRegular';
            src: url('http://ianfarb.com/random/heydings_icons-webfont.eot');
            src: url('http://ianfarb.com/random/heydings_icons-webfont.eot?#iefix') format('embedded-opentype'),
                 url('http://ianfarb.com/random/heydings_icons-webfont.woff') format('woff'),
                 url('http://ianfarb.com/random/heydings_icons-webfont.ttf') format('truetype'),
                 url('http://ianfarb.com/random/heydings_icons-webfont.svg#HeydingsCommonIconsRegular') format('svg');
            font-weight: normal;
            font-style: normal;

        } */
* {
	margin: 0;
	padding: 0;
}

body {
	background: #e5e5e5;
}

.bg {
	position: fixed;
	z-index: -4;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	transition: .25s;
	pointer-events: none;
}

li {
	list-style: none;
}

li a {
	display: block;
	float: left;
	width: 20%;
	text-align: center;
	font-family: 'HeydingsCommonIconsRegular', Helvetida Neue, sans-serif;
	font-weight: 700;
	letter-spacing: 1px;
	font-size: 40px;
	color: #fff;
	background: #ccc;
	text-decoration: none;
	text-transform: uppercase;
	text-shadow: 2px 2px 0 rgba(0, 0, 0, .25);
	transition: .25s;
}

li a:hover {
	margin: -10px 0 0 0;
}

.menu {
	width: 500px;
	border-radius: 10px;
	overflow: hidden;
}

.right_icons .menu:first-child a {
	background: transparent !important;
}

.right_icons .menu:nth-child(2) a {
	background: transparent !important;
}

.right_icons .menu:nth-child(3) a {
	background: transparent !important;
}

.right_icons .menu:nth-child(4) a {
	background: transparent !important;
}

.right_icons .menu:nth-child(5) a {
	background: transparent !important;
}

/* newpost 모달창 */
/* newpost & profile_edit 공통 */
body {
	text-align: center;
	display: block;
	margin: 0 auto;
	font-size: 16px;
	color: #999;
}

h1 {
	display: block;
	font-size: 2em;
	margin-block-start: 0.67em;
	margin-block-end: 0.67em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
	font-weight: bold;
}

label {
	display: block;
	margin-top: 15px;
	letter-spacing: 2px;
}

input, textarea {
	width: 439px;
	height: 27px;
	background-color: #efefef;
	border-radius: 6px;
	border: 1px solid #dedede;
	padding: 10px;
	margin-top: 8px;
	font-size: 0.9em;
	color: #3a3a3a;
}

/* post 모달 */
#post_chk_open {
	font-size: 0.9em;
}

/*	행동 분석 버튼 CSS - 기본
	input.behavior_submit_button {
	display: flex;
	width: 230px;
	height: 50px;
	position: relative;
	border: none;
	color: #5f6368;
	border-radius: 1vw;
	display: inline-block;
	padding: 6px 8px 6px 8px;
	cursor: pointer;
	margin-top: 20px;
	margin-bottom: 10px;
}

.behavior_submit_button:hover {
	color: #fff;
	background-color: #ffa042;
	opacity: 0.9;
}*/

/* 행동 분석 버튼 CSS - 화려함*/
input.behavior_submit_button{
	-webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
    text-align: center;
}

.behavior_submit_button {
    width: 230px;
    font-size: 16px;
    font-weight: 500;
    color: #fff;
    cursor: pointer;
    margin: 20px;
    height: 55px;
    text-align:center;
    border: none;
    background-size: 300% 100%;

    border-radius: 50px;
    moz-transition: all .4s ease-in-out;
    -o-transition: all .4s ease-in-out;
    -webkit-transition: all .4s ease-in-out;
    transition: all .4s ease-in-out;
}

.behavior_submit_button:hover {
    background-position: 100% 0;
    moz-transition: all .4s ease-in-out;
    -o-transition: all .4s ease-in-out;
    -webkit-transition: all .4s ease-in-out;
    transition: all .4s ease-in-out;
}

.behavior_submit_button:focus {
    outline: none;
}

.behavior_submit_button {
    background-image: linear-gradient(to right, #fc6076, #ff9a44, #ef9d43, #e75516);
    box-shadow: 0 4px 15px 0 rgba(252, 104, 110, 0.75);
}


input.chk_open {
	width: 15px;
	height: 15px;
	margin: 15px 30px 10px 20px;
}

textarea#post_textarea {
	height: 100px;
	background-color: #efefef;
}

.modal_post {
	z-index: 1;
	position: fixed;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.5);
	opacity: 0;
	visibility: hidden;
	transform: scale(1.1);
	transition: visibility 0s linear 0.25s, opacity 0.25s 0s, transform
		0.25s;
}

.post-show-modal {
	opacity: 1;
	visibility: visible;
	transform: scale(1.0);
	transition: visibility 0s linear 0s, opacity 0.25s 0s, transform 0.25s;
}

.post-modal-content {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	background-color: white;
	padding: 1rem 1.5rem;
	width: 1100px;
	height: 700px;
	border-radius: 0.5rem;
}

.post-upload {
	max-width: 550px;
	width: 450px;
	height: 450px;
	border: 1px solid #e6e6e6;
	margin: 0 auto;
	display: flex;
	justify-content: center;
	align-items: center;
	/* position: relative; */
	float: center;
}

.behavior_analysis {
	max-width: 350px;
	height: 320px;
	border: 1px solid #e6e6e6;
	margin: 3px auto;
	display: flex;
	justify-content: center;
	align-items: center;
	position: relative;
}

.upload_form {
	column-count: 2;
	column-gap: 100px;
}

.post_submit {
	width: 127px;
	height: 48px;
	text-align: center;
	border: none;
	margin-top: 20px;
	cursor: pointer;
}

.post_submit:hover {
	color: #fff;
	background-color: #353535ea;
	opacity: 0.9;
}

.post_cancel {
	width: 127px;
	height: 48px;
	text-align: center;
	border: none;
	margin-top: 20px;
	cursor: pointer;
}

.post_cancel:hover {
	color: #fff;
	background-color: #353535ea;
	opacity: 0.9;
}

.post_closebutton {
	float: right;
	width: 1.5rem;
	line-height: 1.5rem;
	text-align: center;
	cursor: pointer;
	border-radius: 0.25rem;
	background-color: lightgray;
}

.post_closebutton:hover {
	background-color: darkgray;
}

/* 프로필 수정 모달 */
textarea#profile_edit_textarea {
	height: 60px;
	background-color: #efefef;
}

.modal_profile_edit {
	z-index: 1;
	position: fixed;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.5);
	opacity: 0;
	visibility: hidden;
	transform: scale(1.1);
	transition: visibility 0s linear 0.25s, opacity 0.25s 0s, transform
		0.25s;
}

.profile-edit-modal-content {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	background-color: white;
	padding: 1rem 1.5rem;
	width: 500px;
	height: 680px;
	border-radius: 0.5rem;
}

.profile-edit-upload {
	max-width: 250px;
	height: 250px;
	border: 1px solid #e6e6e6;
	margin: 0 auto;
	display: flex;
	justify-content: center;
	align-items: center;
	position: relative;
}

.profile-edit-show-modal {
	opacity: 1;
	visibility: visible;
	transform: scale(1.0);
	transition: visibility 0s linear 0s, opacity 0.25s 0s, transform 0.25s;
}

.profile_edit_submit {
	width: 127px;
	height: 48px;
	text-align: center;
	border: none;
	margin-top: 20px;
	cursor: pointer;
}

.profile_edit_submit:hover {
	color: #fff;
	background-color: #353535ea;
	opacity: 0.9;
}

.profile_edit_cancel {
	width: 127px;
	height: 48px;
	text-align: center;
	border: none;
	margin-top: 20px;
	cursor: pointer;
}

.profile_edit_cancel:hover {
	color: #fff;
	background-color: #353535ea;
	opacity: 0.9;
}

.profile_edit_closebutton {
	float: right;
	width: 1.5rem;
	line-height: 1.5rem;
	text-align: center;
	cursor: pointer;
	border-radius: 0.25rem;
	background-color: lightgray;
}

.profile_edit_closebutton:hover {
	background-color: darkgray;
}

/* Hover_Zoom_in CSS */
.active {
	padding: 0;
	border-radius: 20px;
}

.active:last-child {
	 padding-bottom: 60px; 
} 

.active::after {
	content: ”;
	clear: both;
	display: block;
}

.active div {
	position: relative;
	float: left;
	width: 100%;
    margin: 0 0 18px 0;
	padding: 0;
}

.active div:first-child {
	margin-left: 0;
}


.mylist_contents video{
	width: 300px;
	height: 200px;
	margin: 0;
	padding: 0;
	overflow: hidden;
}

.mylist_contents div video{
	width: 300px;
	height: auto;
	border-radius: 40px;
	-webkit-transition: .3s ease-in-out;
	transition: .3s ease-in-out;
}

.mylist_contents div:hover video{
	-webkit-transform: scale(1.1);
	transform: scale(1.1);
}


.bookmark_contents video{
	width: 300px;
	height: 200px;
	margin:0px;
	padding: 0;
	overflow: hidden;
}

.bookmark_contents div video{
	width: 300px;
	height: auto;
	border-radius: 40px;
	-webkit-transition: .3s ease-in-out;
	transition: .3s ease-in-out;
}

.bookmark_contents div:hover video{
	-webkit-transform: scale(1.1);
	transform: scale(1.1);
}

/* Hide Play button + controls on iOS */
pic::-webkit-media-controls {
    display:none !important;
}

</style>

</head>

<body>
<%
//반려동물 정보가 담겨있는 곳 : vo
	petVO pet_vo = (petVO)session.getAttribute("pet_vo");

//팔로워 팔로우 정보
	followVO follow_vo = (followVO)session.getAttribute("follow_vo");

%>

	<section id="container">

		<header id="header">
			<section class="inner">

				<h1 class="logo">
					<a href="index.jsp">
						<div class="sprite_insta_icon"></div>
						<div class="sprite_write_logo"></div>
					</a>
				</h1>

				<div class="search_box">
					<input type="text" placeholder="검색" id="search-field">

					<div class="fake_field">
						<span class="sprite_small_search_icon"></span> <span>검색</span>
					</div>
				</div>

				<div class="right_icons">
					<ul class="menu">
						<li><a class="trigger_post">
								<div class="sprite_camera_icon"></div>
						</a></li>

						<div class="modal_post">
							<div class="post-modal-content">
								<span class="post_closebutton">&times;</span>
								<h1 class="title">NEW POST</h1>
								<label></label>
								<form class="upload_form" action="#post.php" method="POST">
									<label></label>
									<div class="preview">
										<!-- 이미지 미리보기 영역 -->
										<div class="post-upload">
											<div class="post_btn">
												<div class="logo_icon">
													<span></span> <span></span>
												</div>
												<p>NEW POST</p>
											</div>
											<label></label><label></label>
										</div>
									</div>
						
									<p>
										<!-- 첨부파일(이미지파일만 업로드) -->
										<input type="file" name="photo" id="post_photo"
											accept="video/*" onchange="setpostthumbnail(event);">
									</p>
									<div>
										<input type="button" class="behavior_submit_button"
											value="행동 분석하기">
									</div>
									
									<label for="behavior_analysis">Hi,Dear!</label>
									<div class="behavior_analysis"></div>

									<p id="post_chk_open">
										<!-- 공개 비공개 -->
									<div>
										공개<input type="radio" class="chk_open" name="chk_open"
											value="공개"> 비공개<input type="radio" class="chk_open"
											name="chk_open" value="비공개">
									</div>
									</p>

									<label for="contents">Contents</label>
									<textarea id="post_textarea" name="contents"
										placeholder="#해시태그 & 문구입력"></textarea>
									<input type="button" class="post_cancel" value="취소"> <input
										type="submit" class="post_submit" value="업로드">
								</form>
							</div>
						</div>


						<li class="bg"></li>
					</ul>
					<ul class="menu">
						<li><a href="likepage.jsp">
								<div class="sprite_compass_icon"></div>
						</a></li>
						<li class="bg"></li>
					</ul>
					<ul class="menu">
						<li><a href="profile3.html">
								<div class="sprite_user_icon_outline"></div>
						</a></li>

						<li class="bg"></li>
					</ul>
				</div>
			</section>

		</header>


		<div id="main_container">

			<section class="b_inner">

				<div class="hori_cont">
					<div class="profile_wrap">
						<div class="profile_img">
							<img src="imgs/icons/profile_example.png" alt="프로필사진">
						</div>
					</div>

					<div class="detail">
						<div class="top">


							<div class="user_name"><%=pet_vo.getPet_nick() %></div>

							<div class="detail_button" id="trigger_profile_edit"
								menu-index="0">프로필 편집</div>

							<!-- 프로필 편집 모달창 -->
							<div class="modal_profile_edit">
								<div class="profile-edit-modal-content">
									<span class="profile_edit_closebutton">&times;</span>
									<h1 class="title">프로필 편집</h1>
									<label></label>
									<form action="#post.php" method="POST">
										<label></label>
										<div class="profile_preview">
											<!-- 이미지 미리보기 영역 -->
											<div class="profile-edit-upload">
												<div class="post_btn">
													<div class="logo_icon">
														<span></span> <span></span>
													</div>
													<p>프로필 사진 바꾸기</p>
												</div>
											</div>
										</div>

										<p>
											<!-- 첨부파일(이미지파일만 업로드) -->
											<input type="file" id="profile_photo" accept="image/*"
												onchange="setprofile_editthumbnail(event);" />
										</p>

										<label for="petnick">Pet-NickName</label> <input type="text"
											name="petnick" placeholder="변경할 닉네임"> <label></label>
										<label for="introtext">Intro Text</label>
										<textarea id="profile_edit_textarea" name="introtext"
											placeholder="소개글 변경"></textarea>
										<input type="button" class="profile_edit_cancel" value="취소">
										<input type="submit" class="profile_edit_submit" value="수정">
										
									</form>
								</div>
							</div>

							<div class="detail_button" id="trigger_logout" menu-index="1" onClick="location.href='choice.jsp'">로그아웃</div>
						</div>


						<ul class="middle">
							<li><span>게시물</span> <span>3</span></li>
							<li><span>팔로워</span> <span>4</span></li>
							<li><span>팔로우</span> <span>5</span></li>
						</ul>

						<div class="bottom">
							<span>Intro Text<br><%=pet_vo.getPet_introduce() %>
							</span>
						</div>

						<br> <br>
						<p class="about">
							<span class="nick_name">공개 게시물</span> <span class="book_mark">다이어리</span>
						</p>

					</div>

					<div class="profile_wrap_right">
						<div class="emotion_counts">
							<ul class="emotion_count">
								<!-- 최근 감정 상태 해시태그 공유  -->
								<li><span>최근 나의 상태는?</span></li>
								<li><span OnClick="location.href='#'" onfocus="blur();">#행복해</span></li>
								<li><span OnClick="location.href='#'">#외출중</span></li>
								<li><span OnClick="location.href='#'">#배고파_죽겠어</span></li>
								<li><span OnClick="location.href='#'">#왜불러?</span></li>
							</ul>
						</div>
					</div>

				</div>

				<div class="mylist_contents contents_container active">
					<div class="pic">
						<a href="#"><video width='400'>
									<source src="videos/dog1.mp4" type="video/mp4"/></video></a>
					</div>
					<div class="pic">
						<a href="#"><video width='400'>
							<source src="videos/dog2.mp4" type="video/mp4"/></video></a>
					</div>
					<div class="pic">
						<a href="#"><video width='400'>
							<source src="videos/dog3.mp4" type="video/mp4"/></video></a>
					</div>
					<div class="pic">
						<a href="#"><video width='400'>
							<source src="videos/dog2.mp4" type="video/mp4"/></video></a>
					</div>
					<div class="pic">
						<a href="#"><video width='400'>
							<source src="videos/dog1.mp4" type="video/mp4"/></video></a>
					</div>
					<div class="pic">
						<a href="#"><video width='400'>
							<source src="videos/dog3.mp4" type="video/mp4"/></video></a>
					</div>
					<div class="pic">
						<a href="#"><video width='400'>
							<source src="videos/dog3.mp4" type="video/mp4"/></video></a>
					</div>
					<div class="pic">
						<a href="#"><video width='400'>
							<source src="videos/dog2.mp4" type="video/mp4"/></video></a>
					</div>
					<div class="pic">
						<a href="#"><video width='400'>
							<source src="videos/dog1.mp4" type="video/mp4"/></video></a>
					</div>
				</div>

				<div class="bookmark_contents contents_container active">
					<div class="pic">
						<a href="#"><video width='400'>
							<source src="videos/cat1.mp4" type="video/mp4"/></video></a>
					</div>
					<div class="pic">
						<a href="#"><video width='400'>
							<source src="videos/cat1.mp4" type="video/mp4"/></video></a>
					</div>
					<div class="pic">
						<a href="#"><video width='400'>
							<source src="videos/cat1.mp4" type="video/mp4"/></video></a>
					</div>
					<div class="pic">
						<a href="#"><video width='400'>
							<source src="videos/cat2.mp4" type="video/mp4"/></video></a>
					</div>
					<div class="pic">
						<a href="#"><video width='400'>
							<source src="videos/cat2.mp4" type="video/mp4"/></video></a>
					</div>
					<div class="pic">
						<a href="#"><video width='400'>
							<source src="videos/cat2.mp4" type="video/mp4"/></video></a>
					</div>
					<div class="pic">
					<a href="#"><video width='400'>
							<source src="videos/cat3.mp4" type="video/mp4"/></video></a>
					</div>
					<div class="pic">
						<a href="#"><video width='400'>
							<source src="videos/cat3.mp4" type="video/mp4"/></video></a>
					</div>
					<div class="pic">
						<a href="#"><video width='400'>
							<source src="videos/cat3.mp4" type="video/mp4"/></video></a>
					</div>
				</div>
			</section>
		</div>
	</section>

	<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js" integrity="sha256-T0Vest3yCU7pafRw9r+settMBX6JkKN06dqBnpQ8d30=" crossorigin="anonymous"></script>
	<script src="js/profile.js"></script>
	<script type="text/javascript">
		// *NewPost 모달 스크립트 *
		var modal_post = document.querySelector(".modal_post");
		var trigger_post = document.querySelector(".trigger_post");
		var closeButton_post = document.querySelector(".post_closebutton");
		var cancelButton_post = document.querySelector(".post_cancel");

		//console.log(modal);

		function posttoggleModal() {
			modal_post.classList.toggle("post-show-modal");
		}

		function postwindowOnClick(event) {
			if (event.target === modal_post) {
				posttoggleModal();
			}
		}

		trigger_post.addEventListener("click", posttoggleModal);
		closeButton_post.addEventListener("click", posttoggleModal);
		cancelButton_post.addEventListener("click", posttoggleModal);
		window.addEventListener("click", postwindowOnClick);

		// NewPost 이미지 미리보기 
		function setpostthumbnail(event) {
			var post_reader = new FileReader();

			post_reader.onload = function(event) {
				var post_to_remove = document.querySelector("div.post-upload");
				while (post_to_remove.firstChild) {
					post_to_remove.removeChild(post_to_remove.firstChild);
				}
				var post_video = document.createElement("video");
				post_video.setAttribute("src", event.target.result);
				post_video.style.width = "450px";
				post_video.style.height = "350px";
				document.querySelector("div.post-upload").appendChild(post_video);
			};

			post_reader.readAsDataURL(event.target.files[0]);
		}

		// *profile_edit 모달 스크립트 *
		var modal_profile_edit = document.querySelector(".modal_profile_edit");
		var trigger_profile_edit = document
				.querySelector("#trigger_profile_edit");
		var closeButton_profile_edit = document
				.querySelector(".profile_edit_closebutton");
		var cancelButton_profile_edit = document
				.querySelector(".profile_edit_cancel");

		//console.log(modal);

		function profile_edittoggleModal() {
			modal_profile_edit.classList.toggle("profile-edit-show-modal");
		}

		function profile_editwindowOnClick(event) {
			if (event.target === modal_profile_edit) {
				profile_edittoggleModal();
			}
		}

		trigger_profile_edit.addEventListener("click", profile_edittoggleModal);
		closeButton_profile_edit.addEventListener("click",
				profile_edittoggleModal);
		cancelButton_profile_edit.addEventListener("click",
				profile_edittoggleModal);
		window.addEventListener("click", profile_editwindowOnClick);

		// Profile_edit 이미지 미리보기 
		function setprofile_editthumbnail(event) {
			var profile_edit_reader = new FileReader();

			profile_edit_reader.onload = function(event) {
				var proflie_to_remove = document
						.querySelector("div.profile-edit-upload");
				while (proflie_to_remove.firstChild) {
					proflie_to_remove.removeChild(proflie_to_remove.firstChild);
				}
				var profile_img = document.createElement("img");
				profile_img.setAttribute("src", event.target.result);
				profile_img.style.width = "250px";
				profile_img.style.height = "250px";
				document.querySelector("div.profile-edit-upload").appendChild(
						profile_img);
			};

			profile_edit_reader.readAsDataURL(event.target.files[0]);
		}

		//* 버튼 이벤트 스크립트*
		$('.detail_button').each(function(index) {
			$(this).attr('menu-index', index);
		}).mouseover(
				function() {
					/*클릭된 <div>의 menu-index 값을 index 변수에 할당한다.*/
					var index = $(this).attr('menu-index');
					/*클릭한 <div>에  clicked_menu 클래스 추가*/
					$('.detail_button[menu-index=' + index + ']').addClass(
							'clicked_detail_button');
					/*그 외 <div>는  clicked_menu 클래스 삭제*/
					$('.detail_button[menu-index!=' + index + ']').removeClass(
							'clicked_detail_button');
				}).mouseout(
				function() {
					/*마우스에서 떨어졌을때 효과제거*/
					var index = $(this).attr('menu-index');
					$('.detail_button[menu-index=' + index + ']').removeClass(
							'clicked_detail_button');
				})

		;


		$('.post_submit').on('click', function() {
			//servlet -> database -> choice.jsp(a태그로 만들기)
			// 보내줄 데이터를 json구조로 만들어주기
			// split함수를 사용해서 데이터를 구조화하기!
			let data = {
				"tag" : $('#post_textarea').val()
			};
			$.ajax({
				url : "servlet주소!",
				data : data,
				success : function() {
					console.log("데이터 보내기 성공!")
				}
			})

			//textarea 텍스트 데이터를 가져오는 코드
		})
		


		// 동영상 호버시 재생되는 스크립트 
		$('.pic').hover(hoverVideo, hideVideo);
			function hoverVideo(e) {  
				$('video', this)[0].play(); 
				$('.card-top').hide();
			}

			function hideVideo(e) {
				$('video', this)[0].pause();
				$('.card-top').show();
			}
	</script>

</body>

</html>