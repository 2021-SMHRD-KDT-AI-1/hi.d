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
    <link rel="stylesheet" href="css/profile.css">
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
</style>
    <style>
/* ��ũ�� ����*/
.recommend {
   width: auto;
   padding: 0px 10px 0px 10px;
   overflow-y: scroll;
   height: 350px;
   box-sizing: border-box;
   margin-right: 0px;
}

/* ��ũ�ѹ� ����*/
.recommend::-webkit-scrollbar {
   width: 5px;
   height: 3px;
}

/* ��ũ�ѹ� ���� ����*/
.recommend::-webkit-scrollbar-thumb {
   background-color: #7c7b80;
   border-radius: 70px
}

/* ��ũ�ѹ� �� ��� ����*/
.recommend::-webkit-scrollbar-track {
   background-color: #d4cef85e;
   
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
                     onclick="location.href='profile3.jsp'" href="#">
                                <div class="sprite_user_icon_outline"></div>
                            </a></li>
                        <li class="bg"></li>
                    </ul>



                </div>





            </section>

        </header>


        <h1>���ε� â ����</h1>
        <!-- ��ư -->
        <button class="trigger">�Խù� ���ε�</button>

        <div class="modal">
            <div class="modal-content">
                <span class="close-button">&times;</span>
                <h1 class="title">NEW POST</h1>
                <label></label>
                <form class="upload_form" action="FeedUpload.do"
					method="POST">
                    <label></label>
                    <div class="preview">
                        <!-- �̹��� �̸����� ���� -->
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
                        <!-- ÷������(�̹������ϸ� ���ε�) -->
                        <input type="file" name="photo" id="id_photo"
                     accept="video/*|image/*" onchange="setThumbnail(event);" />
                    </p>

                    <label></label>
                    <p>
                        <!-- ���� ����� -->
                        <input type="radio" id="chk_open"
                     name="chk_open" value="U" checked="checked">����
                        <input type="radio" id="chk_open"
                     name="chk_open" value="L">�����
                    </p>

                    <label for="behavior_analysis">Hi,Dear!</label>
                    <div class="behavior_analysis"></div>

                    <label for="contents">Contents</label>
                    <textarea name="contents" placeholder="#�ؽ��±� & �����Է�"></textarea>

                    <div class="modal_check">
                        <input type="button" id="cancel" value="���">
                        <input type="submit" id="submit" value="���ε�">
                    </div>
                </form>
            </div>
        </div>





        <section id="main_container">
            <div class="inner">
                <div class="contents_box">

                    <article class="contents">




                        <header class="top">

                            <div class="user_container">
                                <div class="div_profile_img">
                                    <img class="profile_img"
                              src="imgs/thumb.jpeg" alt="�������̹���">
                                </div>
                                <div class="user_name">
                                    <div class="nick_name m_text">KindTiger</div>
                                    <div class="country s_text">Seoul, South Korea</div>
                                </div>

                            </div>

                            <div class="sprite_more_icon"
                        data-name="more">
                                <ul class="toggle_box">
                                    <li><input type="submit"
                              class="follow" value="�ȷο�" data-name="follow"></li>
                                    <li>����</li>
                                    <li>����</li>
                                </ul>
                            </div>

                        </header>



                        <div class="img_section">
                            <div class="trans_inner">
                                <div class="trans_inner_inner">
                           <img class="personal_contents" src="imgs/img_section/img01.jpg"
                              alt="visual01">
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
                            ���ƿ�
                            <span id="like-count-39">2,346</span>
                            <span id="bookmark-count-39"></span>
                            ��
                        </div>



                        <div class="comment_container">
                            <div class="comment"
                        id="comment-list-ajax-post37">
                                <div class="comment-detail">
                                    <div class="nick_name m_text">dongdong2</div>
                                    <div class="comment_reple">�������� �ʹ� �Ϳ�����~!</div>
                                </div>
                            </div>
                            <div class="small_heart">
                                <div
                           class="sprite_small_heart_icon_outline"></div>
                            </div>
                        </div>



                        <div class="timer">1�ð� ��</div>



                        <div class="comment_field"
                     id="add-comment-post37">
                            <input type="text" class="inputReple"
                        placeholder="��۴ޱ�...">
                            <div class="upload_btn m_text"
                        data-name="comment">�Խ�</div>
                        </div>



                    </article>


                    <article class="contents">




                        <header class="top">

                            <div class="user_container">
                                <div class="div_profile_img">
                                    <img class="profile_img"
                              src="imgs/thumb.jpeg" alt="�������̹���">
                                </div>
                                <div class="user_name">
                                    <div class="nick_name m_text">KindTiger</div>
                                    <div class="country s_text">Seoul, South Korea</div>
                                </div>

                            </div>

                            <div class="sprite_more_icon"
                        data-name="more">
                                <ul class="toggle_box">
                                    <li><input type="submit"
                              class="follow" value="�ȷο�" data-name="follow"></li>
                                    <li>����</li>
                                    <li>����</li>
                                </ul>
                            </div>

                        </header>



                        <div class="img_section">
                            <div class="trans_inner">
                                <div class="trans_inner_inner">
                           <video class="personal_contents" controls>
                           <source src="videos/dog1.mp4" type="video/mp4"/>
                           </video>
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
                            ���ƿ�
                            <span id="like-count-39">2,346</span>
                            <span id="bookmark-count-39"></span>
                            ��
                        </div>



                        <div class="comment_container">
                            <div class="comment"
                        id="comment-list-ajax-post37">
                                <div class="comment-detail">
                                    <div class="nick_name m_text">dongdong2</div>
                                    <div class="comment_reple">�������� �ʹ� �Ϳ�����~!</div>
                                </div>
                            </div>
                            <div class="small_heart">
                                <div
                           class="sprite_small_heart_icon_outline"></div>
                            </div>
                        </div>



                        <div class="timer">1�ð� ��</div>



                        <div class="comment_field"
                     id="add-comment-post37">
                            <input type="text" class="inputReple"
                        placeholder="��۴ޱ�...">
                            <div class="upload_btn m_text"
                        data-name="comment">�Խ�</div>
                        </div>



                    </article>





                    <div class="side_box">
                        <div class="chase">

                            <div class="user_profile">
                                <div class="profile_thumb">
                                    <img src="imgs/thumb.jpeg"
                              alt="�����ʻ���">
                                </div>
                                <div class="detail">
                                    <div class="id m_text">KindTiger</div>
                                    <div class="ko_name">�ɼ���</div>
                                </div>

                            </div>

                            <article class="story">
                                <header class="story_header">
                                    <div>���丮</div>
                                    <div class="more">��� ����</div>
                                </header>

                                <div class="scroll_inner recommend">

                                    <div class="thumb_user">
                                        <div class="profile_thumb">
                                            <img src="imgs/thumb02.jpg"
                                    alt="�����ʻ���">
                                        </div>
                                        <div class="detail">
                                            <div class="id">kind_tigerrrr</div>
                                            <div class="time">1�ð� ��</div>
                                        </div>
                                    </div>

                                    <div class="thumb_user">
                                        <div class="profile_thumb">
                                            <img src="imgs/thumb02.jpg"
                                    alt="�����ʻ���">
                                        </div>
                                        <div class="detail">
                                            <div class="id">kind_tigerrrr</div>
                                            <div class="time">1�ð� ��</div>
                                        </div>
                                    </div>

                                    <div class="thumb_user">
                                        <div class="profile_thumb">
                                            <img src="imgs/thumb02.jpg"
                                    alt="�����ʻ���">
                                        </div>
                                        <div class="detail">
                                            <div class="id">kind_tigerrrr</div>
                                            <div class="time">1�ð� ��</div>
                                        </div>
                                    </div>

                                    <div class="thumb_user">
                                        <div class="profile_thumb">
                                            <img src="imgs/thumb02.jpg"
                                    alt="�����ʻ���">
                                        </div>
                                        <div class="detail">
                                            <div class="id">kind_tigerrrr</div>
                                            <div class="time">1�ð� ��</div>
                                        </div>
                                    </div>

                                    <div class="thumb_user">
                                        <div class="profile_thumb">
                                            <img src="imgs/thumb02.jpg"
                                    alt="�����ʻ���">
                                        </div>
                                        <div class="detail">
                                            <div class="id">kind_tigerrrr</div>
                                            <div class="time">1�ð� ��</div>
                                        </div>
                                    </div>

                                    <div class="thumb_user">
                                        <div class="profile_thumb">
                                            <img src="imgs/thumb02.jpg"
                                    alt="�����ʻ���">
                                        </div>
                                        <div class="detail">
                                            <div class="id">kind_tigerrrr</div>
                                            <div class="time">1�ð� ��</div>
                                        </div>
                                    </div>
                                </div>
                            </article>

                            <article>
                                <header class="reco_header">
                                    <div>ȸ������ ���� ��õ</div>
                                    <div class="more">��� ����</div>
                                </header>
                                <div class="recommend">
                                    <div class="thumb_user">
                                        <div class="profile_thumb">
                                            <img src="imgs/thumb02.jpg"
                                    alt="�����ʻ���">
                                        </div>
                                        <div class="detail">
                                            <div class="id">kind_tigerrrr</div>
                                            <div class="time">1�ð� ��</div>
                                        </div>
                                    </div>
                                    <div class="thumb_user">
                                        <div class="profile_thumb">
                                            <img src="imgs/thumb02.jpg"
                                    alt="�����ʻ���">
                                        </div>
                                        <div class="detail">
                                            <div class="id">kind_tigerrrr</div>
                                            <div class="time">1�ð� ��</div>
                                        </div>
                                    </div>
                                    <div class="thumb_user">
                                        <div class="profile_thumb">
                                            <img src="imgs/thumb02.jpg"
                                    alt="�����ʻ���">
                                        </div>
                                        <div class="detail">
                                            <div class="id">kind_tigerrrr</div>
                                            <div class="time">1�ð� ��</div>
                                        </div>
                                    </div>
                                    <div class="thumb_user">
                                        <div class="profile_thumb">
                                            <img src="imgs/thumb02.jpg"
                                    alt="�����ʻ���">
                                        </div>
                                        <div class="detail">
                                            <div class="id">kind_tigerrrr</div>
                                            <div class="time">1�ð� ��</div>
                                        </div>
                                    </div>
                                    <div class="thumb_user">
                                        <div class="profile_thumb">
                                            <img src="imgs/thumb02.jpg"
                                    alt="�����ʻ���">
                                        </div>
                                        <div class="detail">
                                            <div class="id">kind_tigerrrr</div>
                                            <div class="time">1�ð� ��</div>
                                        </div>
                                    </div>
                                    <div class="thumb_user">
                                        <div class="profile_thumb">
                                            <img src="imgs/thumb02.jpg"
                                    alt="�����ʻ���">
                                        </div>
                                        <div class="detail">
                                            <div class="id">kind_tigerrrr</div>
                                            <div class="time">1�ð� ��</div>
                                        </div>
                                    </div>
                                </div>

                            </article>



                        </div>
                    </div>


        
      </section>

    </section>



    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>


    <script type="text/javascript">
    //���̵� �޴� ����
        $(window).scroll(function (event) {
            if (jQuery(window).scrollTop() > jQuery(".side_box").offset().top) {
                jQuery(".chase").css("position", "fixed");
                jQuery(".chase").css("top", "10%");
                jQuery(".chase").css("right", "10%");
            }
            else if ((jQuery(window).scrollTop() < jQuery(".side_box").offset().top)) {
                jQuery(".chase").css("position", "fixed");
            }
        });
    </script>





    <script>
    //���ѽ�ũ�� ��ũ��Ʈ
        var count = 2;
        window.onscroll = function () {
            if ((window.innerHeight + window.scrollY) >= document.body.offsetHeight * 0.9) {

                var mainFrame = document.createElement("article");
                mainFrame.classList.add("contents")
                document.querySelector('.contents_box').append(mainFrame);
                // article �ǵ� ���������� ����

                var newHeader = document.createElement("header")
                newHeader.classList.add("top")
                mainFrame.append(newHeader);
                // ���������� �� header����

                var new_user_container = document.createElement("div")
                new_user_container.classList.add("user_container")
                newHeader.append(new_user_container)
                //��� top�ȿ� user_container div �±� ����

                var new_div_profile_img = document.createElement("div")
                new_div_profile_img.classList.add("div_profile_img")
                new_user_container.append(new_div_profile_img)
                //�������� �̹��� �� div����

                var new_profile_img = document.createElement("img")
                new_profile_img.classList.add("profile_img")
                new_profile_img.src = "imgs/img_section/img01.jpg"
                new_user_container.append(new_profile_img)
                //�ǵ�� �������̹��� ����

                var new_user_name = document.createElement("div")
                new_user_name.classList.add("user_name")
                new_user_container.append(new_user_name)
                //�������� div ĭ ����

                var new_nick_name = document.createElement("div")
                new_nick_name.classList.add("nick_name")
                new_nick_name.classList.add("m_text")
                new_nick_name.textContent = "����� �г���"
                new_user_name.append(new_nick_name)
                //����� �г���

                var new_country = document.createElement("div")
                new_country.classList.add("country")
                new_country.classList.add("s_text")
                new_country.textContent = "Seoul, South Korea"
                new_user_name.append(new_country)
                //����� ���� ǥ��

                var new_sprite_more_icon = document.createElement("div")
                new_sprite_more_icon.classList.add("new_sprite_more_icon")
                new_user_container.append(new_sprite_more_icon)
                //data-name="more" �߰��ؾߵǴµ� ��� �߰��ؾ��ϴ���?
                //�� �� ������ �����ܸ���� ��� �������°���?


                var new_image_section = document.createElement("div")
                new_image_section.classList.add("image_section")
                mainFrame.append(new_image_section)
                //���������ӿ� �̹������� �߰�


                var new_trans_inner = document.createElement("div")
                new_trans_inner.classList.add("trans_inner")
                new_image_section.append(new_trans_inner)
                //�̹������Ǿȿ� trans_inner divĭ ����


                var new_trans_inner_inner = document.createElement("div")
                new_trans_inner_inner.classList.add("trans_inner_inner")
                new_trans_inner.append(new_trans_inner_inner)
                //�̹��� ���Ǿ� trans_inner�� trans_inner_inner


                
                
                //�̺κ�source �� �߰� ����ϴ���?
                		
                		
                		
//                var new_personal_contents = document.createElement("img")
//
//                new_personal_contents.classList.add("personal_contents")
//
//                new_personal_contents.src = "imgs/img_section/img01.jpg"
//                new_trans_inner_inner.append(new_personal_contents)
                //�̹��� �κ� �������� ���� 
                
                
                var new_personal_contents = document.createElement("video")

                new_personal_contents.classList.add("personal_contents")
                
                var video_source =  document.createElement("source")
                
                video_source.src = "videos/dog1.mp4"
                
                //Ÿ�Ժκ� �����߰��ϴ� �̤Ф̤Ф̤Ф�
                //<source src="videos/dog1.mp4" type="video/mp4"/>

                new_personal_contents.append(video_source)
                
                new_trans_inner_inner.append(new_personal_contents)
                
                



                var new_bottom_icons = document.createElement("div")
                new_bottom_icons.classList.add("bottom_icons")
                mainFrame.append(new_bottom_icons)
                //�ƹ����Ʒ� ������ ��ưĭ

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
                new_likes.textContent = "���ƿ�  "
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
                //�ڸ�Ʈ �����̳� --> �ǵ�Խñ� ĭ

                var new_comment = document.createElement("div")
                new_comment.classList.add("comment")
                new_comment_container.append(new_comment)
                //�ڸ�Ʈ �����̳� ���� �ڸ�Ʈ div

                var new_comment_detail = document.createElement("div")
                new_comment_detail.classList.add("comment-detail")
                new_comment.append(new_comment_detail)
                //�ڸ�Ʈ �����̳� ���� �ڸ�Ʈdiv ���� �ڸ�Ʈ ������div


                var new_nick_name = document.createElement("div")
                new_nick_name.classList.add("nick_name")
                new_nick_name.classList.add("m_text")
                new_nick_name.textContent = " ����ڴдд�"
                new_comment_detail.append(new_nick_name)


                //comment_reple
                var new_comment_reple = document.createElement("div")
                new_comment_reple.classList.add("comment_reple")
                new_comment_reple.textContent = " �ǵ�۱۱۱۱۱۱۱۱۱۱۱۱۱�"
                new_comment_detail.append(new_comment_reple)


                var new_small_heart = document.createElement("div")
                new_small_heart.classList.add("small_heart")
                new_comment_container.append(new_small_heart)

                var new_sprite_small_heart_icon_outline = document.createElement("div")
                new_sprite_small_heart_icon_outline.classList.add("sprite_small_heart_icon_outline")
                new_sprite_small_heart_icon_outline.append(new_small_heart)




                var new_timer = document.createElement("div")
                new_timer.classList.add("timer")
                new_timer.textContent = "1�ð� ��"
                mainFrame.append(new_timer)


                var new_comment_field = document.createElement("div")
                new_comment_field.classList.add("comment_field")
                mainFrame.append(new_comment_field)



                //input�±� �������ִ¹�� ã��
                var new_inputReple = document.createElement("input")
                new_inputReple.classList.add("inputReple")


                new_inputReple.placeholder = '��۴ޱ�...'


                new_comment_field.append(new_inputReple)
                var new_upload_btn = document.createElement("div")
                new_upload_btn.classList.add("upload_btn")
                new_upload_btn.classList.add("m_text")
                new_upload_btn.textContent = "�Խ�"
                new_comment_field.append(new_upload_btn)

            }

        }

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