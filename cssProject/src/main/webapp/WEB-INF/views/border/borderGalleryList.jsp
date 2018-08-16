<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url ="/WEB-INF/views/include/header.jsp"/>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.image-list{
		width:auto;
		float:left;
		margin-right:10px;
		margin-bottom:10px;
	}
</style>
<script>
	function attachDetailPage(attaKey){
		location.href="attachDetailPage.do?attaKey=" + attaKey;
	}
</script>
<script>
(function(){
	  // 목록 마지막 요소 흐림처리
		$('ul.list-a').addClass('infinite-scroll');
	});

	var count = 2;

	// 스크롤 이벤트
	$(window).on('scroll',function () {
		infiniteScroll();
	});

	// 스크롤 감지 및 호출
	function infiniteScroll(){
		var deviceMargin = 0; // 기기별 상단 마진
		var $scrollTop = $(window).scrollTop();
		var $contentsHeight = Math.max($('body').height(),$('#body').height());
		var $screenHeight = window.innerHeight || document.documentElement.clientHeight || document.getElementsByTagName('body')[0].clientHeight; // 스크린 높이 구하기

		if($scrollTop ==  $contentsHeight - $screenHeight) {
			if($('#searchbar').is(':visible')){ return false; }
			loadArticle(count);
			count++;
		}
	}

	// ajax 로드
	function loadArticle(pageNumber){
		preloader('show');
	    $.ajax({
			type: 'GET',
			url: "_ajax.html",
			data: "page="+pageNumber,
			cache: false,
			success: function(html){
				setTimeout(function(){ // 시간 지연
					$('#list').append(html);
					preloader('hide');
				}, 1000);
			}
	    });
		return false;
	}

</script>
</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">
		<c:import url="/WEB-INF/views/border/left_column_board.jsp"/>
		<div class="content-wrapper">
			<section class="content-header">
				<h1>
					Data Tables <small>advanced tables</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
					<li><a href="#">Tables</a></li>
					<li class="active">Data tables</li>
				</ol>
			</section>
			<div class="row" style="width: 95%; margin-right: auto; margin-left: auto; margin-top: 20px;">
<h1 align="center">앨범 게시판</h1>
<div class="thumnailArea">
			<c:forEach items="${list}" var="Attach">
				<div class="image-list" onclick="attachDetailPage(${Attach.attaKey});" align="center">
					<div>
						<img src="resources/upload/boardGallery/${Attach.attaFileName}" 
									width="510px" height="150px"/>
					</div>
				</div>
			</c:forEach>			
		</div>
		

	</div>
				<c:if test="${!empty user}">
				<a href="boardGalleryForm.do">갤러리 작성하기</a>
                </c:if>
	</div>
</div>

<c:import url="/WEB-INF/views/include/footer.jsp"/>
</body>
</html>