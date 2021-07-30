<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<style>
#videosList {
 max-width: 600px; 
  overflow: hidden;
}

.video {
  background-image: url('https://img.youtube.com/vi/nZcejtAwxz4/maxresdefault.jpg');
  height: 330px;
  width: 600px;
  margin-bottom: 50px;
}

/* Hide Play button + controls on iOS */
video::-webkit-media-controls {
    display:none !important;
}
</style>


</head>
<body>
    <div id="videosList">           

        <div class="video">
            <video class="thevideo" loop preload="none">
              <source src="videos/dog3.mp4" type="video/mp4">
              <source src="videos/dog2.mp4" type="video/webm">
            	Your browser does not support the video tag.
            </video>
          </div>
          	Hover mouse over video. Desktop only [ Obviously! ;) ]
        </div>
        
	<script src='js/jquery-3.6.0.min.js'></script>
	<script src="js/profile.js"></script>
	<script type="text/javascript">
	
	var cip = $(".video").hover( hoverVideo, hideVideo );

	function hoverVideo(e) {  
	    $('video', this).get(0).play(); 
	}

	function hideVideo(e) {
	    $('video', this).get(0).pause(); 
	}
	
	
	</script>
	
	
</body>
</html>