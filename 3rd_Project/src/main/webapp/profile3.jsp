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
    <meta property="og:url"
	content="http://kindtiger.dothome.co.kr/insta">
    <meta property="og:type" content="website">
    <meta property="og:title" content="instagram">
    <meta property="og:description" content="instagram clone">
    <meta property="og:image"
	content="http://kindtiger.dothome.co.kr/insta/imgs/instagram.jpeg">
    .
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
	content="http://kindtiger.dothome.co.kr/insta/imgs/instagram.jpeg">


    <title>instagram</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/profile.css">
    <link rel="shortcut icon" href="imgs/instagram.png">
    <!-- ��� css -->
    <style type="text/css">
    
    .pic > a > img{
    
    border-radius: 40px
    }
    
    
    
    
    
h1 {
	font-family: 'Oswald', sans-serif;
	font-size: 30px;
	color: #353535ea;
}

label {
	display: block;
	margin-top: 20px;
	letter-spacing: 2px;
}

form {
	margin: 0 auto;
	width: 459px;
}

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

textarea {
	height: 60px;
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

.modal-content {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	background-color: white;
	padding: 1rem 1.5rem;
	width: 500px;
	height: 650px;
	border-radius: 0.5rem;
}

.upload {
	max-width: 250px;
	height: 250px;
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

.close-button:hover {
	background-color: darkgray;
}

.show-modal {
	opacity: 1;
	visibility: visible;
	transform: scale(1.0);
	transition: visibility 0s linear 0s, opacity 0.25s 0s, transform 0.25s;
}

/* Hover_Zoom_in CSS */
.active {
	padding: 0;
}

.active:last-child {
	padding-bottom: 60px;
}

.active::after {
	content: ��;
	clear: both;
	display: block;
}

.active div {
	position: relative;
	float: left;
	width: 300px;
	height: 200px;
	margin: 0 0 0 25px;
	padding: 0;
}

.active div:first-child {
	margin-left: 0;
}

.mylist_contents div {
	width: 300px;
	height: 200px;
	margin: 0;
	padding: 0;
	background: #fff;
	overflow: hidden;
}

.mylist_contents div img {
	width: 300px;
	height: auto;
	-webkit-transition: .3s ease-in-out;
	transition: .3s ease-in-out;
}

.mylist_contents div:hover img {
	-webkit-transform: scale(1.1);
	transform: scale(1.1);
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
</style>




</head>

<body>


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
							onclick="location.href='profile3.html'" href="#">
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
                            <img src="imgs/thumb.jpeg" alt="����ȣ����">
                        </div>
                    </div>

                    <div class="detail">
                        <div class="top">
                            <div class="user_name">KindTiger</div>
                            <button class="trigger">������ ����</button>
                            <!-- ���â -->
                            <div class="modal">
                                <div class="modal-content">
                                    <span class="close-button">&times;</span>
                                    <h1 class="title">������ ����</h1>
                                    <label></label>
                                    <form action="#post.php"
										method="POST">
                                        <label></label>
                                        <div class="preview">
                                            <!-- �̹��� �̸����� ���� -->
                                            <div class="upload">
                                                <div class="post_btn">
                                                    <div
														class="logo_icon">
                                                        <span></span>
                                                        <span></span>
                                                    </div>
                                                    <p>������ ���� �ٲٱ�</p>
                                                </div>
                                            </div>
                                        </div>
                                        <label></label>
                                        <p>
                                            <!-- ÷������(�̹������ϸ� ���ε�) -->
                                            <input type="file"
												name="photo" id="id_photo" accept="image/*"
												onchange="setThumbnail(event);" />
                                        </p>

                                        <label for="petnick">Pet-NickName</label>
                                        <input type="text"
											name="petnick" placeholder="������ �г���">
                                        <label></label>
                                        <label for="introtext">Intro Text</label>
                                        <textarea name="introtext"
											placeholder="�Ұ��� ����"></textarea>
                                        <input type="button" id="cancel"
											value="���">
                                        <input type="submit" id="submit"
											value="����">
                                    </form>
                                </div>
                            </div>


                            <button class="trigger">�α׾ƿ�</button>
                            <!-- <a href="profile_edit.html" class="profile_edit">����������</a> -->
                            <!-- <a href="#" class="logout">�α׾ƿ�</a> -->
                        </div>

                        <!-- <table border="1">
                            <tr>
                                <td>�Խù�</td>
                                <td>3</td>
                                <td>�ȷο�</td>
                                <td>3</td>
                                <td>�ȷο�</td>
                                <td>3</td>
                            </tr>
                            <tr>
                                <td rowspan="6">Intro Text</td>
                            </tr>
                            </table> -->
                        <ul class="middle">
                            <li>
                                <span>�Խù�</span>
                                3
                            </li>
                            <li>
                                <span>�ȷο�</span>
                                3
                            </li>
                            <li>
                                <span>�ȷο�</span>
                                3
                            </li>
                        </ul>
                        <ul class="middle">
                            <li>Intro Text</li>
                            �ȳ��ϼ��� �ٳ��Դϴ�.
                        </ul>

                        <br><br>
                        <p class="about">
                            <span class="nick_name">���� �Խù�</span>
                            <span class="book_mark">���̾</span>
                        </p>

                    </div>
                </div>

                <div class="mylist_contents contents_container active">
                    <div class="pic">
                        <a href="#"><img
							src="imgs/img_section/img01.jpg" alt=""></a>
                    </div>
                    <div class="pic">
                        <a href="follow.jsp"><img
							src="imgs/img_section/img02.jpg" alt=""></a>
                    </div>
                    <div class="pic">
                        <a href=#"> <img
							src="imgs/img_section/img03.jpg" alt=""></a>
                    </div>
                    <div class="pic">
                        <a href="#"> <img
							src="imgs/img_section/img02.jpg" alt=""></a>
                    </div>
                    <div class="pic">
                        <a href="#"> <img
							src="imgs/img_section/img03.jpg" alt=""></a>
                    </div>
                    <div class="pic">
                        <a href="#"> <img
							src="imgs/img_section/img01.jpg" alt=""></a>
                    </div>
                    <div class="pic">
                        <a href="#"> <img
							src="imgs/img_section/img02.jpg" alt=""></a>
                    </div>
                    <div class="pic">
                        <a href="#"> <img
							src="imgs/img_section/img03.jpg" alt=""></a>
                    </div>
                    <div class="pic">
                        <a href="#"> <img
							src="imgs/img_section/img01.jpg" alt=""></a>
                    </div>
                </div>


                <div class="bookmark_contents contents_container">
                    <div class="pic">
                        <a href="#"><img
							src="imgs/img_section/img03.jpg" alt=""></a>
                    </div>
                    <div class="pic">
                        <a href="#"><img
							src="imgs/img_section/img01.jpg" alt=""></a>
                    </div>
                    <div class="pic">
                        <a href="#"> <img
							src="imgs/img_section/img02.jpg" alt=""></a>
                    </div>
                    <div class="pic">
                        <a href="#"> <img
							src="imgs/img_section/img01.jpg" alt=""></a>
                    </div>
                    <div class="pic">
                        <a href="#"> <img
							src="imgs/img_section/img02.jpg" alt=""></a>
                    </div>
                    <div class="pic">
                        <a href="#"> <img
							src="imgs/img_section/img03.jpg" alt=""></a>
                    </div>
                    <div class="pic">
                        <a href="#"> <img
							src="imgs/img_section/img01.jpg" alt=""></a>
                    </div>
                    <div class="pic">
                        <a href="#"> <img
							src="imgs/img_section/img02.jpg" alt=""></a>
                    </div>
                    <div class="pic">
                        <a href="#"> <img
							src="imgs/img_section/img02.jpg" alt=""></a>
                    </div>
                </div>




            </section>
        </div>


    </section>

    <!--<script src="js/insta.js"></script>-->
    <script src="js/profile.js"></script>

    <script type="text/javascript">
        // *��� ��ũ��Ʈ *
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

        // // ���� �̹��� �߰� 
        // var fileInput  = document.querySelector( "#id_photo" )

        //    // Show image
        //    fileInput.addEventListener('change', handleImage, false);
        //    var canvas = document.getElementById('imageCanvas');
        //    var ctx = canvas.getContext('2d');


        // �̹��� �̸����� 
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
</body>

</html>
</body>
</html>