<button type="button">DB정보 GET</button>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
		$(function(){
			$("button").click(function(){
				$.ajax({
					url : 'dbGet.jsp', //데이터베이스에 접근해 현재페이지로 결과를 뿌려줄 페이지
					mathod : 'post',
					data : {
						userId : 'hong123' //dbGet.jsp페이지로 데이터를 보냄
					
					},

					success : function(species){ //DB접근 후 가져온 데이터

						console.log($.trim(species)); //jsp페이지 통째로 가져오다보니 공백을 자를 필요가 있음.
					
					}

				})

			})

		})
		
</script>
