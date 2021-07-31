<%@page import="com.VO.speciesVO"%>
<%@page import="com.VO.memberVO"%>
<%@page import="com.VO.petVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.petDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>

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
	content="http://kindtiger.dothome.co.kr/insta/imgs/instagram.jpeg">

<!-- Line Awesome CDN Link/ ������ư ������ ��ũ-->
<link rel="stylesheet"
	href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">

<!-- ���â css ��ũ-->    
	<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
	<link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />


<title>instagram</title>
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/profile.css">
<link rel="stylesheet" href="css/new_profile.css">
<link rel="shortcut icon" href="imgs/instagram.png">






<style>

/* ------------------------------------------------------------------------------1��*/
html, body {
	height: 100%;
}

.wrap {
	height: 100%;
	display: flex;
	align-items: center;
	justify-content: center;
}

.button {
	/* max-width : 10% -> 15%*/
	max-width: 15%;
	font-family: 'Roboto', sans-serif;
	font-size: 11px;
	text-transform: uppercase;
	letter-spacing: 2.5px;
	font-weight: 500;
	color: #000;
	background-color: #fff;
	border: none;
	border-radius: 20%;
	box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
	transition: all 0.3s ease 0s;
	cursor: pointer;
	outline: none;
	margin: 10px;
}
/* ���������� �߰� ��ư */
.plus_button {
	/* max-width : 10% -> 15%*/
	max-width: 10%;
	font-family: 'Roboto', sans-serif;
	font-size: 11px;
	text-transform: uppercase;
	letter-spacing: 2.5px;
	font-weight: 500;
	color: #000;
	background-color: #fff;
	border: none;
	border-radius: 20%;
	box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
	transition: all 0.3s ease 0s;
	cursor: pointer;
	outline: none;
	margin: 10px;
}

.plus_button>img {
	height: 100%;
	width: 100%;
}

.button:hover {
	background-color: rgb(255, 167, 158);
	box-shadow: 0px 15px 20px rgb(191, 191, 191);
	color: #fff;
	transform: translateY(-7px);
}

.plus_button:hover {
	background-color: rgb(255, 167, 158);
	box-shadow: 0px 15px 20px rgb(191, 191, 191);
	color: #fff;
	transform: translateY(-7px);
}

/* ���â */
.modal1 {
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

.post_form {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	/* background-color ������*/
	background-color: white;
	padding: 1rem 1.5rem;
	width: 700px;
	height: 850px;
	/* border-radius ������ */
	border-radius: 0.5rem;
}

.show-modal {
	opacity: 1;
	visibility: visible;
	transform: scale(1.0);
	transition: visibility 0s linear 0s, opacity 0.25s 0s, transform 0.25s;
}

/* ���â ��ũ�ѹ�  */
.flex {
	display: flex;
}

/* post_form ���� modal-content1���� Ŭ���� ����*/
.post_form {
	width: 650px;
	padding: 0px 13px 0px 13px;
	overflow-y: scroll;
	height: 800px;
	box-sizing: border-box;
	margin-right: 50px;
	
	/*border-radius: 10px; 
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
	*/
}
/* ��ũ�ѹ� ����*/
/*post_form���� modal-content1���� Ŭ���� ����*/
.post_form::-webkit-scrollbar {
	width: 8px;
	/* ��ũ�ѹ� ���� �� ���� */
	
}

/* ��ũ�ѹ� ���� ����*/
/*post_form���� modal-content1���� Ŭ���� ����*/
.post_form::-webkit-scrollbar-thumb {
	/* border-radius: 10px; ������*/
	background-color: #8373e6;
}

/* ��ũ�ѹ� �� ��� ����*/
/*post_form���� modal-content1���� Ŭ���� ����*/
.post_form::-webkit-scrollbar-track {
	background-color: #d4cef85e;
	/* border-radius: 10px -> 50px;*/
	border-radius: 50px;
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
	<%
	petVO vo = (petVO)session.getAttribute("vo");
%>

	<section id="container">

		<header id="header">
			<section class="inner">
			 <section class="inner" onclick="func()" width="500"> 
				<h1 class="logo">
					<a href="index.jsp">
						<div class="sprite_insta_icon"></div>
						<div class="sprite_write_logo"></div>
					</a>
				</h1>

				<div class="search_box">
					<input type="text" placeholder="�˻�" id="search-field">

					<div class="fake_field">
						<span class="sprite_small_search_icon"></span> <span>�˻�</span>
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
						<li><a onclick="location.href='likepage.jsp'" href="#">
								<div class="sprite_compass_icon"></div>
						</a></li>
						<li class="bg"></li>
					</ul>
					<ul class="menu">
						<li><a onclick="location.href='profile3.jsp'
						" href="#">
								<div class="sprite_user_icon_outline"></div>
						</a></li>
						<li class="bg"></li>
					</ul>



				</div>





			</section>

		</header>

		<section id="main_container">
			<span style="align-items: center; font-size: 200%;">������ ��������
				�α��� �ұ��??</span>

		</section>




		<section id="main_container">
			<div class="inner">
				<!--�̳� ���̽��� ������ ���� css ����� ���� ���簢 ��ư -->



				<!-- <div class="page"></div>

                    <button class="fun-btn"><img src= "/imgs/Black-Dog-PNG.png"></button>
                    <button class="fun-btn"><img src= "/imgs/Black-Dog-PNG.png"></button>
                    <button class="fun-btn"><img src= "/imgs/Black-Dog-PNG.png"></button>
                  
                  
                  </div>-->


				<div class="wrap">
					<button class="plus_button">
						<img src="imgs/plus.png" style="opacity: 20%;">
					</button>
					<!-- ������ ���� ���â -->
					<div class="flex">
						<div class="modal1">
							<div>
								<form action="PetJoinCon.do" class="post_form" method="POST">
									<div class="title">NEW PROFILE</div>
									<div class="preview">
										<div class="upload">
											<div class="post_btn">
												<div class="plus_icon">
													<span></span>
													<span></span>
												</div>

												<p>������ �̹��� �߰�</p>
												<canvas id="imageCanvas"></canvas>
												<!--<p><img id="img_id" src="#" style="width: 300px; height: 300px; object-fit: cover" alt="thumbnail"></p>-->
											</div>
										</div>
									</div>
									<p>
										<input type="file" name="photo" id="id_photo"
											required="required">
									</p>

									<p class="join_pet_nick">
										<input class="pet_nick" id="pet_nick" name="pet_nick" type="text" 
											placeholder="Pet-NickName" style="width: 100%;"
											>
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
											name="radio_pet" value="D" onclick="ajaxSpecies()" /> <span
											class="radio-btn"> <i class="las la-check"></i>
												<div class="genders-icon">
													<i class="las la-dog"></i>
													<h4>Dog</h4>
												</div>
										</span>
										</label> 
										<label class="custom-radio"> <input type="radio" class="radio_pet"
											name="radio_pet" value="C" onclick="ajaxSpecies()" /> <span
											class="radio-btn"> <i class="las la-check"></i>
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
										<select class="species" style="width: 100%; height: 25px;">

										</select>
									</p>

									<p>
										<textarea name="content" id="text_field" cols="50" rows="5"
											placeholder="140�� ���� ��� �����մϴ�. #�±׸� �� ���ؼ� �˻� �±׸� ����� �� �ֽ��ϴ�.���� : I # love # insta!"></textarea>
									</p>
									<input class="submit_btn" type="submit" value="����">
								</form>
							</div>
						</div>
					</div>


					
					<button class="button">
						<img src="imgs/Black-Dog-PNG.png" width="100px" height="100px">
					</button>
					
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

	<script>
	
	
		
    //������ư ������ üũ�ڽ� �� �ҷ�����
    <%
    	//try {
    	//	petDAO dao = new petDAO();
    	//	ArrayList<String> species_list = dao.species_select(String CorD);
    	
    	//	for(int i=0; i<species_list.size(); i++){
    	//		out.print(species_list.get(i).getspeices);
    	//	}
    	
    	
    	//}catch (Exception e) {
    	//	e.printStackTrace();
    //	}
  //  %>

 </script>


	<script>
		var dog_species_list = [ 'Ǫ��', '�ͽ���', '��Ƽ��', '��Ʈ����', '���޶�Ͼ�' ];
		var cat_species_list = [ '���þȺ��', '��', '��Ƽ��', '��ũ���׸���' ];
		function

		DogOrCat(event) {
			var species = document.querySelector('p.species>select');
			while (species.firstChild) {
				species.removeChild(species.firstChild);
			}
			if (event.target.value == 1) {
				for (var i = 0; i < dog_species_list.length; i++) {
					var option_val = document.createElement("option");
					option_val.value = dog_species_list[i]	;
					var text = document.createTextNode(dog_species_list[i]);
					option_val.appendChild(text);
					species.appendChild(option_val);
				}
			} else {
				for (var i = 0; i < cat_species_list.length; i++) {
					var option_val = document.createElement("option");
					option_val.value = cat_species_list[i];
					var text = document.createTextNode(cat_species_list[i]);
					option_val.appendChild(text);
					species.appendChild(option_val);
				}
			}
		}
	</script>


	<script type="text/javascript"> 
    // *��� ��ũ��Ʈ *
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
		swal("","�α����� ���ּ���","warning");
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

</body>
</html>