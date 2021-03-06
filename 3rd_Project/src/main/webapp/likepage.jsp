<%@page import="com.VO.petVO"%>
<%@page import="com.VO.feedVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">

</head>
<body>
	<!DOCTYPE html>

<html lang="en">

<head>
<meta charset="EUC-KR">
    <meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">

    <!-- Facebook Meta Tags / 페이스북 오픈 그래프 -->
    <meta property="og:url"
	content="http://kindtiger.dothome.co.kr/insta">
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


 <!--new_header style-->
 <style>
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
	width: 100%;
	height: 100%;
	margin: 0;
	padding: 0;
	overflow: hidden;
}

.mylist_contents div video{
	width: 100%;
	height: auto;
	border-radius: 40px;
	-webkit-transition: .3s ease-in-out;
	transition: .3s ease-in-out;
}

.mylist_contents div:hover video{
	-webkit-transform: scale(1.1);
	transform: scale(1.1);
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


    
    <!-- 모달네비게이션바 css -->
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


/* Hide Play button + controls on iOS */
pic::-webkit-media-controls {
    display:none !important;
}

</style>





</head>

<body>
<%
	//ArrayList<feedVO> feeds = (ArrayList<feedVO>) session.getAttribute("search_feed");
	//System.out.print(feeds.get(0));
	
	//petVO pet_vo = new petVO(2, "cloud","img.jpg","hi","F","말티즈","Delkin@gmail.com");
	//session.setAttribute("pet_vo", pet_vo);
	petVO pet_vo = (petVO)session.getAttribute("pet_vo");
	
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
	                <form action="searchpageCon.do" method="POST">
	                    <input type="text" placeholder="검색" id="search-field" name="search">
	                    <div class="fake_field">
	                        <span class="sprite_small_search_icon"></span>
	                        <span>검색</span>
	                    </div>
					</form>
                </div>

                <div class="right_icons">
                    <ul class="menu">
                        <li><a class="trigger" href="#">
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
                <div class="mylist_contents" style = "column-count: 3;column-gap: 30px;">
                 
                <!-- 탐색페이지 작성!!!! -->
                <% 
                	//feedVO feed = null;
                    ArrayList<feedVO> feeds = (ArrayList<feedVO>)session.getAttribute("search_feed");
                %>
                <% for (int i = 0; i < feeds.size(); i++) {%>
                   <div class="pic" style="margin-bottom : 30px;">
                        <a href="OneFeedCon.do?feed_num=<%=feeds.get(i).getFeed_num() %>"><video>
							<source src="<%= feeds.get(i).getImg_addr() %>" type="video/mp4"/></video></a>
                   </div>
                <%} %>
                </div>
            </section>
         
        </div>


    </section>

    <!--<script src="js/insta.js"></script>-->
    <script src="js/profile.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js" integrity="sha256-T0Vest3yCU7pafRw9r+settMBX6JkKN06dqBnpQ8d30=" crossorigin="anonymous"></script>
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
        function setThumbnail(event) {
            var reader = new FileReader();

            reader.onload = function (event) {
                var to_remove = document.querySelector("div.upload");
                while (to_remove.firstChild) {
                    to_remove.removeChild(to_remove.firstChild);
                }
                var img = document.createElement("img");
                img.setAttribute("src", event.target.result);
                img.style.width = "250px";
                img.style.height = "250px";
                document.querySelector("div.upload").appendChild(img);
            };

            reader.readAsDataURL(event.target.files[0]);
        }

     
    </script>
     <script>

//        window.onscroll = function () {
//            if ((window.innerHeight + window.scrollY) >= document.body.offsetHeight * 0.9) {
//
//                var new_pic_div = document.createElement("div");
//                new_pic_div.classList.add("pic")
//                
//                document.querySelector('.mylist_contents').append(new_pic_div)//;
//
//                var new_pic = document.createElement("img")
//                new_pic.classList.add("like_pic")
//                new_pic.src="imgs/img_section/img01.jpg"
//                new_pic_div.append(new_pic)
//
// 
//
//            }

//       }
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
</body>
</html>