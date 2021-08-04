<%@page import="com.VO.petVO"%>
<%@page import="com.VO.feedVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>


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


<title>Hi Dear</title>
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/style.css">
<link rel="shortcut icon" href="imgs/icons/imagelogo.png">

<style>
b_inner .contents_box {
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

.inputReple{
	width: 500px;
	height: 35px;
	margin-left:30px;
	


}

.upload_btn{
	font-size:14px;
    margin-left:20px;
	border: 0;
	background-color:transparent;
	color: #7bb1e4;
	 font-weight: bold;
}

.upload_btn:hover {
	background-color:transparent;
	color:#208aed;
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
						<div>
							<div class="sprite_insta_icon"></div>
							<div class="sprite_write_logo"></div>
						</div>
					</a>
				</h1>

                <div class="search_box">
	                <form action="searchpageCon.do">
	                    <input type="text" placeholder="검색"
							id="search-field">
					</form>

                    <div class="fake_field">
                        <span class="sprite_small_search_icon"></span>
                        <span>검색</span>
                    </div>
                </div>

                <div class="right_icons">
                    <ul class="menu">
                        <li><a class="trigger" href="FeedUploadCon.do">
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

		<% 
			feedVO feed = (feedVO)session.getAttribute("feed_info");
			
		%>
		<div id="main_container">
			<section class="b_inner">
				<div class="contents_box">
					 <article class="contents">
                        <header class="top">
                            <div class="user_container">
	                            <div class="div_profile_img">
		                            <img class="profile_img"
		                              src="imgs/thumb.jpeg" alt="프로필이미지">
                                </div>
                                	<div class="user_name">
	                                    <div class="nick_name m_text">KindTiger</div>
	                                    <div class="country s_text">Seoul, South Korea</div>
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
                                <div class="trans_inner_inner">
                                <p align="middle">
		                           <video class="personal_contents"  width = " 614" height = "614" src="<%=feed.getImg_addr() %>"
		                              alt="visual01"></video>
		                              </p>
		                              
                        		</div>
                            </div>
                        </div>

                        <div class="bottom_icons">
                            <div class="left_icons">
                                <div class="heart_btn">
                                    <div
                              class="sprite_heart_icon_outline" name="39"
                              data-name="heartbeat"></div>
                                </div>
                                	<div class="sprite_bubble_icon"></div>
                                <div class="sprite_share_icon"
                           data-name="share"></div>
                            </div>
                            <div class="right_icon">
                                <div class="sprite_bookmark_outline"
                           data-name="bookmark"></div>
                            </div>
                        </div>

                        <div class="likes m_text">
                            좋아요
                            <span id="like-count-39">2,346</span>
                            <span id="bookmark-count-39"></span>
                            개
                        </div>



                        <div class="comment_container">
                            <div class="comment"
                        id="comment-list-ajax-post37">
                              <form>
                                <div class="comment-detail">
                                  
                                    <div class="nick_name m_text">danamlee</div>
                                    <div class="comment_reple"><%= feed.getFeed_content() %></div>
                                </div>
                                </form>
                            </div>
                            <div class="small_heart">
                                <div
                           class="sprite_small_heart_icon_outline"></div>
                            </div>
                        </div>
                        
                        
                        <div id = reply></div>
							
                        <div class="timer">1시간 전</div>


                            <input type="text" style="border:0 solid black" class="inputReple" id = "inputReple"
                        placeholder="댓글달기...">
                            <input type="button"  onclick="ajaxreply()" class="upload_btn" id = "reply_submit"
                         value= "게시">
                       



                    </article>







				</div>

			</section>
		</div>


	</section>
	
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.0.min.js" ></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"> </script>
	<script type="text/javascript">
	$(".upload_btn").click(
		function ajaxreply(){
			var inputReple = $('#inputReple').val();
			$.ajax({
				type:'post',
				url:'replyAjax',
				data:{inputReple : inputReple},
				dataType:"json",
				success : function(data){
					$("#reply").empty();
					for(var i = 0; i < Object.keys(data).length; i+=2){
						var $petname = $("<span>" + data[i] + "</span> ");
						var $reply = $("<span>" + data[i+1] + "</span>");
						var $div = $("<div></div>");
						$div.append($petname);
						$div.append($reply);
						
						$("#reply").append($div);
					}
				},
				error : function(){
					alert("유야호");
				}
				
				
			});
		
	})


	
	</script>


</body>
</html>