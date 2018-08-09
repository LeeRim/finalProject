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
<link rel="stylesheet" href="resources/dist/css/approval.css">

<!-- datepicker -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/js/bootstrap-datepicker.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/css/bootstrap-datepicker.css" />
<script type="text/javascript">

function openSelectApprover(){
	$('div.modal').modal();
}

	$(function() {
		$('#jpWorkingDate').datepicker({
			format : "yyyy/mm/dd",
			language : "kr",
			autoclose : true
		});
	});
</script>
<!--  -->

</head>
<!--
BODY TAG OPTIONS:
=================
Apply one or more of the following classes to get the
desired effect
|---------------------------------------------------------|
| SKINS         | skin-blue                               |
|               | skin-black                              |
|               | skin-purple                             |
|               | skin-yellow                             |
|               | skin-red                                |
|               | skin-green                              |
|---------------------------------------------------------|
|LAYOUT OPTIONS | fixed                                   |
|               | layout-boxed                            |
|               | layout-top-nav                          |
|               | sidebar-collapse                        |
|               | sidebar-mini                            |
|---------------------------------------------------------|
-->
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">

		<c:import url="/WEB-INF/views/approval/approval_menu.jsp" />



		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					전자결재페이지 <small>Optional description</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
					<li class="active">Here</li>
				</ol>
			</section>

			<!-- Main content -->
			<section class="content container-fluid">

				<!--------------------------
        | Your Page Content Here |
        -------------------------->
				<div class="addApprover">
					<a class="btn btn-app" href="#" onclick="openSelectApprover();">
						<i class="fa fa-user-plus"></i>결재자추가
					</a>
				</div>
				<div class="content_page report_detail">

					<div class="wrap_container">
						<!-- 3단 레이아웃 멀티클래스 -->
						<section class="content_wrapper">
							<!--전자결제 상세-->
							<div class="report_type approval_type form_back">

								<!--전자결재 내용-->
								<div class="approval_import ie9-scroll-fix">
									<!-- 문서 내용 표시 테스트 -->
									<form id="document_content" class="form_doc_editor editor_view"
										action="writeJobPropsal.do" method="get">
										<span>
											<table
												style="border: 0px solid rgb(0, 0, 0); border-image: none; width: 800px; font-family: malgun gothic, dotum, arial, tahoma; margin-top: 1px; border-collapse: collapse;">
												<!-- Header -->
												<colgroup>
													<col width="310">
													<col width="490">
												</colgroup>

												<tbody>
													<tr>
														<td
															style="background: white; padding: 0px !important; border: 0px currentColor; border-image: none; height: 90px; text-align: center; color: black; font-size: 36px; font-weight: bold; vertical-align: middle;"
															colspan="2" class="">업 무 기 안</td>
													</tr>
													<tr>
														<td
															style="background: white; padding: 0px !important; border: currentColor; border-image: none; text-align: left; color: black; font-size: 12px; font-weight: normal; vertical-align: top;">
															<table
																style="border: 1px solid rgb(0, 0, 0); border-image: none; font-family: malgun gothic, dotum, arial, tahoma; margin-top: 1px; border-collapse: collapse;">
																<!-- User -->
																<colgroup>
																	<col width="90">
																	<col width="220">
																</colgroup>

																<tbody>
																	<tr>
																		<td
																			style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; height: 18px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: bold; vertical-align: middle;">

																			기안자</td>
																		<td
																			style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; border-image: none; text-align: left; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle;">
																			<c:out value="${sessionScope.user.eName}"></c:out>
																		</td>
																	</tr>
																	<tr>
																		<td
																			style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; height: 18px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: bold; vertical-align: middle;">

																			소속</td>
																		<td
																			style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; border-image: none; text-align: left; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle;">
																			<c:out value="${sessionScope.user.department}"></c:out>
																		</td>
																	</tr>
																	<tr>
																		<td
																			style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; height: 18px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: bold; vertical-align: middle;">

																			기안일</td>

																		<td
																			style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; border-image: none; text-align: left; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle;">
																			<jsp:useBean id="currentTime" class="java.util.Date" />
																			<fmt:formatDate value="${currentTime }"
																				pattern="yyyy-MM-dd" var="currentTime" /> <c:out
																				value="${currentTime }"></c:out><input type="hidden"
																			name="aWriteDate" value="${currentTime }">
																		</td>
																	</tr>
																	<tr>
																		<td
																			style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; height: 18px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: bold; vertical-align: middle;">

																			문서번호</td>
																		<td
																			style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; border-image: none; text-align: left; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle;"></td>
																	</tr>
																</tbody>
															</table>
														</td>
														<td>
															<div class="sign_condition">
																<span class="sign_type1_inline"><span
																	class="sign_tit_wrap"><span class="sign_tit"><strong>승인</strong></span></span>
																	<!--  --> <span class="sign_member_wrap"
																	id="activity_15162"><span class="sign_member"><span
																			class="sign_rank_wrap"><span class="sign_rank">부장</span></span><span
																			class="sign_wrap"><span class="sign_name">김지연</span></span><span
																			class="sign_date_wrap"><span
																				class="sign_date " id="date_15162"></span></span></span></span> <span
																	class="sign_member_wrap" id="activity_15162"><span
																		class="sign_member"><span
																			class="sign_rank_wrap"><span class="sign_rank">부장</span></span><span
																			class="sign_wrap"><span class="sign_name">김지연</span></span><span
																			class="sign_date_wrap"><span
																				class="sign_date " id="date_15162"></span></span></span></span> <span
																	class="sign_member_wrap" id="activity_15162"><span
																		class="sign_member"><span
																			class="sign_rank_wrap"><span class="sign_rank">부장</span></span><span
																			class="sign_wrap"><span class="sign_name">김지연</span></span><span
																			class="sign_date_wrap"><span
																				class="sign_date " id="date_15162"></span></span></span></span> <!--  --></span>

															</div>

															<div class="sign_condition">
																<span class="sign_type1_inline"><span
																	class="sign_tit_wrap"><span class="sign_tit"><strong>신청</strong></span></span>
																	<!--  --> <span class="sign_member_wrap"
																	id="activity_15162"><span class="sign_member"><span
																			class="sign_rank_wrap"><span class="sign_rank">부장</span></span><span
																			class="sign_wrap"><span class="sign_name">김지연</span></span><span
																			class="sign_date_wrap"><span
																				class="sign_date " id="date_15162"></span></span></span></span></span>
															</div>

														</td>
													</tr>
												</tbody>
											</table>

											<table
												style="border: 0px solid rgb(0, 0, 0); border-image: none; width: 800px; font-family: malgun gothic, dotum, arial, tahoma; margin-top: 10px; border-collapse: collapse;">
												<!-- Draft -->
												<colgroup>
													<col width="120">
													<col width="230">
													<col width="120">
													<col width="330">
												</colgroup>

												<tbody>
													<tr>
														<td
															style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; height: 25px; text-align: center; color: rgb(0, 0, 0); font-size: 14px; font-weight: bold; vertical-align: middle;">

															시행일자</td>
														<td
															style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; border-image: none; text-align: left; color: rgb(0, 0, 0); font-size: 14px; font-weight: normal; vertical-align: middle;">
															<input type="text" readonly=""
															class="ipt_editor ipt_editor_date hasDatepicker"
															id="jpWorkingDate" name="jpWorkingDate" value=""
															style="width: 150px;">
														</td>
														<td
															style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; text-align: center; color: rgb(0, 0, 0); font-size: 14px; font-weight: bold; vertical-align: middle;">

															협조부서</td>
														<td
															style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; border-image: none; text-align: left; color: rgb(0, 0, 0); font-size: 14px; font-weight: normal; vertical-align: middle;"><input
															type="text" class="ipt_editor" name="jpCooperation"
															id="jpCooperation" value=""></td>
													</tr>

													<tr>
														<td
															style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; height: 25px; text-align: center; color: rgb(0, 0, 0); font-size: 14px; font-weight: bold; vertical-align: middle;">

															제목</td>
														<td
															style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; border-image: none; text-align: left; color: rgb(0, 0, 0); font-size: 14px; font-weight: normal; vertical-align: middle;"
															colspan="3"><input type="text" class="ipt_editor"
															name="aTitle" id="aTitle" value=""></td>
													</tr>
													<tr>
														<td
															style="background: rgb(255, 255, 255); border-width: medium 1px 1px; border-style: none solid solid; border-color: currentColor black black; padding: 5px; height: 350px; text-align: left; color: rgb(0, 0, 0); font-size: 14px; font-weight: normal; vertical-align: top;"
															colspan="4" class=""><textarea
																data-dsl="{{editor:appContent}}" name="jpContent"
																id="jpContent" style="width: 100%; min-width: 200px;"
																value="" class="go-editor"></textarea></td>
													</tr>
												</tbody>
											</table>
										</span>

	<script>
	$(document)
	.ready(
		function() {
			var fileTarget = $('.form-group .upload-hidden');
			var filenames ="";
			fileTarget.on('change',function() { // 값이 변경되면 
				if (window.FileReader) { // modern browser 
				
				for(var i=0;i<$(this)[0].files.length;i++){
					var file = $(this)[0].files[i];
					filenames += $(this)[0].files[i].name+"&nbsp<i class='fa fa-remove'></i><br>";
					console.log(filenames);
				}
				} else { // old IE
					var filename = $(this).val().split('/').pop().split('\\').pop(); // 파일명만 추출
				}
				// 추출한 파일명 삽입 
				$('.file-list').html(filenames);
			});
		});
	</script>

										<div class="form-group" style="height: 100px;">
											<div style="float: left; height: 100px; width: 130px;">
												<div class="btn btn-default btn-file">
													<i class="fa fa-paperclip"></i> Attachment <input
														multiple="multiple" type="file" name="attachment" class="upload-hidden">
												</div>
												<p class="help-block">Max. 32MB</p>
											</div>
											<div class="file-list"></div>
										</div>
										<button onclick="insertApproval();">작성</button>
									</form>
								</div>


							</div>
						</section>
					</div>
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