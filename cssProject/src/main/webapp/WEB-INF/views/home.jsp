<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url ="/WEB-INF/views/include/header.jsp"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 2 | Starter</title>
  
  <script>
  	function boardPage(bType){
  		location.href="borderList.do?bCateGory=" + bType;
  	}
  	function board(){
  		location.href="borderIndex.do";
  	}
  	function givevacation(){
  		location.href="givevacation.do";
  	}
  	function empGive(){
  		location.href="empGive.do";
  	}
  	function empQNA(){
  		var eType = "${user.eType}";
  		if(eType == 1 || eType == 0){
	  		location.href="empQNA.do";
  		}
  	}
  </script>

</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
	
	<c:import url="include/left_column.jsp"/>
  
  


  <div class="content-wrapper" style="height: 100%;">

    <section class="content-header">

        <h1>커뮤니티 버튼</h1>
        <button onclick="board();">게시판 인덱스</button>
        <button onclick="givevacation();">휴가 주기(회사)</button>
        <button onclick="empGive();">사원 휴가 정보 조회</button>
        <button onclick="empQNA();">1:1 상담</button>
        <hr>
        <h1>쪽지 버튼</h1>
        <a href="receiveNoteList.do">쪽지 메인 페이지 이동</a>
        <h1>로그인 버튼</h1>
        <a href="loginForm.do">로그인 페이지 이동</a>

      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
        <li class="active">Here</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content container-fluid">
	<a href="adminMain.do">관리자페이지</a>
	<a href="adminIndex.do">회사관리자인덱스</a>

	  <a href="calender.do">일정 조회</a>
	  <a href="commuteCheck.do">근태관리</a>

	<a href="companyJoinForm.do">회사회원가입</a>
	<a href="companyPayment.do?cKeyFk=${user.cKeyFk }">결제하기</a>
	
        
        <a href="loginForm.do">로그인</a>
        <a href="approvalPage.do">전자결재</a>

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
</div>



	<c:import url="include/footer.jsp"/>
</body>
</html>