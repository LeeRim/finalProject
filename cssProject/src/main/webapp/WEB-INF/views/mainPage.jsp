<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/dist/css/new_main.css">
<link rel="stylesheet" href="resources/dist/css/new_reset.css">

</head>
<style>


.function{

padding: 50px;
width:100%;
height:1200px;


}
.function1{
display:block;
/*  border: 1px solid black; */
width:700px;
height:250px;
margin: 20px auto;
vertical-align:middle;

}
.function_text{
display: inline-block;
/*  border: 1px solid black; */
width:400px;
height:250px;

}
.function_text1{
margin-top:50px;
font-size:45px;
font-weight:bold;
color:#424242

}
.function_text2{
margin-top:10px;
font-size:16px;

}

.function_image{
display: inline-block;
margin-right:30px;
}



.intro{
width:100%;
}



.intro2{
background-color:#25cad3;
width:100%;
height:33%;
text-align: center;
    position: relative;

}
.intro3{
background-color:white;
width:100%;
height:33%;
    text-align: center;
    position: relative;
}

.intro_inner{
/* border: 1px solid black; */
padding: 10px 50px;
margin: 0px auto;
    max-width: 1240px;
    position: relative;
        word-break: keep-all;
    
}

.wrap_text{
display:inline-block;
/* border: 1px solid black; */
width: 50%;
margin-top:-60px;
margin-top:30px;
}

.wrap_image{
display:inline-block;
border: 0 none;
}

.wrap_text1{
font-size:40px;
color:white;
padding:0 100px;
}
.wrap_text2{
font-size:16px;
color:white;
padding:0 60px;
margin-top:60px;

}

.intro1_title{
    color: #25cad3;
	font-size:40px;
	font-weight:bold;
	text-align:center;
	background-image: url(resources/dist/img/test/sub_visual_00.jpg);
	padding: 50px 0;
}


</style>
<body>
<div class="mainFrame">
<!-- <div class="header"> -->
<!-- 	<h1 class="logo"><a href="" class="logo_daouoiffice" title="DaouOffice"></a></h1> -->
<!-- 	<h2 class="blind">주요 서비스</h2> -->
<!-- 	<ul class="navi_main"> -->
<!--  		<li><a href=""></a></li>  -->
<!--  		<li><a href=""></a></li>  -->
<!-- 		<li><a href="">상담 및 데모신청</a></li> -->
<!-- 		<li><a onclick="openDOapply()" style="cursor: pointer;"> -->
<!--     			<span style="cursor: pointer;"></span> -->
<!-- 	 	   </a> -->
		    <script>
 // 	        function openDOapply() { 
 // 	        //window.open("http://pay.daouoffice.com/apply/", "서비스 신청하기", "width=1100,height=900,resizable=yes,scrollbars=yes"); 
 // 	        } 
  		    </script>  
<!-- 		</li> -->
<!-- 		<li><a href=""></a></li> -->
<!-- 	</ul> -->
<!-- 	<div class="modal" style="display: none;"></div> -->
<!-- 	<button class="open_nav"></button> -->
<!-- 	<div class="navi_all" style="display: block; right: -1167px;"> -->
<!-- 		<button class="btn_gnb_close" title="close"></button> -->

<!-- 		<div class="navi_box_wrap"> -->
<!-- 			<div class="navi_box"> -->
<!-- 				<i class="separator pin01"></i> -->
<!-- 				<h3>다우오피스 소개</h3> -->
<!-- 				<ul> -->
<!-- 					<li><a href="">회사소개</a></li> -->
<!-- 					<li><a href="">다우오피스란</a></li> -->
<!-- 					<li class="point"><a href="">기능안내</a></li> -->
<!-- 					<li><a href="">고객정책</a></li> -->
<!-- 					li><a href="">제휴 신청 안내</a></li -->
<!-- 				</ul> -->
<!-- 			</div> -->
<!-- 			<div class="navi_box"> -->
<!-- 				<i class="separator pin01"></i> -->
<!-- 				<h3>체험하기</h3> -->
<!-- 				<ul> -->
<!-- 					<li class="point"><a href="">왜 다우오피스인가</a></li> -->
<!-- 					<li class="point"><a href="">상담 및 데모신청</a></li> -->
<!-- 					<li class="point"><a href="">한눈에 둘러보기</a></li> -->
<!-- 					<li><a href="">고객사 현황</a></li> -->
<!-- 				</ul> -->
<!-- 			</div> -->
<!-- 			<div class="navi_box"> -->
<!-- 				<i class="separator pin01"></i> -->
<!-- 				<h3>시작하기</h3> -->
<!-- 				<ul> -->
<!-- 					<li class="point"> -->
<!-- 						<a onclick="openDOapply()" style="cursor: pointer;"> -->
<!--     						<span style="cursor: pointer;">서비스 신청</span> -->
<!-- 				 	   </a> -->
					    <script>
// 				        function openDOapply() {
// 				        //window.open("http://pay.daouoffice.com/apply/", "서비스 신청하기", "width=1100,height=900,resizable=yes,scrollbars=yes");
// 				        }
 					    </script> 
<!-- 					</li> -->
<!-- 					<li class="point"><a href="">유형 및 가격안내</a></li> -->
<!-- 					li><a href="">보안상품</a></li -->
<!-- 					<li><a href="">제휴상품</a></li> -->
<!-- 					<li><a href="">FAQ</a></li> -->
<!-- 				</ul> -->
<!-- 			</div> -->
<!-- 			<div class="navi_box"> -->
<!-- 				<i class="separator pin01"></i> -->
<!-- 				<h3>활용하기</h3> -->
<!-- 				<ul> -->
<!-- 					<li><a href="">교육 안내 및 신청</a></li> -->
<!-- 					<li><a href="">도움말 동영상</a></li> -->
<!-- 					<li><a href="">활용사례</a></li> -->
<!-- 					li><a href="">Works 가이드</a></li -->
<!-- 				</ul> -->
<!-- 			</div> -->
<!-- 			<div class="navi_box"> -->
<!-- 				<i class="separator pin01"></i> -->
<!-- 				<h3>다우오피스 소식</h3> -->
<!-- 				<ul> -->
<!-- 					<li><a href="">공지사항</a></li> -->
<!-- 					<li><a href="">이벤트</a></li> -->
<!-- 				</ul> -->
<!-- 			</div> -->
<!-- 			<div class="navi_box"> -->
<!-- 				<i class="separator pin01"></i> -->
<!-- 				<h3>고객센터</h3> -->
<!-- 				<ul> -->
<!-- 					<li><a href="">고객센터</a></li> -->
<!-- 				</ul> -->
<!-- 			</div>			 -->
<!-- 		</div> -->
<!-- 	</div> -->
<!-- </div> -->

<div class="row introduce">
		<div class="inner">
			<button class="btn_slide prev" type="button" title="이전"></button>
			<button class="btn_slide next" type="button" title="다음"></button>
			<div class="sp-slides">
				<div class="sp-slide1" style="display: block; opacity: 1;">
					<div class="text_box">
						<p class="mtitle01">온 직원이 함께하는 업무 솔루션</p>
						<p class="stitle01">최고의 제품, 최적의 가격을 선보이다</p>
					</div>
					<div class="btn_box">
						<a href="loginForm.do" class="btn_major pc_display">서비스 접속하기</a>
						<p style="margin-top: 10px; text-align: center;"><a href="companyJoinForm.do" style="color: white;">아직 CSS회원이 아니신가요?</a></p>
					</div>
				
				</div>
				<div class="sp-slide2" style="display: none; opacity: 1;">
					<div class="text_box">
						<p class="mtitle01">온 직원이 함께하는 업무 솔루션</p>
						<p class="stitle01">필요한 기능, 무제한으로 만들다</p>
					</div>
					<div class="btn_box">
						<a href="" class="btn_major">서비스 접속하기</a>
					</div>		
				</div>
				<div class="sp-slide3" style="display: none; opacity: 1;">
					<div class="text_box">
						<p class="mtitle01">온 직원이 함께하는 업무 솔루션</p>
						<p class="stitle01">그룹웨어의 시작과 끝,<br>보안으로 안전하게</p>
					</div>
					<div class="btn_box">
						<a href="" class="btn_major">서비스 접속하기</a>
					</div>
				</div>
				<div class="sp-slide4" style="display: none; opacity: 1;">
					<div class="text_box">
						<p class="mtitle01">온 직원이 함께하는 업무 솔루션</p>
						<p class="stitle01">제휴, 새로운 가치를 창출하다</p>
					</div>
					<div class="btn_box">
						<a href="" class="btn_major">서비스 접속하기</a>
					</div>			
				</div>
			</div>
			
		</div>
	</div>

<div class="function">
<div class="function1">
<div class="function_image">
				<img src="resources/dist/img/test/func_works_01.png" >
			</div>
<div class="function_text">
<p class="function_text1">조직관리</p>
<p class="function_text2">한번 조직도를 설정해 놓으면, 부서/인사 이동 시 관리하기 쉬울 뿐만 아니라 효율적인 업무처리가 가능합니다.</p>
</div>
</div>
<div class="function1">
<div class="function_image">
				<img src="resources/dist/img/test/func_works_02.png" >
			</div>
<div class="function_text">
<p class="function_text1">전자결재</p>
<p class="function_text2">문서정보, 변경 이력, 열람기록 등 결재문서에 대한 다양한 정보를 관리하고 제공함으로써 결재문서의 활용도를 극대화합니다.</p>
</div>
</div>
<div class="function1">
<div class="function_image">
				<img src="resources/dist/img/test/func_works_03.png" >
			</div>
<div class="function_text">
<p class="function_text1">보고서</p>
<p class="function_text2">보고서 쓰는 시간은 평균 몇 시간일까요? 지난 회차 보고를 참조하여 빠르게 작성할 수 있습니다. 다른 팀원들의 보고서에 관심을 두고 피드백할 시간이 생깁니다.</p>
</div>
</div>
<div class="function1">
<div class="function_image">
				<img src="resources/dist/img/test/func_works_04.png" >
			</div>
<div class="function_text">
<p class="function_text1">캘린더</p>
<p class="function_text2">관심 캘린더 추가 기능을 중심으로 직원 간 일정 공유가 원활히 진행되며, 회의실 예약부터 알림까지 한 번에 가능합니다.</p>
</div>
</div>

</div>

<div class="intro">
<div class="intro1">
<p class="intro1_title">CSS로 갈아타야 하는 이유</p>
</div>
<div class="intro2">
<div class="intro_inner">
			<div class="wrap_text">
				<p class="wrap_text1">With Ease</p>
				<p class="wrap_text1">누구나 쉽게 사용할 수 있습니다.</p>
			<p class="wrap_text2">사용자의 입장에서 CSS기술이 직접 사용하면서 개발한 CSS는 쉽고, 직관적인 UI 로 모든 기능을 편리하게 이용할 수 있습니다. 
			쪽지, 전자결재, 게시판, 일정관리, 근태관리 등의 다양한 기능을 자유롭게 이용하세요.</p>
			</div>
			<div class="wrap_image">
				<img src="resources/dist/img/test/switch_2.png" >
			</div>
		</div>
</div>

<div class="intro3" >
	<div class="intro_inner">
			<div class="wrap_text">
				<p class="wrap_text1" style="color: #25cad3;">Anytime Anywhere</p>
				<p class="wrap_text1" style="color: #424140;">언제 어디서나<br>업무가 가능합니다.</p>
				<p class="wrap_text2" style="color:#8f8f8f;'">사무실은 물론,  언제 어디서나  손 끝에서 펼쳐지는 업무 공간 CSS.메일부터 전자결재까지! 기업에 필요한 모든 업무 기능을 PC에 최적화하여 제공합니다.</p>
			</div>
			<div class="wrap_image">
				<img src="resources/dist/img/test/switch_1.png" >
			</div>
		</div>
</div>

<div class="intro2">
	<div class="intro_inner">
			<div class="wrap_text">
				<p class="wrap_text1">Budget Saving</p>
				<p class="wrap_text1">예산 걱정까지 덜어드립니다.</p>
				<p class="wrap_text2" style="padding:0 30px;">가격은 솔루션 도입을 위한 의사결정과정에서 가장 중요하게 작용하죠. 
				다우오피스는  좋은 제품을 보다 합리적인 가격에 제공하기 위해 항상 고민합니다. 클라우드에서 가볍고 빠르게 이용할 수 
				있는 서비스형부터, 단독 서버에 설치하여 월 단위로 지불하는 설치형까지! 업무 솔루션이 필요하다면, CSS 도입하시고 
				예산을 절감하세요.</p>
			</div>
			<div class="wrap_image">
				<img src="resources/dist/img/test/switch_4.png" >
			</div>
		</div> 
</div>


</div>
<div class="row footer_copy">
	<div class="inner">
		<div class="copy">
			<p>서울특별시 강남구 테헤란로 14길 6 남도빌딩 , 2층, 3층,4층(강남구, 역삼동) | ㈜CSS | 대표이사 장건희 </p>
			<p>사업자 등록번호 123-45-56789 | 통신판매업신고 제 1010 – 강남 – 111호 &nbsp; 
				<a href="#" class="btn btn_ghost2" target="_blank">사업자 정보 확인</a>
			</p>
			<p>호스팅 서비스 제공자 : ㈜CSS | Email: css@naver.com </p>
			<p>Copyright COMPANY SYSTEM SERVICE. All rights reserved.</p>
		</div>
	</div>
</div>

</div>

</body>
</html>