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
    .
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
	cxontent="http://kindtiger.dothome.co.kr/insta/imgs/instagram.jpeg">


    <title>instagram</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="shortcut icon" href="imgs/instagram.png">

    <style>
.b_inner .contents_box {
	float: none;
	display: flex;
	justify-content: center;
}
</style>

</head>
<body>


<section id="container">

    <header id="header">
        <section class="h_inner">

            <h1 class="logo">
                <a href="index.jsp">
                    <div class="sprite_insta_icon"></div>
                    <div>
                        <div class="sprite_write_logo"></div>
                    </div>
                </a>
            </h1>

            <div class="search_field">
                <input type="text" placeholder="검색" tabindex="0">

                <div class="fake_field">
                    <span class=sprite_small_search_icon></span>
                    <span>검색</span>
                </div>
            </div>


            <div class="right_icons">
                <a href="new_post.jsp"><div
							class="sprite_camera_icon"></div></a>
                <a href="login.jsp"><div
							class="sprite_compass_icon"></div></a>
                <a href="follow.jsp"><div
							class="sprite_heart_icon_outline"></div></a>
                <a href="profile.jsp"><div
							class="sprite_user_icon_outline"></div></a>
            </div>
        </section>
    </header>


    <div id="main_container">

        <section class="b_inner">

            <div class="contents_box">

                <article class="contents cont01">
                    <header class="top">
                        <div class="user_container">
                            <div class="profile_img">
                                <img src="imgs/thumb.jpeg" alt="">
                            </div>
                            <div class="user_name">
                                <div class="nick_name">KindTiger</div>
                                <div class="country">Seoul, South Korea</div>
                            </div>
                        </div>
                        <div class="sprite_more_icon"></div>
                    </header>

                    <div class="img_section">
                        <div class="trans_inner">
                            <div>
									<img src="imgs/img_section/img02.jpg" alt="">
								</div>
                        </div>
                    </div>


                    <div class="bottom_icons">
                        <div class="left_icons">
                            <div class="heart_btn">
                                <div class="sprite_heart_icon_outline"
										data-name="heartbeat"></div>
                            </div>
                            <div>
                                <div class="sprite_bubble_icon"></div>
                            </div>
                            <div>
                                <div class="sprite_share_icon"></div>
                            </div>
                        </div>

                        <div class="right_icon">
                            <div class="sprite_bookmark_outline"></div>
                        </div>
                    </div>

                    <div class="count_likes">
                        좋아요
                        <span class="count">2,351</span>
                        개
                    </div>

                    <div class="commet_container">

                        <div class="commet">
                            <div class="nick_name">
                                popo213
                            </div>
                            <div>
                                우와...너무 축하해...!!!
                            </div>
                        </div>

                        <div class="small_heart">
                            <div class="sprite_small_heart_icon_outline"></div>
                        </div>

                    </div>

                    <div class="timer">1시간 전</div>

                    <div class="commit_field">
                        <input type="text" placeholder="댓글달기..">

                        <div class="upload_btn">게시</div>
                    </div>


                </article>







            </div>

        </section>
    </div>


</section>

<!--<script src="js/insta.js"></script>-->
</body>
</html>
</body>
</html>