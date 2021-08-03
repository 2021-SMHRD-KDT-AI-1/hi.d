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


    <title>Hi Dear</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/login.css">
    <link rel="shortcut icon" href="imgs/icons/imagelogo.png">



    <!-- 모달네비게이션바 css -->
    <style type="text/css">


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



    <div id="main_container">

        <div class="form_container">

            <div class="form">


                <h1 class="sprite_insta_big_logo title"></h1>

                <form action="LoginCon.do" method="post">
                    <p class="login_user_name">
                        <label for="user_name">사용자명:</label>
                        <input type="text" id="user_name" name="email">
                    </p>

                    <p class="login_user_password">
                        <label for="user_password">비밀번호:</label>
                        <input type="text" id="user_password" name="pw">
                    </p>

                    <!--  <a onclick="location.href='choice.jsp'" href="#">로그인 -->
                    <input type="submit" id="submit_btn" value="로그인" class="submit_btn">
                </form>



            </div>

            <div class="bottom_box">
                <div class="join_modal">
                    <span>아이디가 없으신가요?</span><a href="#" class="join_btn">회원가입</a>
                  
                  <!-- 회원가입 모달창 -->
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