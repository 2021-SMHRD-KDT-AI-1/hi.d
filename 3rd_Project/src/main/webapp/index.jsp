<%@page import="com.DAO.petDAO"%>
<%@page import="com.VO.petVO"%>
<%@page import="com.VO.feed_upload_petVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">

<!-- Facebook Meta Tags / 凪戚什栽 神蚤 益掘覗 -->
<meta property="og:url" content="http://kindtiger.dothome.co.kr/insta">
<meta property="og:type" content="website">
<meta property="og:title" content="instagram">
<meta property="og:description" content="instagram clone">
<meta property="og:image"
	content="http://kindtiger.dothome.co.kr/insta/imgs/instagram.jpeg">

<!-- Twitter Meta Tags / 闘是斗 -->
<meta name="twitter:card" content="instagram clone">
<meta name="twitter:title" content="instagram">
<meta name="twitter:description" content="instagram clone">
<meta name="twitter:image"
	content="http://kindtiger.dothome.co.kr/insta/imgs/instagram.jpeg">

<!-- Google / Search Engine Tags / 姥越 伊事 殖遭 -->
<meta itemprop="name" content="instagram">
<meta itemprop="description" content="instagram clone">
<meta itemprop="image"
	content="http://kindtiger.dothome.co.kr/insta/imgs/instagram.jpeg">
	
<!-- 井壱但 css 元滴-->
<script
		src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
	<link rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />


<title>Hi Dear</title>
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/profile.css">
<link rel="shortcut icon" href="imgs/icons/imagelogo.png">




<!-- 乞含革搾惟戚芝郊 css -->
<style type="text/css">
/* newpost 乞含但 */
/* newpost & profile_edit 因搭 */
body {
	display: block;
	margin: 0 auto;
	font-size: 16px;
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

/* post 乞含 */
#post_chk_open {
	font-size: 0.9em;
}

/* 楳疑 歳汐 獄動 CSS - 鉢形敗*/
input.behavior_submit_button {
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
	text-align: center;
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
	text-align: center;
	color: #999;
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
</style>
<style>
/* 什滴継 竺舛*/
.recommend {
	width: auto;
	padding: 0px 10px 0px 10px;
	overflow-y: scroll;
	height: 350px;
	box-sizing: border-box;
	margin-right: 0px;
}

/* 什滴継郊 竺舛*/
.recommend::-webkit-scrollbar {
	width: 5px;
	height: 3px;
}

/* 什滴継郊 厳企 竺舛*/
.recommend::-webkit-scrollbar-thumb {
	background-color: #7c7b80;
	border-radius: 70px
}

/* 什滴継郊 急 壕井 竺舛*/
.recommend::-webkit-scrollbar-track {
	background-color: #d4cef85e;
	border-radius: 200px
}

/*  new_header style */
@font-face {
	font-family: 'HeydingsCommonIconsRegular';
	src: url('http://ianfarb.com/random/heydings_icons-webfont.eot');
	src: url('http://ianfarb.com/random/heydings_icons-webfont.eot?#iefix')
		format('embedded-opentype'),
		url('http://ianfarb.com/random/heydings_icons-webfont.woff')
		format('woff'),
		url('http://ianfarb.com/random/heydings_icons-webfont.ttf')
		format('truetype'),
		url('http://ianfarb.com/random/heydings_icons-webfont.svg#HeydingsCommonIconsRegular')
		format('svg');
	font-weight: normal;
	font-style: normal;
}

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

div.user_name a.profile_visit:link {
	color: black;
	text-decoration: none;
}

div.user_name a.profile_visit:visited {
	color: black;
	text-decoration: none;	
}
.side_box a:visited {
	color: black;
	text-decoration: none;
}
.side_box a:link {
	color: black;
	text-decoration: none;
}

sprite_more_icon{
  
  margin: 16px;
  background-color: white;

}

.dropdown {
  position: relative;
  display: inline-block;
  top: 5px;
}

.dropdown-content {
  display: none;
  position: absolute;
  top: 30px;
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


.swal-wide{
    width:270px !important;
}
</style>


</head>

<body>
	<%
	petVO pet_vo = (petVO) session.getAttribute("pet_vo");
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
					<form action="searchpageCon.do">
						<input type="text" placeholder="伊事" id="search-field">
						<div class="fake_field">
							<span class="sprite_small_search_icon"></span> <span>伊事</span>
						</div>
					</form>
				</div>

				<div class="right_icons">
					<ul class="menu">
						<li><a class="trigger_post" href="#">
								<div class="sprite_camera_icon"></div>
						</a></li>
						<li class="bg"></li>
					</ul>
					<ul class="menu">
						<li><a href="searchpageCon.do">
								<div class="sprite_compass_icon"></div>
						</a></li>
						<li class="bg"></li>
					</ul>
					<ul class="menu">
						<li><a href="profileCon.do?owner=<%=pet_vo.getPet_num() %>">
								<div class="sprite_user_icon_outline"></div>
						</a></li>
						<li class="bg"></li>
					</ul>

				</div>

			</section>

		</header>

		<!-- new post乞含 -->
		<div class="modal_post">
			<div class="post-modal-content">
				<span class="post_closebutton">&times;</span>
				<h1 class="title" id="post_title">NEW POST</h1>
				<label></label>
				<form class="upload_form" action="FeedUploadCon.do" method="POST">
					<label></label>
					<div class="preview">
						<!-- 戚耕走 耕軒左奄 慎蝕 -->
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
						<!-- 歎採督析(戚耕走督析幻 穣稽球) -->
						<input type="file" name="photo" id="post_photo" accept="video/*"
							onchange="setpostthumbnail(event);" />
					</p>
					<div>
						<input type="button" class="behavior_submit_button"
							value="楳疑 歳汐馬奄">
					</div>

					<label for="behavior_analysis">Hi,Dear!</label>
					<div class="behavior_analysis"></div>

					<p id="post_chk_open">
						<!-- 因鯵 搾因鯵 -->
					<div>
						因鯵<input type="radio" class="chk_open" name="chk_open" value="因鯵">
						搾因鯵<input type="radio" class="chk_open" name="chk_open"
							value="搾因鯵">
					</div>
					</p>

					<label for="contents">Contents</label>
					<textarea id="post_textarea" name="contents"
						placeholder="#背獣殿益 & 庚姥脊径"></textarea>
					<input type="button" class="post_cancel" value="昼社"> <input
						type="submit" class="post_submit" value="穣稽球">
				</form>
			</div>
		</div>


		<%
			ArrayList<feed_upload_petVO> feeds = (ArrayList<feed_upload_petVO>)session.getAttribute("feedsinfo");
			petDAO pet_dao = new petDAO();
			ArrayList<petVO> random_pet = (ArrayList<petVO>) session.getAttribute("random_pet");
			ArrayList<petVO> same_cord = (ArrayList<petVO>) session.getAttribute("same_cord");
			String cord = (String) session.getAttribute("cord");
		%>


		<section id="main_container">
			<div class="inner">
				<div class="contents_box" style="margin-top:20px;">

					<%for(int i = 0; i < feeds.size(); i++){ %>
					<article class="contents">
						<header class="top">
							<div class="user_container">
								<div class="div_profile_img">
									<a class="profile_visit"
										href="profileCon.do?owner=<%=feeds.get(i).getPet_num() %>">
										<img class="profile_img"
										src="<%=feeds.get(i).getPet_profile() %>" alt="覗稽琶戚耕走">
									</a>
								</div>
								<div class="user_name">
									<a class="profile_visit"
										href="profileCon.do?owner=<%=feeds.get(i).getPet_num() %>">
										<div class="nick_name m_text"><%=feeds.get(i).getPet_nick() %></div>
									</a>
									<div class="country s_text"><%=pet_dao.find_email(feeds.get(i).getPet_num()) %></div>
								</div>
							</div>
							  <div class ="dropdown"  onclick="ale()" width="300" >
               				<div class="sprite_more_icon" ></div>
                        	<div class="dropdown-content">
	                        	<a href="#" onclick="return false;">惟獣弘 重壱</a>
                     		</div>                        
                     	</div>
						</header>
						<div class="img_section">
							<div class="trans_inner">
								<div class="trans_inner_inner">

									<p align="middle">
										<video class="personal_contents" controls>
											<source src=<%=feeds.get(i).getImg_addr() %> type="video/mp4">
										</video>
									</p>
								</div>
							</div>
						</div>
						<div class="bottom_icons">
							<div class="left_icons">
								<div class="heart_btn">
									<div class="sprite_heart_icon_outline" name="39"
										data-name="heartbeat" id ="img1"></div>
										<div class="sprite_like_icon_outline" name="39"
                              data-name="heartbeat"id = "img2"></div>
								</div>
								<div class="sprite_bubble_icon" id="trigger_all_reply"></div>

								<div class="sprite_share_icon" data-name="share"></div>
							</div>
							<div class="right_icon" onclick="book()">
								<div class="sprite_bookmark_outline" data-name="bookmark"></div>
							</div>
						</div>



						<div class="likes m_text">
							疏焼推 <span id="like-count-39"><%=feeds.get(i).getLike_pet().split(",").length %></span>
							<span id="bookmark-count-39"></span> 鯵
						</div>



						<div class="comment_container">
							<div class="comment" id="comment-list-ajax-post37">
								<div class="comment-detail">
									<div class="nick_name m_text"><%=feeds.get(i).getPet_nick() %></div>
									<div class="comment_reple"><%=feeds.get(i).getFeed_content() %></div>
								</div>
							</div>
							<div class="small_heart">
                                <div
                           class="sprite_small_heart_icon_outline"></div>
                            </div>
						
						</div>
						
						
						
						<div class="timer">1獣娃 穿</div>




						<div class="comment_field">

							<div class="comment_field">

								<input type="text" class="inputReple" placeholder="奇越含奄...">
								<div class="upload_btn m_text" data-name="comment">惟獣</div>
							</div>
						</div>
					</article>
					<%} %>

					<article class="contents">




						<header class="top">

							<div class="user_container">
								<div class="div_profile_img">
									<img class="profile_img" src="imgs/thumb.jpeg" alt="覗稽琶戚耕走">
								</div>
								<div class="user_name">
									<div class="nick_name m_text">KindTiger</div>
									<div class="country s_text">Seoul, South Korea</div>
								</div>

							</div>

							<div class="sprite_more_icon" data-name="more">
								<ul class="toggle_box">
									<li><input type="submit" class="follow" value="独稽酔"
										data-name="follow"></li>
									<li>呪舛</li>
									<li>肢薦</li>
								</ul>
							</div>

						</header>



						<div class="img_section">
							<div class="trans_inner">
								<div class="trans_inner_inner">
									<video class="personal_contents" controls>
										<source src="videos/dog1.mp4" type="video/mp4" />
									</video>
								</div>
							</div>
						</div>




						<div class="bottom_icons">
							<div class="left_icons">
								<div class="heart_btn">
									<divclass ="sprite_heart_icon_outline" name="39"
										data-name="heartbeat" id ="img1">
								</div>
							</div>
							<div class="sprite_bubble_icon"></div>
							<div class="sprite_share_icon" data-name="share"></div>
						</div>
						<div class="right_icon">
							<div class="sprite_bookmark_outline" data-name="bookmark"></div>
						</div>
				</div>



				<div class="likes m_text">
					疏焼推 <span id="like-count-39">2,346</span> <span
						id="bookmark-count-39"></span> 鯵
				</div>



				<div class="comment_container">
					<div class="comment" id="comment-list-ajax-post37">
						<div class="comment-detail">
							<div class="nick_name m_text">dongdong2</div>
							<div class="comment_reple">悪焼走亜 格巷 瑛食趨推~!</div>
						</div>
					</div>
					<div class="small_heart">
						<div class="sprite_small_heart_icon_outline"></div>
					</div>
				</div>



				<div class="timer">1獣娃 穿</div>



				<div class="comment_field" id="add-comment-post37">
					<input type="text" class="inputReple" placeholder="奇越含奄...">
					<div class="upload_btn m_text" data-name="comment">惟獣</div>
				</div>



				</article>





				<div class="side_box">
					<div class="chase">

						<div class="user_profile">
							<div class="profile_thumb">
								<img src=<%=pet_vo.getPet_profile() %>  alt="覗稽琶紫遭">
							</div>
							<div class="detail">
								<div class="id m_text"><%=pet_vo.getPet_nick() %></div>
								<div class="ko_name"><%=pet_dao.find_email(pet_vo.getPet_num()) %></div>
							</div>

						</div>

						<article class="story">
							<header class="story_header">
							<%if(cord.equals("C")) {%>
								<div>壱丞戚級!</div>
							<%} else {%>
								<div>悪焼走級!</div>
							<%} %>
								<div class="more">乞砧 左奄</div>
							</header>

							<div class="scroll_inner recommend">
							<%for(int i = 0 ; i < same_cord.size(); i++){ %>
								<div class="thumb_user">
									<div class="profile_thumb">
										<a href="profileCon.do?owner=<%=same_cord.get(i).getPet_num() %>">
											<img src=<%=same_cord.get(i).getPet_profile() %> alt="覗稽琶紫遭">
										</a>
									</div>
									<div class="detail">
										<a href="profileCon.do?owner=<%=same_cord.get(i).getPet_num() %>">
											<div class="id"><%=same_cord.get(i).getPet_nick() %></div>
										</a>
										<div class="time"><%=pet_dao.find_email(same_cord.get(i).getPet_num())%></div>
									</div>
								</div>
							<%} %>
							</div>
						</article>

						<article>
							<header class="reco_header">
								<div>PETS!</div>
								<div class="more">乞砧 左奄</div>
							</header>
							<div class="recommend">
							<%for(int i = 0; i < random_pet.size(); i++){%>
								<div class="thumb_user">
									<div class="profile_thumb">
										<a href="profileCon.do?owner=<%=random_pet.get(i).getPet_num() %>">
											<img src=<%=random_pet.get(i).getPet_profile() %> alt="覗稽琶紫遭">
										</a>
									</div>
									<div class="detail">
										<a href="profileCon.do?owner=<%=random_pet.get(i).getPet_num() %>">
											<div class="id"><%=random_pet.get(i).getPet_nick() %></div>
										</a>
										<div class="time"><%=pet_dao.find_email(random_pet.get(i).getPet_num()) %></div>
									</div>
								</div>
							<%} %>
							</div>

						</article>



					</div>
				</div>
		</section>


	</section>



	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>


	<script type="text/javascript">
    //紫戚球 五敢 壱舛
        $(window).scroll(function (event) {
            if (jQuery(window).scrollTop() > jQuery(".side_box").offset().top) {
                jQuery(".chase").css("position", "fixed");
                jQuery(".chase").css("top", "12%");
                jQuery(".chase").css("right", "25%");
            }
            else if ((jQuery(window).scrollTop() < jQuery(".side_box").offset().top)) {
                jQuery(".chase").css("position", "fixed");
            }
        });
	    jQuery(".chase").css("position", "fixed");
	    jQuery(".chase").css("top", "15%");
	    jQuery(".chase").css("right", "25%");
    </script>





	<script>
    //巷廃什滴継 什滴験闘
        var count = 2;
        window.onscroll = function () {
            if ((window.innerHeight + window.scrollY) >= document.body.offsetHeight * 0.9) {

                var mainFrame = document.createElement("article");
                mainFrame.classList.add("contents")
                document.querySelector('.contents_box').append(mainFrame);
                // article 杷球 五昔覗傾績 持失

                var newHeader = document.createElement("header")
                newHeader.classList.add("top")
                mainFrame.append(newHeader);
                // 五昔覗傾績 照 header持失

                var new_user_container = document.createElement("div")
                new_user_container.classList.add("user_container")
                newHeader.append(new_user_container)
                //伯希 top照拭 user_container div 殿益 持失

                var new_div_profile_img = document.createElement("div")
                new_div_profile_img.classList.add("div_profile_img")
                new_user_container.append(new_div_profile_img)
                //覗稽督析 戚耕走 級嬢哀 div持失

                var new_profile_img = document.createElement("img")
                new_profile_img.classList.add("profile_img")
                new_profile_img.src = "imgs/img_section/img01.jpg"
                new_user_container.append(new_profile_img)
                //杷球照 覗稽琶戚耕走 持失

                var new_user_name = document.createElement("div")
                new_user_name.classList.add("user_name")
                new_user_container.append(new_user_name)
                //政煽革績 div 牒 持失

                var new_nick_name = document.createElement("div")
                new_nick_name.classList.add("nick_name")
                new_nick_name.classList.add("m_text")
                new_nick_name.textContent = "紫遂切 莞革績"
                new_user_name.append(new_nick_name)
                //紫遂切 莞革績

                var new_country = document.createElement("div")
                new_country.classList.add("country")
                new_country.classList.add("s_text")
                new_country.textContent = "Seoul, South Korea"
                new_user_name.append(new_country)
                //紫遂切 厩亜 妊獣

                var new_sprite_more_icon = document.createElement("div")
                new_sprite_more_icon.classList.add("new_sprite_more_icon")
                new_user_container.append(new_sprite_more_icon)
                //data-name="more" 蓄亜背醤鞠澗汽 嬢胸惟 蓄亜背醤馬澗走?
                //暁 益 繊繊繊 焼戚嬬乞丞精 嬢巨辞 亜閃神澗暗走?


                var new_image_section = document.createElement("div")
                new_image_section.classList.add("image_section")
                mainFrame.append(new_image_section)
                //五昔覗傾績拭 戚耕走悉芝 蓄亜


                var new_trans_inner = document.createElement("div")
                new_trans_inner.classList.add("trans_inner")
                new_image_section.append(new_trans_inner)
                //戚耕走悉芝照拭 trans_inner div牒 持失


                var new_trans_inner_inner = document.createElement("div")
                new_trans_inner_inner.classList.add("trans_inner_inner")
                new_trans_inner.append(new_trans_inner_inner)
                //戚耕走 悉芝照 trans_inner照 trans_inner_inner


                
                
                //戚採歳source 葵 蓄亜 嬢胸惟馬澗走?
                		
                		
                		
//                var new_personal_contents = document.createElement("img")
//
//                new_personal_contents.classList.add("personal_contents")
//
//                new_personal_contents.src = "imgs/img_section/img01.jpg"
//                new_trans_inner_inner.append(new_personal_contents)
                //戚耕走 採歳 慎雌生稽 痕井 
                
                
                var new_personal_contents = document.createElement("video")

                new_personal_contents.classList.add("personal_contents")
                
                var video_source =  document.createElement("source")
                
                video_source.src = "videos/dog1.mp4"
                
                video_source.type = "video/mp4"
                
                //展脊採歳 嬢追蓄亜馬刊 ぬばぬばぬばぬ
                //<source src="videos/dog1.mp4" type="video/mp4"/>

                new_personal_contents.append(video_source)
                
                new_trans_inner_inner.append(new_personal_contents)
                
                



                var new_bottom_icons = document.createElement("div")
                new_bottom_icons.classList.add("bottom_icons")
                mainFrame.append(new_bottom_icons)
                //焼耕走焼掘 焼戚嬬 獄動牒

                var new_left_icons = document.createElement("div")
                new_left_icons.classList.add("left_icons")
                new_bottom_icons.append(new_left_icons)


                var new_heart_btn = document.createElement("div")
                new_heart_btn.classList.add("heart_btn")
                new_left_icons.append(new_heart_btn)


                var new_heart_icon_outline = document.createElement("div")
                new_heart_icon_outline.classList.add("sprite_heart_icon_outline")
                new_heart_btn.append(new_heart_icon_outline)


                var new_sprite_bubble_icon = document.createElement("div")
                new_sprite_bubble_icon.classList.add("sprite_bubble_icon")
                new_left_icons.append(new_sprite_bubble_icon)


                var new_sprite_share_icon = document.createElement("div")
                new_sprite_share_icon.classList.add("sprite_share_icon")
                new_left_icons.append(new_sprite_share_icon)


                var new_right_icons = document.createElement("div")
                new_right_icons.classList.add("right_icons")
                new_bottom_icons.append(new_right_icons)

                var new_sprite_bookmark_outline = document.createElement("div")
                new_sprite_bookmark_outline.classList.add("sprite_bookmark_outline")
                new_bottom_icons.append(new_sprite_bookmark_outline)



                var new_likes = document.createElement("div")
                new_likes.classList.add("likes")
                new_likes.classList.add("m_text")
                new_likes.textContent = "疏焼推  "
                mainFrame.append(new_likes)

                var new_like_count = document.createElement("span")
                new_like_count.textContent = "2,65555"
                new_likes.append(new_like_count)


                // var new_bookmark_count = document.createElement("span")
                // new_bookmark_count=
                // new_likes.append(new_bookmark_count)


                var new_comment_container = document.createElement("div")
                new_comment_container.classList.add("comment_container")
                mainFrame.append(new_comment_container)
                //坪伍闘 珍砺戚格 --> 杷球惟獣越 牒

                var new_comment = document.createElement("div")
                new_comment.classList.add("comment")
                new_comment_container.append(new_comment)
                //坪伍闘 珍砺戚格 照税 坪伍闘 div

                var new_comment_detail = document.createElement("div")
                new_comment_detail.classList.add("comment-detail")
                new_comment.append(new_comment_detail)
                //坪伍闘 珍砺戚格 照税 坪伍闘div 照税 坪伍闘 巨砺析div


                var new_nick_name = document.createElement("div")
                new_nick_name.classList.add("nick_name")
                new_nick_name.classList.add("m_text")
                new_nick_name.textContent = " 紫遂切莞莞莞"
                new_comment_detail.append(new_nick_name)


                //comment_reple
                var new_comment_reple = document.createElement("div")
                new_comment_reple.classList.add("comment_reple")
                new_comment_reple.textContent = " 杷球越越越越越越越越越越越越越越"
                new_comment_detail.append(new_comment_reple)


                var new_small_heart = document.createElement("div")
                new_small_heart.classList.add("small_heart")
                new_comment_container.append(new_small_heart)

                var new_sprite_small_heart_icon_outline = document.createElement("div")
                new_sprite_small_heart_icon_outline.classList.add("sprite_small_heart_icon_outline")
                new_sprite_small_heart_icon_outline.append(new_small_heart)




                var new_timer = document.createElement("div")
                new_timer.classList.add("timer")
                new_timer.textContent = "1獣娃 穿"
                mainFrame.append(new_timer)


                var new_comment_field = document.createElement("div")
                new_comment_field.classList.add("comment_field")
                mainFrame.append(new_comment_field)



                //input殿益 竺舛葵隔澗号狛 達奄
                var new_inputReple = document.createElement("input")
                new_inputReple.classList.add("inputReple")


                new_inputReple.placeholder = '奇越含奄...'


                new_comment_field.append(new_inputReple)
                var new_upload_btn = document.createElement("div")
                new_upload_btn.classList.add("upload_btn")
                new_upload_btn.classList.add("m_text")
                new_upload_btn.textContent = "惟獣"
                new_comment_field.append(new_upload_btn)

            }

        }

    </script>

	<script type="text/javascript">
 	// *NewPost 乞含 什滴験闘 *
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

	// NewPost 戚耕走 耕軒左奄 
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


    </script>
	<script>
	/*paw click -> color change*/
	   $(document).ready(function(){
            /*瀬凪戚走 伸醸聖 凶*/
            $(".sprite_heart_icon_outline").show();
            $(".sprite_like_icon_outline").hide();
 
            /*img1聖 適遣梅聖 凶 img2研 左食捜*/
            $(".sprite_heart_icon_outline").click(function(){
                $(".sprite_heart_icon_outline").hide();
                $(".sprite_like_icon_outline").show();
            });
 
            /*img2研 適遣梅聖 凶 img1聖 左食捜*/
            $(".sprite_like_icon_outline").click(function(){
                $(".sprite_heart_icon_outline").show();
                $(".sprite_like_icon_outline").hide();
            });
        })
	</script>

<script type="text/javascript">
	function ale() {
		swal({
			
		       title:'',
		       text: "重壱亜 羨呪鞠醸柔艦陥",
		       html: true,
		       type: "warning",
		       customClass: 'swal-wide',
		       showConfirmButton:true
			 
			
		});
	};
	</script>
	
	
	<script type="text/javascript">
	function book() {
		swal({
			
		       title:'',
		       text: "惟獣弘戚 煽舌鞠醸柔艦陥.",
		       html: true,
		       type: "success",
		       customClass: 'swal-wide',
		       showConfirmButton:true
			 
			
		});
	};
	</script>


</body>

</html>
