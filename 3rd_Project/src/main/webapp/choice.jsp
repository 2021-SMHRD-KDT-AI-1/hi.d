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
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport"
	content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <meta charset="UTF-8">
    <meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">

    <!-- Facebook Meta Tags / ���̽��� ���� �׷��� �� -->
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
    
    <!-- Line Awesome CDN Link/ ������ư ������ ��ũ-->
    <link rel="stylesheet"
	href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
        




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

.button>img {
	height: 100%;
	width: 100%;
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

.modal-content1 {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	background-color: white;
	padding: 1rem 1.5rem;
	width: 700px;
	height: 850px;
	border-radius: 0.5rem;
}

.show-modal {
	opacity: 1;
	visibility: visible;
	transform: scale(1.0);
	transition: visibility 0s linear 0s, opacity 0.25s 0s, transform 0.25s;
}
</style>


</head>

<body>


    <section id="container">

        <header id="header">
            <section class="inner">

                <h1 class="logo">
                    <a href="index.html">
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
                    <a href="new_post.html">
                        <div class="sprite_camera_icon"></div>
                    </a>
                    <a href="login.html">
                        <div class="sprite_compass_icon"></div>
                    </a>
                    <a href="follow.html">
                        <div class="sprite_heart_icon_outline"></div>
                    </a>
                    <a href="profile.html">
                        <div class="sprite_user_icon_outline"></div>
                    </a>
                </div>

            </section>

        </header>

        <section id="main_container">
            <span style="align-items: center; font-size: 200%;">������ �������� �α��� �ұ��??</span>

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
                        <img src="/imgs/plus.png" style="opacity: 20%;">
					</button>
                         <!-- ������ ���� ���â -->
                         <div class="modal1"> 
                            <div class="modal-content1"
							style="overflow:scroll; width:700px; height:800px;">
                                <form action="#post.php"
								class="post_form" method="POST">
                                    <div class="title">
                                        NEW PROFILE
                                    </div>
                                    <div class="preview">
                                        <div class="upload">
                                            <div class="post_btn">
                                                <div class="plus_icon">
                                                    <span></span>
                                                    <span></sp
                                                        an>
                                                
											</div>
                                        
                                                <p>������ �̹��� �߰�</p>
                                                <canvas id="imageCanvas"></canvas>
                                                <!--<p><img id="img_id" src="#" style="width: 300px; height: 300px; object-fit: cover" alt="thumbnail"></p>-->
                                            </div>
                                        </div>
                                    </div>
                                    <p>
                                        <input type="file" name="photo"
										id="id_photo" required="required">
                                    </p>
                    
                                    <p class="join_pet_nick">
                                        <input class="pet_nick"
										type="text" id="pet_nick" placeholder="Pet-NickName"
										style="width: 100%;">
                                    </p>
                                   
                    
                                    <div class="radio-buttons">
                                        <label class="custom-radio">
                                          <input type="radio"
										name="radio_gender" />
                                          <span class="radio-btn">
                                            <i class="las la-check"></i>
                                            <div class="genders-icon">
                                             <i class="las la-mars"></i>
                                              <h4>Male</h4>
                                            </div>
                                          </span>
                                        </label>
                                        <label class="custom-radio">
                                            <input type="radio"
										name="radio_gender" />
                                            <span class="radio-btn">
                                              <i class="las la-check"></i>
                                              <div class="genders-icon">
                                                <i class="las la-venus"></i>
                                                <h4>Female</h4>
                                              </div>
                                            </span>
                                          </label>
                                    </div>  
                    
                    
                    
                                    
                                    <div class="radio-buttons">
                                        <label class="custom-radio">
                                          <input type="radio"
										name="radio_pet" value="1" onclick="DogOrCat(event)" />
                                          <span class="radio-btn">
                                            <i class="las la-check"></i>
                                            <div class="genders-icon">
                                                <i class="las la-dog"></i>
                                              <h4>Dog</h4>
                                            </div>
                                          </span>
                                        </label>
                                        <label class="custom-radio">
                                            <input type="radio"
										name="radio_pet" value="2" onclick="DogOrCat(event)" />
                                            <span class="radio-btn">
                                              <i class="las la-check"></i>
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
                                        <select name="species"
										style="width: 100%; height: 25px;">
                                          
                                        </select>
                                    </p>
                    
                    
                    
                    
                    <!-- 
                                    <p class="join_dog_species">
                                        <select id="dog_species" name="dog_species" style="width: 100%; height: 25px;">
                                            <option value="���޶�Ͼ�">���޶�Ͼ�</option>
                                            <option value="ġ�Ϳ�">ġ�Ϳ�</option>
                                            <option value="�ͽ���">�ͽ���</option>
                                            <option value="����� ��Ʈ����">����� ��Ʈ����</option>
                                            <option value="��Ƽ��">��Ƽ��</option>
                                            <option value="Ǫ��">Ǫ��</option>
                                            <option value="�ڽ���Ʈ">�ڽ���Ʈ</option>
                                            <option value="��Ÿ">��Ÿ</option>
                                        </select>
                                    </p>
                    
                                    <p class="join_cat_species">
                                        <select id="cat_species" name="cat_species" style="width: 100%; height: 25px;">
                                            <option value="�ڸ��� �����">�ڸ��� �����</option>
                                            <option value="���þȺ���">���þȺ���</option>
                                            <option value="�븣���̽�">�븣���̽�</option>
                                            <option value="����ƽ �����">����ƽ �����</option>
                                            <option value="�긮Ƽ�� �����">�긮Ƽ�� �����</option>
                                            <option value="��ġŲ">��ġŲ</option>
                                            <option value="����Ƽ�� ����">����Ƽ�� ����</option>
                                            <option value="��Ÿ">��Ÿ</option>
                                        </select>
                                    </p>
                                     -->
                                    <p>
                                        <textarea name="content"
										id="text_field" cols="50" rows="5"
										placeholder="140�� ���� ��� �����մϴ�. #�±׸� �� ���ؼ� �˻� �±׸� ����� �� �ֽ��ϴ�.���� : I # love # insta!"></textarea>
                                    </p>
                                    <input class="submit_btn"
									type="submit" value="����">
                                </form>
                            </div>
                         </div>

                    <button class="button"
						onclick="location.href='index.html';">
						<img src="/imgs/bear.png">
					</button>
                    <button class="button"
						onclick="location.href='index.html';">
						<img src="/imgs/Black-Dog-PNG.png">
					</button>
                    <button class="button"
						onclick="location.href='index.html';">
						<img src="/imgs/Black-Dog-PNG.png">
					</button>
                  </div>




            </div>

            </div>
        </section>

    </section>


<script>
    
    $('.fun-btn').on('click', function(event) {
    $(this).toggleClass('start-fun');
    var $page = $('.page');
    $page.toggleClass('color-bg-start')
        .toggleClass('bg-animate-color');

    //change text when when button is clicked

    $(this).hasClass('start-fun') ?
        $(this).text('stop the fun') :
        $(this).text('start the fun');

});

</script>

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
var dog_species_list = ['Ǫ��', '�ͽ���', '��Ƽ��', '��Ʈ����', '���޶�Ͼ�'];
var cat_species_list = ['���þȺ���', '��', '��Ƽ��', '��ũ���׸���'];

function DogOrCat(event){
 var species = document.querySelector('p.species>select');

 while(species.firstChild){
     species.removeChild(species.firstChild);
 }

 if(event.target.value == 1){
     for(var i = 0; i < dog_species_list.length; i++){
         var option_val = document.createElement("option");
         option_val.value=dog_species_list[i];
         var text = document.createTextNode(dog_species_list[i]);
         option_val.appendChild(text);
         species.appendChild(option_val);
     }
 } else {
     for(var i = 0; i < cat_species_list.length; i++){
         var option_val = document.createElement("option");
         option_val.value=cat_species_list[i];
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


</body>

</html>
</body>
</html>