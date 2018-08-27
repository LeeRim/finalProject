<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url="/WEB-INF/views/include/header.jsp" />
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>AdminLTE 2 | Starter</title>

<!-- 승인table -->
<link rel="stylesheet" href="resources/dist/css/approval.css"/>

<!-- datepicker -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/js/bootstrap-datepicker.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/css/bootstrap-datepicker.css" />
<style>
	.row{
		margin-left:auto;
		margin-right:auto;
	}
	.__se_tbl{
		sbackground: white; border: 0px solid black; border-image: none; width: 800px; color: black; font-family: malgun gothic, dotum, arial, tahoma; font-size: 12px; border-collapse: collapse !important;
	}
	.aTitle{
		padding: 3px !important; border: 0px solid black; border-image: none; width: 300px; height: 90px !important; text-align: center; font-size: 22px; font-weight: bold; vertical-align: middle;
	}
	.tWrappser{
		background: white; padding: 0px !important; border: currentColor; border-image: none; text-align: left; color: black; font-size: 12px; font-weight: normal; vertical-align: top;
	}
	.tHeader{
		border: 1px solid rgb(0, 0, 0); border-image: none; font-family: malgun gothic, dotum, arial, tahoma; margin-top: 1px; border-collapse: collapse;
	}
	.leftColumn{
		background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; height: 18px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: bold; vertical-align: middle;
	}
	.leftColumn2{
		background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; height: 18px; text-align: center; color: rgb(0, 0, 0); font-size: 14px; font-weight: bold; vertical-align: middle;
	}
	.rightColumn{
		background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; border-image: none; text-align: left; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle;
	}
	.rightColumn2{
		background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; border-image: none; height: 25px; text-align: left; color: rgb(0, 0, 0); font-size: 14px; font-weight: normal; vertical-align: middle;
	}
	.columns{
		background: rgb(255, 255, 255); padding: 3px; border: 1px solid black; border-image: none; width: 700px; height: 22px; text-align: left; color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle;
	}
	.vacationHalfArea{
		line-height: normal; font-family: malgun gothic, dotum, arial, tahoma; font-size: 11pt; margin-top: 0px; margin-bottom: 0px;
	}
	.vacationTypeArea{
		line-height: normal; font-family: malgun gothic, dotum, arial, tahoma; font-size: 11pt; margin-top: 0px; margin-bottom: 0px;
	}
	.pointArea{
		line-height: normal; font-family: malgun gothic, dotum, arial, tahoma; font-size: 9pt; margin-top: 0px; margin-bottom: 0px;
	}
	.msg{
		background: rgb(221, 221, 221); padding: 20px !important; border: 1px solid black; border-image: none; width: 800px; height: 22px; text-align: left; vertical-align: middle;
	}
	.btn{
		margin-top:10px;
	}
	.btn-primary{
		margin-top:20px;
	}
	.btn-app{
		width:150px;
	}
</style>
<script type="text/javascript">
	function openSelectApprover() {
		$('div.modal').modal();
	}
	var vfStart = "";
	var vfEnd = "";
	var startHalf = 0;
	var endHalf = 0;
	$(function() {
		$('#vfStartdate').datepicker({
			format : "yyyy-mm-dd",
			language : "kr",
			autoclose : true,
			startDate : "today"
		}).on('changeDate', function(){
            console.log($('#vfStartdate').datepicker('getFormattedDate'));
            vfStart = $('#vfStartdate').datepicker('getFormattedDate');
	      });
		
		$('#vfEnddate').datepicker({
			format : "yyyy-mm-dd",
			language : "kr",
			autoclose : true,
			startDate : vfStart
		}).on('changeDate', function(){
            console.log($('#vfEnddate').datepicker('getFormattedDate'));
            vfEnd = $('#vfEnddate').datepicker('getFormattedDate');
	      });
		
		
		$("#startHalf").click(days);
		$("#endHalf").click(days);
		
		
	});
	function days(){
		var startArray = vfStart.split("-");
		var endArray = vfEnd.split("-");
		
		var startD = new Date(startArray[0], Number(startArray[1])-1, startArray[2]);
		var endD = new Date(endArray[0], Number(endArray[1])-1, endArray[2]);
		
		var between = (endD.getTime() - startD.getTime());
		var betweenDay = between / (1000*60*60*24) + 1 ;
		console.log(betweenDay);
		
		if($("#startHalf").prop("checked")){
			startHalf = 0.5;
		}else if(!$("#startHalf").prop("checked")){
			startHalf = 0;
		}
		
		if($("#endHalf").prop("checked")){
			endHalf = 0.5;
		}else if(!$("#endHalf").prop("checked")){
			endHalf = 0;
		}
		console.log(startHalf);
		console.log(endHalf);
		var totalVDay = betweenDay - startHalf - endHalf;
		
		var vfHalfflag = 0;
		if(startHalf == 0 && endHalf == 0){
			vfHalfflag = 0;
		}else if(startHalf == 0.5 && endHalf == 0){
			vfHalfflag = 1;
		}else if(startHalf == 0 && endHalf == 0.5){
			vfHalfflag = 2;
		}else{
			vfHalfflag = 3;
		}
		$("#vfHalfflag").val(vfHalfflag);
		$("#useV").val(totalVDay);
	}
	
</script>
</head>
<body class="hold-transition skin-blue sidebar-mini">
	 <div class="wrapper" >
		<c:import url="/WEB-INF/views/approval/approval_menu.jsp" />
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper" style="background:white; height:1100px;">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>전자결재 <small>연차신청서</small></h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
					<li class="active">Here</li>
				</ol>
			</section>

			<!-- Main content -->
			<section class="content container-fluid">
				<div class="addApprover" style="margin-left:60px; width:100px;">
					<a class="btn btn-app" href="#" onclick="openSelectApprover();">
						<i class="fa fa-user-plus" style="margin-top:5px;"></i>결재자추가
					</a>
				</div>
				<div class="row">
				<section class="content_wrapper" style="margin-left:300px; margin-top:-100px;">
					<!--전자결제 상세-->
					<div class="report_type approval_type form_back">
						<!--전자결재 내용-->
						<div class="approval_import ie9-scroll-fix">
							<!-- 문서 내용 표시 테스트 -->
							<form id="vacationForm" action="writeVacation.do" class="form_doc_editor editor_view" method="post"  enctype="multipart/form-data" >
								<input type="hidden" id="appStr" name="appStr" value=""/>
								<input type="hidden" id="insteads" name="insteads" value=""/>
								<input type="hidden" id="vfHalfflag" name="vfHalfflag" value=""/>
									<table class="__se_tbl" >
										<!-- Header -->
										<tbody>
											<tr>
											<tr>
												<td
													style="background: white; padding: 0px !important; border: 0px currentColor; border-image: none; height: 90px; text-align: center; color: black; font-size: 36px; font-weight: bold; vertical-align: middle;"
													colspan="2" class="">연차 신청서</td>
												</tr>
												<td class="tWrappser">
													<table class="tHeader">
														<!-- User -->
														<colgroup>
															<col width="90">
															<col width="220">
														</colgroup>
														<tbody>
															<tr>
																<td class="leftColumn">기안자</td>
																<td class="rightColumn"><c:out value="${sessionScope.user.eName}"></c:out></td>
															</tr>
															<tr>
																<td class="leftColumn">소속</td>
																<td class="rightColumn"><c:out value="${sessionScope.user.department}"></c:out>
																</td>
															</tr>
															<tr>
																<td class="leftColumn">기안일</td>
																<td class="rightColumn">
																	<jsp:useBean id="currentTime" class="java.util.Date" />
																	<fmt:formatDate value="${currentTime }" pattern="yyyy-MM-dd" var="currentTime" /> <c:out value="${currentTime }"></c:out>
																	<input type="hidden" name="aWriteDate" value="${currentTime }"/>
																</td>
															</tr>
															<tr>
																<td class="leftColumn">문서번호</td>
																<td class="rightColumn"></td>
															</tr>
														</tbody>
													</table>
												</td>
												<td>
													<div class="sign_condition" id="sign_condition"></div>
															<div class="sign_condition">
																<span class="sign_type1_inline"><span class="sign_tit_wrap"><span class="sign_tit"><strong>신청</strong></span></span>
																	<span class="sign_member_wrap" id="activity_15162"><span class="sign_member">
																	<span class="sign_rank_wrap"><span class="sign_rank"><c:out value="${sessionScope.user.job}"></c:out></span></span>
																	<span class="sign_wrap"><span class="sign_name"><c:out value="${sessionScope.user.eName}"></c:out></span></span>
																	<span class="sign_date_wrap"><span class="sign_date " id="date_15162"></span></span></span></span></span>
															</div>
												</td>
											</tr>
										</tbody>
									</table> 
									<br>
									<table class="__se_tbl" >
										<tbody>
											<tr>
												<td class="leftColumn2">휴가 종류</td>
												<td class="rightColumn2">
													<span id="vacationTypeArea" class="vacationTypeArea" name="select">
														 <select class="editor_slt" name="vfType">
																<option value="연차">연차</option>
																<option value="조퇴">조퇴</option>
																<option value="지각">지각</option>
																<option value="경조">경조</option>
																<option value="공가">공가</option>
																<option value="질병휴가">질병휴가</option>
														</select>
													</span>
												</td>
											</tr>
											<tr>
												<td class="leftColumn2">기간 및 일시</td>
												<td  class="columns" >
													<input type="text" readonly class="ipt_editor ipt_editor_date hasDatepicker" id="vfStartdate" name="vfStartdate" value=""/>~
													<input type="text" readonly class="ipt_editor ipt_editor_date hasDatepicker" id="vfEnddate" name="vfEnddate" value=""/> 
													<span id=chkDays" onclick="days();" style="cursor:pointer">일 수 확인</span>
													<span id="usingPointArea" class="pointArea" >
														<b>사용일수 : </b> 
														<input type="text" id="useV" class="ipt_editor ipt_editor_num" data-dsl="{{number:usingPoint}}" name="vfUseddate" value="" readonly="readonly"/> 
														<b id="usingPoint_Comment" style="font-weight: bold; color: red"></b> 
													</span>
												</td>
											</tr>
											<tr>
												<td class="leftColumn2">반차 여부</td>
												<td class="rightColumn2">
													<span id="vacationHalfArea" class="vacationHalfArea" >
														<span class="halfArea">
															<input type="checkbox" class="editor_opt" id="startHalf">
															 <label class="editor_label">시작일</label>
														</span>
														<span class="halfArea">
															<input type="checkbox" class="editor_opt" id="endHalf">
															<label class="editor_label" >종료일</label>
														</span> 
													</span>
												</td>
											</tr>
											<tr>
												<td class="leftColumn2">연차 일수</td>
												<td  class="columns" >
													<span id="restPointArea" class="pointArea" ><b>총 연차 : </b> 
														<input type="text" class="ipt_editor ipt_editor_num" name="restPoint" id="restPoint" value="${sessionScope.user.totalVacation}" readonly="readonly"/> 
														<b id="restPoint_Comment" style="font-weight: bold; color: red"></b> 
													</span>
													<span id="applyPointArea" class="pointArea" ><b>남은연차 : </b> 
														<input type="text" class="ipt_editor ipt_editor_num" name="applyPoint" id="applyPoint" value="${sessionScope.user.remainingVacation}" readonly="readonly"> 
														<b id="applyPoint_Comment" style="font-weight: bold; color: red"></b> 
													</span>
												</td>
											</tr>
											<tr>
												<td class="leftColumn2"><b style="color: rgb(255, 0, 0);">*</b>휴가 사유</td>
												<td  class="columns" >
													<textarea class="txta_editor" name="vfReason" id="vfReason" style="width:700px;height:300px; border:none;"value=""></textarea></td>
											</tr>
											<tr>
												<td class="msg"  colspan="2">
													1. 연차의 사용은 근로기준법에 따라 전년도에 발생한 개인별 잔여 연차에 한하여 사용함을 원칙으로 한다. 
													단, 최초 입사시에는 근로 기준법에 따라 발생 예정된 연차를 차용하여 월 1회 사용 할 수 있다.<br> 
													2. 경조사 휴가는 행사일을 증명할 수 있는 가족 관계 증명서 또는 등본, 청첩장 등 제출<br>
													 3. 공가(예비군/민방위)는 사전에 통지서를, 사후에 참석증을 반드시 제출
												</td>
											</tr>
										</tbody>
									</table>
									<div class="form-group" style="height: 100px;">
											<div style="float: left; height: 100px; width: 130px;">
												<div class="btn btn-default btn-file">
													<i class="fa fa-paperclip"></i> Attachment <input
														multiple="multiple" type="file" name="files"
														class="upload-hidden"/>
												</div>
												<p class="help-block">Max. 32MB</p>
											</div>
											<div class="file-list"></div>
										<button class="btn btn-primary" style="margin-top:10px;float:right;"><i class="fa fa-edit"></i>작성</button>
										</div>
							</form>
						</div>

					</div>
				</section>
			</div>

			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
 	 </div> 


	<c:import url="../selectApproverPage.jsp"/>
	<c:import url="/WEB-INF/views/include/footer.jsp" />
	<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. -->
</body>
</html>