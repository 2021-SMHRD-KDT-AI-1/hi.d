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
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
	<link rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />

    <title>Hi Dear</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/login.css">
    <link rel="shortcut icon" href="imgs/icons/imagelogo.png">



    <style type="text/css">


	</style>

</head>
<body>


<section id="container">



    <header id="header">
        <section class="inner">

            <h1 class="logo">
                <a href="#">
                    <div class="sprite_insta_icon"></div>
                    <div class="sprite_write_logo"></div>
                </a>
            </h1>

            <div class="search_box">
            	<input type="text" placeholder="검색" id="search-field">
			
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



    <div id="login_main_container">

        <div class="form_container">
		
            <div class="form">
				
					<div class="center_gif_from">
						<img src="imgs/GIF/login.gif" class = "gif_form">
		                <!-- <h1 class="sprite_insta_big_logo title"></h1> -->
					</div>
					
					<div class="center_login_form">
					 <h1 class="sprite_insta_big_logo title"></h1>
		                <form action="LoginCon.do" method="post">
		                    <p class="login_user_name">
		                        <label for="user_name">사용자명:</label>
		                        <input type="text" id="user_name" name="email">
		                    </p>
		
		                    <p class="login_user_password">
		                        <label for="user_password">비밀번호:</label>
		                        <input type="password" id="user_password" name="pw">
		                    </p>
		
		                    <!--  <a onclick="location.href='choice.jsp'" href="#">로그인 -->
		                    <input type="submit" id="submit_btn" value="로그인" class="submit_btn">
		                    
		                </form>
	                </div>
	                
			


            </div>

            <div class="bottom_box">
                <div class="join_modal">
                    <span>아이디가 없으신가요?</span><a href="#" class="join_btn">회원가입</a>
                  
                  <!-- 회원가입 모달창 -->
                    <div class="flex1">
                        <div class="modal2"> 
                           <div class="modal-content2">
                           <span class="join_closebutton">&times;</span>
                           <div class="title1">JOIN</div>
                    <form action="JoinCon.do" class="join_form" method="POST">
                    
                        
                    <p class="join_user_name">
                        <label for="user_id">EMAIL:</label>
                        <input type="text" id="user_id" name="email">
                    </p>

                    <p class="join_user_password">
                        <label for="user_pw">PW:</label>
                        <input type="text" id="user_pw" name="pw">
                    </p>
					
                    <input type="submit" id="submit_btn1" value="다음"
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


 // *모달 스크립트 *
	var modal2 = document.querySelector(".modal2"); 
	var join_closeButton = document.querySelector(".join_closebutton");
	var join_btn = document.querySelector(".join_btn"); 
	var submit_btn1 = document.querySelector(".submit_btn1"); 

    var modal_post = document.querySelector(".modal_post");
    var trigger = document.querySelector(".trigger");
    var closeButton = document.querySelector(".close-button");
    var cancelButton = document.querySelector("#cancel");

//    console.log(modal1);

   function toggleModal() { 
        modal2.classList.toggle("show-modal1"); 
    }
   function posttoggleModal() {
		modal_post.classList.toggle("post-show-modal");
	}

   function windowOnClick(event) { 
        if (event.target === modal2) { 
            toggleModal(); 
        } 
        if (event.target === modal_post) {
			posttoggleModal();
		}
    }

    join_btn.addEventListener("click", toggleModal); 
    join_closeButton.addEventListener("click", toggleModal);
    submit_btn1.addEventListener("click", toggleModal); 
    window.addEventListener("click", windowOnClick); 

</script>
<script type="text/javascript">
    // *모달 스크립트 *

    //console.log(modal);

    function toggleModal() {
        modal.classList.toggle("show-modal");
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
	
	<script>
	$(document).ready(function(){
	$("#submit_btn1").click(function(){
		if($("#user_id").val().length==0){swal("","아이디를 입력해주세요.","warning");$("#user_id").focus();return false;}
		if($("#user_pw").val().length==0){swal("","비밀번호를 입력해주세요","warning");$("#user_pw").focus();return false;}
		
	});
		
	});
	
	
	
	</script>
</body>
</html>
</body>
</html>