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

<!-- Facebook Meta Tags / ���̽��� ���� �׷��� -->
<meta property="og:url" content="http://kindtiger.dothome.co.kr/insta">
<meta property="og:type" content="website">
<meta property="og:title" content="instagram">
<meta property="og:description" content="instagram clone">
<meta property="og:image"
	content="http://kindtiger.dothome.co.kr/insta/imgs/instagram.jpeg">

<!-- Twitter Meta Tags / Ʈ���� -->
<meta name="twitter:card" content="instagram clone">
<meta name="twitter:title" content="instagram">
<meta name="twitter:description" content="instagram clone">
<meta name="twitter:image"
	content="http://kindtiger.dothome.co.kr/insta/imgs/instagram.jpeg">

<!-- Google / Search Engine Tags / ���� �˻� ���� -->
<meta itemprop="name" content="instagram">
<meta itemprop="description" content="instagram clone">
<meta itemprop="image"
	cxontent="http://kindtiger.dothome.co.kr/insta/imgs/instagram.jpeg">


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
					<input type="text" placeholder="�˻�" tabindex="0">

					<div class="fake_field">
						<span class=sprite_small_search_icon></span> <span>�˻�</span>
					</div>
				</div>

                <h1 class="logo">
                    <a href="test4.html">
                        <div class="sprite_insta_icon"></div>
                        <div class="sprite_write_logo"></div>
                    </a>
                </h1>

                <div class="search_box">
                    <input type="text" placeholder="�˻�"
						id="search-field">

                    <div class="fake_field">
                        <span class="sprite_small_search_icon"></span>
                        <span>�˻�</span>
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
<<<<<<< HEAD
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-AI-1/hi.d.git


<<<<<<< HEAD
				<div class="right_icons">
					<a href="new_post.jsp"><div class="sprite_camera_icon"></div></a> <a
						href="login.jsp"><div class="sprite_compass_icon"></div></a> <a
						href="follow.jsp"><div class="sprite_heart_icon_outline"></div></a>
					<a href="profile.jsp"><div class="sprite_user_icon_outline"></div></a>
				</div>
			</section>
		</header>
=======
=======

>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-AI-1/hi.d.git
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
							���ƿ� <span class="count">2,351</span> ��
						</div>

						<div class="commet_container">

							<div class="commet">
								<div class="nick_name">popo213</div>
								<div>���...�ʹ� ������...!!!</div>
							</div>

							<div class="small_heart">
								<div class="sprite_small_heart_icon_outline"></div>
							</div>

						</div>

						<div class="timer">1�ð� ��</div>

						<div class="commit_field">
							<input type="text" placeholder="��۴ޱ�..">

							<div class="upload_btn">�Խ�</div>
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