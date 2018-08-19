<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE >
<html>
<head>
<meta  charset="UTF-8">
<title>Insert title here</title>
   <!-- jQuery 3 -->
	<script src="resources/bower_components/jquery/dist/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		var menu = sessionStorage.getItem("menu");
		if(menu != null){
			setMenu(menu);
		}else{
			setMenu(1);
		}
		
	})
	function setMenu(clickIdx){
		$(".sidebar-menu > li").each(function(index){
			console.log($(this));
			if(index == clickIdx){
				$(this).addClass("active");
			}else{
				$(this).removeClass("active");
			}
		});
	}
	function menuHighlight(clickIdx){
		sessionStorage.setItem("menu", clickIdx);
	}

</script>

</head>
<body>
	<!-- Left side column. contains the logo and sidebar -->
	<aside class="main-sidebar" style="padding-top:0px;">

		<!-- sidebar: style can be found in sidebar.less -->
		<section class="sidebar">

			<!-- Sidebar user panel (optional) -->
			<div class="user-panel">
				<div class="pull-left image">
					<img src="resources/dist/img/user2-160x160.jpg" class="img-circle"
						alt="User Image">
				</div>
				<div class="pull-left info">
					<p>관리자</p>
					<!-- Status -->
					<a href="#"><i class="fa fa-circle text-success"></i> CSS_관리부서</a>
				</div>
			</div>

			<!-- search form (Optional) -->
			<form action="#" method="get" class="sidebar-form">
				<div class="input-group">
					<input type="text" name="q" class="form-control"
						placeholder="Search..."> <span class="input-group-btn">
						<button type="submit" name="search" id="search-btn"
							class="btn btn-flat">
							<i class="fa fa-search"></i>
						</button>
					</span>
				</div>
			</form>
			<!-- /.search form -->

			<!-- Sidebar Menu -->
			<ul class="sidebar-menu" data-widget="tree">
				<li class="header">메뉴</li>
				<!-- Optionally, you can add icons to the links -->
				<li class="active" id="main"><a href="adminMain.do" onclick="menuHighlight(1);"><i class="fa fa-th-large"></i> <span>메인</span></a></li>
				<li class="treeview">
					<a href="#"><i class="fa fa-user"></i>
						<span>회원관리</span>
					 	<span class="pull-right-container">
					 		 <i class="fa fa-angle-left pull-right"></i>
						</span>
					</a>
					<ul class="treeview-menu">
						<li><a href="companyList.do" onclick="menuHighlight(2);">회원목록</a></li>
						<li><a href="companySet.do" onclick="menuHighlight(2);">회원설정</a></li>
					</ul>
				</li>
				<li><a href="qnaList.do" onclick="menuHighlight(3);"><i class="fa fa-question"></i> <span>문의사항</span></a></li>
				<li class="treeview">
					<a href="#" ><i class="fa fa-krw"></i>
						<span>매출현황</span>
						<span class="pull-right-container">
					 		 <i class="fa fa-angle-left pull-right"></i>
						</span>
					</a>
					<ul class="treeview-menu">
						<li><a href="salesPage.do" onclick="menuHighlight(4);">기간 별 매출</a></li>
						<li><a href="companySet.do" onclick="menuHighlight(4);">결제 목록 조회</a></li>
					</ul>
				</li>
			</ul>
			<!-- /.sidebar-menu -->
		</section>
		<!-- /.sidebar -->
	</aside>
</body>
</html>