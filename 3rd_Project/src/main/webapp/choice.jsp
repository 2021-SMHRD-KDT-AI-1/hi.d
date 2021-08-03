<%@page import="org.apache.tomcat.util.http.fileupload.FileUpload"%>
<%@page import="com.VO.speciesVO"%>
<%@page import="com.VO.memberVO"%>
<%@page import="com.VO.petVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.petDAO"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.File"%>
<%@ page import="java.io.FileOutputStream"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">


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

<!-- Line Awesome CDN Link/ 라디오버튼 아이콘 링크-->
<link rel="stylesheet"
	href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">

<!-- 경고창 css 링크-->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />


<title>Hi Dear</title>
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/profile.css">
<link rel="stylesheet" href="css/choice.css">
<link rel="shortcut icon" href="imgs/icons/imagelogo.png">






<style>

</style>

</head>

<body>
<%
ArrayList<petVO> pet_profiles = ((ArrayList<petVO>) session.getAttribute("vo_arr"));
memberVO vo = (memberVO)session.getAttribute("vo");
%>

	<section id="container">

		<header id="header">
			 <section class="inner" onclick="func()" width="500"> 
				<h1 class="logo">
					<a href="#">
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
						<li><a  href="#">
								<div class="sprite_user_icon_outline"></div>
						</a></li>
						<li class="bg"></li>
					</ul>



				</div>





			</section>

		</header>

		<section id="main_container">
			<span style="align-items: center; font-size: 200%;">누구의 계정으로
				로그인 할까요??</span>
		</section>




		<section id="main_container">
			<div class="inner">
				<!--이너 초이스로 엘리언 센터 css 만들고 하위 정사각 버튼 -->



				<!-- <div class="page"></div>

                    <button class="fun-btn"><img src= "/imgs/Black-Dog-PNG.png"></button>
                    <button class="fun-btn"><img src= "/imgs/Black-Dog-PNG.png"></button>
                    <button class="fun-btn"><img src= "/imgs/Black-Dog-PNG.png"></button>
                  
                  
                  </div>-->


				<div class="wrap">
					<button class="plus_button">
						<img src="imgs/plus.png" style="opacity: 20%;">
					</button>
					<!-- 프로필 편집 모달창 -->
					<div class="flex">
						<div class="modal1">
							<div>
								<form action="PetJoinCon.do" class="post_form" method="POST" >
									<div class="title">NEW PROFILE</div>
									<div class="preview">
										<div class="upload">
											<div class="post_btn">
												<div class="plus_icon">
													<span></span> <span></span>
												</div>

												<p>프로필 이미지 추가</p>
												<canvas id="imageCanvas"></canvas>
												<!--<p><img id="img_id" src="#" style="width: 300px; height: 300px; object-fit: cover" alt="thumbnail"></p>-->
											</div>
										</div>
									</div>
									<div>
									<p>
										<input type="file" name="photo" id="id_photo" accept="image/*"
											required="required" >
								
									</p>
										
									</div>

									<p class="join_pet_nick">
										<input class="pet_nick" id="pet_nick" name="pet_nick" type="text" 
											placeholder="Pet-NickName" style="width: 100%;">
									</p>


									<div class="radio-buttons">
										<label class="custom-radio"> <input type="radio"
											name="radio_gender" value="M" /> <span class="radio-btn">
												<i class="las la-check"></i>
												<div class="genders-icon">
													<i class="las la-mars"></i>
													<h4>Male</h4>
												</div>
										</span>
										</label> <label class="custom-radio"> <input type="radio"
											name="radio_gender" value="F" /> <span class="radio-btn">
												<i class="las la-check"></i>
												<div class="genders-icon">
													<i class="las la-venus"></i>
													<h4>Female</h4>
												</div>
										</span>
										</label>
									</div>




									<div class="radio-buttons">

										<label class="custom-radio"> <input type="radio" class="radio_pet"
											name="radio_pet" value="D" onclick="ajaxSpecies()" /> <span class="radio-btn"> 
											<i class="las la-check"></i>


												<div class="genders-icon">
													<i class="las la-dog"></i>
													<h4>Dog</h4>
												</div>
										</span>
										</label> <label class="custom-radio"> <input type="radio"
											class="radio_pet" name="radio_pet" value="C"
											onclick="ajaxSpecies()" /> <span class="radio-btn"> <i
												class="las la-check"></i>
												<div class="genders-icon">
													<i class="las la-cat"></i>
													<h4>cat</h4>
												</div>
										</span>
										</label>
									</div>


									<!-- <p class="join_pet_species_of" >  
                                        <div>Dog<input type="radio" name="pet_species_of" value="dog">
                                            Cat<input type="radio" name="pet_species_of" value="cat"></div>
                                    </p> -->

									<p class="species">
										<select class="species" name="species_list"
											style="width: 100%; height: 25px;">

										</select>
									</p>

									<p>
										<textarea name="content" id="text_field" cols="50" rows="5"
											placeholder="80자 까지 등록 가능합니다. #태그명 을 통해서 검색 태그를 등록할 수 있습니다.예시 : I # Hi # Dear!"></textarea>
									</p>
									<input class="submit_btn" type="submit" value="저장">
								</form>
							</div>
						</div>
					</div>


					<% for(int i = 0; i < pet_profiles.size(); i++) {%>
					<button class="button">

					
						<img src=<%=pet_profiles.get(i).getPet_profile() %> width="100px" height="100px">


						<!--  <img src="imgs/Black-Dog-PNG.png" width="100px" height="100px">-->
					</button>

					
					
					</button>
					<%} %>
				</div>




			</div>

			</div>
		</section>

	</section>




	<script>
    //
    var fileInput  = document.querySelector("#id_photo"),
        button     = document.querySelector(".input-file-trigger" ),
        the_return = document.querySelector(".file-return");

    // Show image
    fileInput.addEventListener('change', handleImage, false);
    var canvas = document.getElementById('imageCanvas');
    var ctx = canvas.getContext('2d');


     function handleImage(e){
        var reader = new FileReader();
        reader.onload = function(event){
            var img = new Image();
            // var imgWidth =
            img.onload = function(){
                canvas.width = 300;
                canvas.height = 300;
                ctx.drawImage(img,0,0,300,300);
            };
            img.src = event.target.result;
            // img.width = img.width*0.5
            // canvas.height = img.height;
        };
        reader.readAsDataURL(e.target.files[0]);
    }


</script>

	<script type="text/javascript"> 
    // *모달 스크립트 *
    var modal1 = document.querySelector(".modal1"); 
    var plus_button = document.querySelector(".plus_button"); 
    var submit_btn = document.querySelector(".submit_btn"); 


//    console.log(modal1);

   function toggleModal() { 
        modal1.classList.toggle("show-modal"); 
    }

   function windowOnClick(event) { 
        if (event.target === modal1) { 
            toggleModal(); 
        } 
    }

    plus_button.addEventListener("click", toggleModal); 
    submit_btn.addEventListener("click", toggleModal); 
    window.addEventListener("click", windowOnClick); 

	</script>

	<script type="text/javascript">
	function func() {
		swal("","로그인을 해주세요","warning");
	}
	</script>

	
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.0.min.js" ></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"> </script>
	<script type="text/javascript">
	$(".radio_pet").click(
		function ajaxSpecies(){
			var cord = $(this).val();
			
			$.ajax({
				type : "get",
				url : "SpeciesAjax",
				data : {cord : cord},
				dataType : "json",
				success : function(data){
					$("p.species select.species").empty();
					for(var i = 0; i < Object.keys(data).length; i++){
						var $option = $("<option>" + data[i] + "</option>")
						$("p.species>select").append($option);
					}
				},
				error : function(){
					alert("error!")
				}
			});
		}
		)
	</script>
<!--  <script>
	$(function() {
		//이미지 클릭시 업로드창 실행
		$('#id_photo').click(function() {
			console.log('fileadd');
			$("input[name='photo']").click();

		})
		//업로드 파일체인지가 됐을경우 실행되는 이벤트  form태그에 fileProfile은 hidden으로 넣어줌
		$("input[name='photo']").change(function(e) {

			//$("#frm_profile_img").submit();
			$("input[name='photo']").val();
			var frm = document.getElementById('id_photo');
			frm.method = 'POST';
			frm.enctype = 'multipart/form-data';
			var fileData = new FormData(frm);

			// ajax
			$.ajax({
				type : 'POST',
				url : 'PetJoinCon',
				data : fileData,
				processData : false,
				contentType : false,
				success : function(data, textStatus, xhr) {
					console.log('success');
				},
				error : function(request, status, error) {
					alert("code:" + request.status + "\n" + "error:" + error);
				}
			});
		})
	})
</script>-->



</body>
</html>