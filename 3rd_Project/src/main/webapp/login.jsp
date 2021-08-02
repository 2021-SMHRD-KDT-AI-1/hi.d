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


    <title>Hi Dear</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/login.css">
    <link rel="shortcut icon" href="imgs/icons/imagelogo.png">



    <!-- ��޳׺���̼ǹ� css -->
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

/*�α��ι�ư CSS*/
.form input .login_button{
	-webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
    text-align: center;
}

.login_button{
    width: 230px;
    font-size: 16px;
    font-weight: 500;
    color: #fff;
    cursor: pointer;
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

.login_button:hover{
    background-position: 100% 0;
    moz-transition: all .4s ease-in-out;
    -o-transition: all .4s ease-in-out;
    -webkit-transition: all .4s ease-in-out;
    transition: all .4s ease-in-out;
}

.login_button:focus{
    outline: none;
}

.login_button_button{
    background-image: linear-gradient(to right, #fc6076, #ff9a44, #ef9d43, #e75516);
    box-shadow: 0 4px 15px 0 rgba(252, 104, 110, 0.75);
}

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
                <input type="text" placeholder="�˻�" id="search-field">

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
                    <li><a href="#">
                            <div class="sprite_compass_icon"></div>
                        </a></li>
                    <li class="bg"></li>
                </ul>
                <ul class="menu">
                    <li><a href="#">
                            <div class="sprite_user_icon_outline"></div>
                        </a></li>
                    <li class="bg"></li>
                </ul>



            </div>





        </section>

    </header>



    <div id="main_container">

        <div class="form_container">

            <div class="form">


                <h1 class="sprite_insta_big_logo title"></h1>

                <form action="LoginCon.do" method="post">
                    <p class="login_user_name">
                        <label for="user_name">����ڸ�:</label>
                        <input type="text" id="user_name" name="email">
                    </p>

                    <p class="login_user_password">
                        <label for="user_password">��й�ȣ:</label>
                        <input type="text" id="user_password" name="pw">
                    </p>

                    <!--  <a onclick="location.href='choice.jsp'" href="#">�α��� -->
                        

                            <input type="submit" id="submit_btn" value="�α���" class="submit_btn">

                        
                </form>



            </div>

            <div class="bottom_box">
                <div class="join_modal">
                    <span>���̵� �����Ű���?</span><a href="#" class="join_btn">ȸ������</a>
                  
                  <!-- ȸ������ ���â -->
                    <div class="flex1">
                        <div class="modal2"> 
                           <div class="modal-content2">
                    <form action="JoinCon.do" class="join_form"
										method="POST">
                    <div class="title1">JOIN</div>
                        
                    <p class="join_user_name">
                        <label for="user_id">EMAIL:</label>
                        <input type="text" id="user_id" name="email">
                    </p>

                    <p class="join_user_password">
                        <label for="user_pw">PW:</label>
                        <input type="text" id="user_pw" name="pw">
                    </p>
					
                    <input type="submit" id="submit_btn1" value="����"
											class="submit_btn">
			

                    </form>
                    </div>
                    </div>
                    </div>
            



                </div>

            </div>


        </div>

    </div>


</section>


<script src="js/insta.js"></script>

<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>


<script type="text/javascript">
    $(window).scroll(function (event) {

        jQuery(".chase").css("left", "60%");

        if (jQuery(window).scrollTop() > jQuery(".side_box").offset().top) {
            jQuery(".chase").css("float", "left");
            jQuery(".chase").css("position", "fixed");
            jQuery(".chase").css("top", "10%");
            jQuery(".chase").css("left", "60%");
        }
        else if ((jQuery(window).scrollTop() < jQuery(".side_box").offset().top)) {
            jQuery(".chase").css("float", "left");
            jQuery(".chase").css("position", "fixed");
            jQuery(".chase").css("top", "10%");
            jQuery(".chase").css("left", "60%");
        }
    });
</script>



<script>


 // *��� ��ũ��Ʈ *
 var modal2 = document.querySelector(".modal2"); 
 var join_btn = document.querySelector(".join_btn"); 
 var submit_btn1 = document.querySelector(".submit_btn1"); 


//    console.log(modal1);

   function toggleModal() { 
        modal2.classList.toggle("show-modal1"); 
    }

   function windowOnClick(event) { 
        if (event.target === modal2) { 
            toggleModal(); 
        } 
    }

    join_btn.addEventListener("click", toggleModal); 
    submit_btn1.addEventListener("click", toggleModal); 
    window.addEventListener("click", windowOnClick); 






</script>
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