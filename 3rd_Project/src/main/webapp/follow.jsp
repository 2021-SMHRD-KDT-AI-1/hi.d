<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
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
.
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
	cxontent="http://kindtiger.dothome.co.kr/insta/imgs/instagram.jpeg">


<title>instagram</title>
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/style.css">
<link rel="shortcut icon" href="imgs/instagram.png">
  <style type="text/css">
.modal .body {
	text-align: center;
	display: block;
	margin: 0 auto;
	font-size: 16px;
	color: #999;
}

.modal .title {
	font-family: 'Oswald', sans-serif;
	margin: 0%;
	font-size: 30px;
	color: #353535ea;
}

.modal label {
	display: block;
	margin-top: 20px;
	letter-spacing: 2px;
}

/* form {  
 
    } */
input, textarea {
	width: 439px;
	height: 27px;
	background-color: #efefef;
	border-radius: 6px;
	border: 1px solid #dedede;
	padding: 10px;
	margin-top: 3px;
	font-size: 0.9em;
	color: #3a3a3a;
}

input#chk_open {
	width: 20px;
	height: 20px;
}

textarea {
	height: 100px;
	background-color: #efefef;
}

#submit {
	width: 127px;
	height: 48px;
	text-align: center;
	border: none;
	margin-top: 20px;
	cursor: pointer;
}

#submit:hover {
	color: #fff;
	background-color: #353535ea;
	opacity: 0.9;
}

#cancel {
	width: 127px;
	height: 48px;
	text-align: center;
	border: none;
	margin-top: 20px;
	cursor: pointer;
}

#cancel:hover {
	color: #fff;
	background-color: #353535ea;
	opacity: 0.9;
}

.modal {
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

.modal_check {
	text-align: center;
}

.modal-content {
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

.upload {
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
	height: 350px;
	border: 1px solid #e6e6e6;
	margin: 0 auto;
	display: flex;
	justify-content: center;
	align-items: center;
	position: relative;
}

.close-button {
	float: right;
	width: 1.5rem;
	line-height: 1.5rem;
	text-align: center;
	cursor: pointer;
	border-radius: 0.25rem;
	background-color: lightgray;
}

.modal-content p, h1, label {
	text-align: center;
}

.modal-content input {
	align-items: center;
}

.close-button:hover {
	background-color: darkgray;
}

.show-modal {
	z-index: 5;
	opacity: 1;
	visibility: visible;
	transform: scale(1.0);
	transition: visibility 0s linear 0s, opacity 0.25s 0s, transform 0.25s;
}

.upload_form {
	column-count: 2;
	column-gap: 100px;
}
</style>

<style>
.b_inner .contents_box {
	float: none;
	display: flex;
	justify-content: center;
}






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

/*팔로우게시물 더보기메뉴*/
.sprite_more_icon{
  
  margin: 16px;
  background-color: white;

}

.dropdown {
  position: relative;
  display: inline-block;
  top: 3px;
}

.dropdown-content {
  display: none;
  position: absolute;
  top: 43px;
  right:-20px;
  background-color: #f1f1f1;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

 .dropdown-content a:hover {background-color: #ddd;}
   
.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover.dropbtn {background-color: #3e8e41;}





</style>

</head>
<body>


	<section id="container">
        <header id="header">
            <section class="inner">


                <h1 class="logo">
                    <a href="test4.html">
                        <div class="sprite_insta_icon"></div>
                        <div class="sprite_write_logo"></div>
                    </a>
                </h1>

                <div class="search_box">
                    <input type="text" placeholder="검색"
						id="search-field">

                    <div class="fake_field">
                        <span class="sprite_small_search_icon"></span>
                        <span>검색</span>
                    </div>
                </div>

                <div class="right_icons">
                    <ul class="menu">
                        <li><a class="trigger" href="#">
                                <div class="sprite_camera_icon"></div>
                            </a></li>
                        <li class="bg"></li>
                    </ul>
                    <ul class="menu">
                        <li><a
							onclick="location.href='likepage.jsp'" href="#">
                                <div class="sprite_compass_icon"></div>
                            </a></li>
                        <li class="bg"></li>
                    </ul>
                    <ul class="menu">
                        <li><a
							onclick="location.href='profile3.jsp'" href="#">
                                <div class="sprite_user_icon_outline"></div>
                            </a></li>
                        <li class="bg"></li>
                    </ul>




                </div>





            </section>

        </header>
 <h1>업로드 창 띄우기</h1>
        <!-- 버튼 -->
        <button class="trigger">게시물 업로드</button>

        <div class="modal">
            <div class="modal-content">
                <span class="close-button">&times;</span>
                <h1 class="title">NEW POST</h1>
                <label></label>
                <form class="upload_form" action="#post.php"
					method="POST">
                    <label></label>
                    <div class="preview">
                        <!-- 이미지 미리보기 영역 -->
                        <div class="upload">
                            <div class="post_btn">
                                <div class="logo_icon">
                                    <span></span>
                                    <span></span>
                                </div>
                                <p>NEW POST</p>
                            </div>
                        </div>
                    </div>

                    <p>
                        <!-- 첨부파일(이미지파일만 업로드) -->
                        <input type="file" name="photo" id="id_photo"
							accept="video/*|image/*" onchange="setThumbnail(event);" />
                    </p>

                    <label></label>
                    <p>
                        <!-- 공개 비공개 -->
                        <input type="radio" id="chk_open"
							name="chk_open" value="공개" checked="checked">공개
                        <input type="radio" id="chk_open"
							name="chk_open" value="비공개">비공개
                    </p>

                    <label for="behavior_analysis">Hi,Dear!</label>
                    <div class="behavior_analysis"></div>

                    <label for="contents">Contents</label>
                    <textarea name="contents" placeholder="#해시태그 & 문구입력"></textarea>

                    <div class="modal_check">
                        <input type="button" id="cancel" value="취소">
                        <input type="submit" id="submit" value="업로드">
                    </div>
                </form>
            </div>
        </div>

		<div id="main_container">

			<section class="b_inner">

				<div class="contents_box">

					<article class="contents cont01">
						<header class="top">
							<div class="user_container">
								<div class="profile_img">
									<img src="imgs/thumb.jpeg" alt="">
								</div>
								<div class="user_name">
									<div class="nick_name">KindTiger</div>
									<div class="country">Seoul, South Korea</div>
								</div>
							</div>
							
							<div class ="dropdown">
					<div class="sprite_more_icon"></div>
							  <div class="dropdown-content">
								   <a href="#">게시물 수정</a>
								   <a href="#">게시물 삭제</a>
							</div>								
							</div>
						</header>

						<div class="img_section">
							<div class="trans_inner">
								<div>
									<img src="imgs/img_section/img02.jpg" alt="">
								</div>
							</div>
						</div>


						<div class="bottom_icons">
							<div class="left_icons">
								<div class="heart_btn">
									<div class="sprite_heart_icon_outline" data-name="heartbeat"></div>
								</div>
								<div>
									<div class="sprite_bubble_icon"></div>
								</div>
								<div>
									<div class="sprite_share_icon"></div>
								</div>
							</div>

							<div class="right_icon">
								<div class="sprite_bookmark_outline"></div>
							</div>
						</div>

						<div class="count_likes">
							좋아요 <span class="count">2,351</span> 개
						</div>

						<div class="commet_container">

							<div class="commet">
								<div class="nick_name">popo213</div>
								<div>우와...너무 축하해...!!!</div>
							</div>

							<div class="small_heart">
								<div class="sprite_small_heart_icon_outline"></div>
							</div>

						</div>

						<div class="timer">1시간 전</div>

						<div class="commit_field">
							<input type="text" placeholder="댓글달기..">

							<div class="upload_btn">게시</div>
						</div>


					</article>







				</div>

			</section>
		</div>


	</section>

	<script type="text/javascript">
	
	// *모달 스크립트 *
    var modal = document.querySelector(".modal");
    var trigger = document.querySelector(".trigger");
    var closeButton = document.querySelector(".close-button");
    var cancelButton = document.querySelector("#cancel");

    //console.log(modal);

    function toggleModal() {
        modal.classList.toggle("show-modal");
    }

    function windowOnClick(event) {
        if (event.target === modal) {
            toggleModal();
        }
    }

    trigger.addEventListener("click", toggleModal);
    closeButton.addEventListener("click", toggleModal);
    cancel.addEventListener("click", toggleModal);
    window.addEventListener("click", windowOnClick);

    // // 편집 이미지 추가 
    // var fileInput  = document.querySelector( "#id_photo" )

    //    // Show image
    //    fileInput.addEventListener('change', handleImage, false);
    //    var canvas = document.getElementById('imageCanvas');
    //    var ctx = canvas.getContext('2d');


    // 이미지 미리보기 
    function setThumbnail(event) {
        var reader = new FileReader();

        reader.onload = function (event) {
            var to_remove = document.querySelector("div.upload");
            while (to_remove.firstChild) {
                to_remove.removeChild(to_remove.firstChild);
            }
            var img = document.createElement("img");
            img.setAttribute("src", event.target.result);
            img.style.width = "450px";
            img.style.height = "450px";
            document.querySelector("div.upload").appendChild(img);
        };

        reader.readAsDataURL(event.target.files[0]);
    }

	
	
	
	
	</script>
</body>
</html>
</body>
</html>
=======
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
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


<title>instagram</title>
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/style.css">
<link rel="shortcut icon" href="imgs/instagram.png">

<style>
.b_inner .contents_box {
	float: none;
	display: flex;
	justify-content: center;
}






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

</style>

</head>
<body>


	<section id="container">


        <header id="header">
            <section class="inner">

				<h1 class="logo">
					<a href="index.jsp">
						<div class="sprite_insta_icon"></div>
						<div>
							<div class="sprite_write_logo"></div>
						</div>
					</a>
				</h1>

				<div class="search_field">
					<input type="text" placeholder="검색" tabindex="0">

					<div class="fake_field">
						<span class=sprite_small_search_icon></span> <span>검색</span>
					</div>
				</div>

                <h1 class="logo">
                    <a href="test4.html">
                        <div class="sprite_insta_icon"></div>
                        <div class="sprite_write_logo"></div>
                    </a>
                </h1>

                <div class="search_box">
                    <input type="text" placeholder="검색"
						id="search-field">

                    <div class="fake_field">
                        <span class="sprite_small_search_icon"></span>
                        <span>검색</span>
                    </div>
                </div>

                <div class="right_icons">
                    <ul class="menu">
                        <li><a class="trigger" href="#">
                                <div class="sprite_camera_icon"></div>
                            </a></li>
                        <li class="bg"></li>
                    </ul>
                    <ul class="menu">
                        <li><a
							onclick="location.href='likepage.jsp'" href="#">
                                <div class="sprite_compass_icon"></div>
                            </a></li>
                        <li class="bg"></li>
                    </ul>
                    <ul class="menu">
                        <li><a
							onclick="location.href='profile3.jsp'" href="#">
                                <div class="sprite_user_icon_outline"></div>
                            </a></li>
                        <li class="bg"></li>
                    </ul>

				<div class="right_icons">
					<a href="new_post.jsp"><div class="sprite_camera_icon"></div></a> <a
						href="login.jsp"><div class="sprite_compass_icon"></div></a> <a
						href="follow.jsp"><div class="sprite_heart_icon_outline"></div></a>
					<a href="profile.jsp"><div class="sprite_user_icon_outline"></div></a>
				</div>
			</section>
		</header>
                </div>





            </section>

        </header>



		<div id="main_container">

			<section class="b_inner">

				<div class="contents_box">

					<article class="contents cont01">
						<header class="top">
							<div class="user_container">
								<div class="profile_img">
									<img src="imgs/thumb.jpeg" alt="">
								</div>
								<div class="user_name">
									<div class="nick_name">KindTiger</div>
									<div class="country">Seoul, South Korea</div>
								</div>
							</div>
							<div class="sprite_more_icon"></div>
						</header>

						<div class="img_section">
							<div class="trans_inner">
								<div>
									<img src="imgs/img_section/img02.jpg" alt="">
								</div>
							</div>
						</div>


						<div class="bottom_icons">
							<div class="left_icons">
								<div class="heart_btn">
									<div class="sprite_heart_icon_outline" data-name="heartbeat"></div>
								</div>
								<div>
									<div class="sprite_bubble_icon"></div>
								</div>
								<div>
									<div class="sprite_share_icon"></div>
								</div>
							</div>

							<div class="right_icon">
								<div class="sprite_bookmark_outline"></div>
							</div>
						</div>

						<div class="count_likes">
							좋아요 <span class="count">2,351</span> 개
						</div>

						<div class="commet_container">

							<div class="commet">
								<div class="nick_name">popo213</div>
								<div>우와...너무 축하해...!!!</div>
							</div>

							<div class="small_heart">
								<div class="sprite_small_heart_icon_outline"></div>
							</div>

						</div>

						<div class="timer">1시간 전</div>

						<div class="commit_field">
							<input type="text" placeholder="댓글달기..">

							<div class="upload_btn">게시</div>
						</div>


					</article>







				</div>

			</section>
		</div>


	</section>

	<!--<script src="js/insta.js"></script>-->
</body>
</html>
</body>
</html>
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-AI-1/hi.d.git
