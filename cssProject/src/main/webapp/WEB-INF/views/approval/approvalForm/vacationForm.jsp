<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
					Page Header <small>Optional description</small>
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

				<section class="content_wrapper">
					<!--전자결제 상세-->
					<div class="report_type approval_type form_back">
						<!--전자결재 내용-->
						<div class="approval_import ie9-scroll-fix">
							<!-- 문서 내용 표시 테스트 -->
							<form id="document_content" class="form_doc_editor editor_view"
								onsubmit="return false;">
								<span
									style="font-family: &amp; amp; amp; amp; quot; 맑은 고딕&amp;amp; amp; amp; quot;; font-size: 10pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span
									style="font-family: &amp; amp; amp; amp; quot; 맑은 고딕&amp;amp; amp; amp; quot;; font-size: 10pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span
										style="line-height: normal; font-family: 맑은 고딕; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;"></span></span>
									<table class="__se_tbl"
										style="background: white; border: 0px solid black; border-image: none; width: 800px; color: black; font-family: malgun gothic, dotum, arial, tahoma; font-size: 12px; border-collapse: collapse !important;">
										<!-- Header -->

										<tbody>
											<tr>
												<td
													style="padding: 3px !important; border: 0px solid black; border-image: none; width: 300px; height: 90px !important; text-align: center; font-size: 22px; font-weight: bold; vertical-align: middle;"
													colspan="2" class="">연차신청서</td>
											</tr>
											<tr>
												<td
													style="padding: 0px !important; border: 0px currentColor; border-image: none; width: 300px;"
													class=""><table class="__se_tbl"
														style="background: white; margin: 0px; border: 1px solid black; border-image: none; color: black; font-family: malgun gothic, dotum, arial, tahoma; font-size: 12px; border-collapse: collapse !important;">
														<!-- User -->

														<tbody>
															<tr>
																<td
																	style="background: rgb(221, 221, 221); padding: 3px !important; border: 1px solid black; border-image: none; width: 100px; height: 22px; text-align: center; font-weight: bold; vertical-align: middle;">

																	기안자</td>
																<td
																	style="padding: 3px !important; border: 1px solid black; border-image: none; width: 200px; height: 22px; text-align: left; vertical-align: middle;"><input
																	type="text" readonly=""
																	style="vertical-align: middle; width: 100%; border: 0px; box-shadow: inset 0px 0px 0px rgba(150, 150, 150, 0.2)"
																	data-dsl="{{label:draftUser}}" name="draftUser"
																	id="draftUser" value="김지연" data-id="draftUser"
																	data-name="draftUser" data-require="false"
																	data-maxlength="" data-width="" data-defaultstr=""
																	data-editable="false" data-value="김지연" placeholder="">
																</td>
															</tr>
															<tr>
																<td
																	style="background: rgb(221, 221, 221); padding: 3px !important; border: 1px solid black; border-image: none; width: 100px; height: 22px; text-align: center; font-weight: bold; vertical-align: middle;">

																	기안부서</td>
																<td
																	style="padding: 3px !important; border: 1px solid black; border-image: none; width: 200px; height: 22px; text-align: left; vertical-align: middle;"><input
																	type="text" readonly=""
																	style="vertical-align: middle; width: 100%; border: 0px; box-shadow: inset 0px 0px 0px rgba(150, 150, 150, 0.2)"
																	data-dsl="{{label:draftDept}}" name="draftDept"
																	id="draftDept" value="영업본부" data-id="draftDept"
																	data-name="draftDept" data-require="false"
																	data-maxlength="" data-width="" data-defaultstr=""
																	data-editable="false" data-value="영업본부" placeholder="">
																</td>
															</tr>
															<tr>
																<td
																	style="background: rgb(221, 221, 221); padding: 3px !important; border: 1px solid black; border-image: none; width: 100px; height: 22px; text-align: center; font-weight: bold; vertical-align: middle;">

																	기안일</td>
																<td
																	style="padding: 3px !important; border: 1px solid black; border-image: none; width: 200px; height: 22px; text-align: left; vertical-align: middle;"><input
																	type="text" readonly=""
																	style="vertical-align: middle; width: 100%; border: 0px; box-shadow: inset 0px 0px 0px rgba(150, 150, 150, 0.2)"
																	data-dsl="{{label:draftDate}}" name="draftDate"
																	id="draftDate" value="" data-id="draftDate"
																	data-name="draftDate" data-require="false"
																	data-maxlength="" data-width="" data-defaultstr=""
																	data-editable="false" data-value="2018-08-06(월)"
																	placeholder=""></td>
															</tr>
															<tr>
																<td
																	style="background: rgb(221, 221, 221); padding: 3px !important; border: 1px solid black; border-image: none; width: 100px; height: 22px; text-align: center; font-weight: bold; vertical-align: middle;">

																	문서번호</td>
																<td
																	style="padding: 3px !important; border: 1px solid black; border-image: none; width: 200px; height: 22px; text-align: left; vertical-align: middle;"><input
																	type="text" readonly=""
																	style="vertical-align: middle; width: 100%; border: 0px; box-shadow: inset 0px 0px 0px rgba(150, 150, 150, 0.2)"
																	data-dsl="{{label:docNo}}" name="docNo" id="docNo"
																	value="" data-id="docNo" data-name="docNo"
																	data-require="false" data-maxlength="" data-width=""
																	data-defaultstr="" data-editable="false" data-value=""
																	placeholder=""></td>
															</tr>
														</tbody>
													</table></td>
												<td>
												
												<div class="sign_condition">
																<span class="sign_type1_inline" data-group-seq="0"
																	data-group-name="승인" data-group-max-count="1"
																	data-group-type="type1" data-is-reception=""><span
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
																<span class="sign_type1_inline" data-group-seq="0"
																	data-group-name="신청" data-group-max-count="1"
																	data-group-type="type1" data-is-reception=""><span
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
									</table> <br>

									<table class="__se_tbl"
										style="background: white; border: 1px solid black; border-image: none; width: 800px; color: black; font-family: malgun gothic, dotum, arial, tahoma; font-size: 12px; margin-top: 0px; border-collapse: collapse !important;">
										<tbody>
											<tr>
												<td
													style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; height: 25px; text-align: center; color: rgb(0, 0, 0); font-size: 14px; font-weight: bold; vertical-align: middle;">

													휴가&nbsp;종류</td>
												<td
													style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; border-image: none; height: 25px; text-align: left; color: rgb(0, 0, 0); font-size: 14px; font-weight: normal; vertical-align: middle;"><span
													id="vacationTypeArea"
													style="line-height: normal; font-family: malgun gothic, dotum, arial, tahoma; font-size: 11pt; margin-top: 0px; margin-bottom: 0px;"
													name="select"> <!-- SELECT  --> <select
														class="editor_slt" data-dsl="{{cSel_연차_조퇴_지각_경조_공가_질병휴가}}"
														name="select_type">
															<option value="연차">연차</option>
															<option value="조퇴">조퇴</option>
															<option value="지각">지각</option>
															<option value="경조">경조</option>
															<option value="공가">공가</option>
															<option value="질병휴가">질병휴가</option>
													</select>
												</span></td>
											</tr>
											<tr>
												<td
													style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; height: 25px; text-align: center; color: rgb(0, 0, 0); font-size: 14px; font-weight: bold; vertical-align: middle;">

													기간&nbsp;및&nbsp;일시</td>
												<td
													style="background: rgb(255, 255, 255); padding: 3px; border: 1px solid black; border-image: none; width: 700px; height: 22px; text-align: left; color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle;"><input
													type="text" readonly=""
													class="ipt_editor ipt_editor_date hasDatepicker"
													data-dsl="{{calendar:startDate}}" id="startDate"
													data-id="startDate" data-name="startDate"
													data-require="false" data-maxlength="" data-width=""
													data-defaultstr="" data-editable="false" name="startDate"
													data-value="" placeholder="" value="">&nbsp;~&nbsp;
													<input type="text" readonly=""
													class="ipt_editor ipt_editor_date hasDatepicker"
													data-dsl="{{calendar:endDate}}" id="endDate"
													data-id="endDate" data-name="endDate" data-require="false"
													data-maxlength="" data-width="" data-defaultstr=""
													data-editable="false" name="endDate" data-value=""
													placeholder="" value=""> <span id="usingPointArea"
													style="line-height: normal; font-family: malgun gothic, dotum, arial, tahoma; font-size: 9pt; margin-top: 0px; margin-bottom: 0px;"><b>사용일수
															: </b> <input type="text" class="ipt_editor ipt_editor_num"
														data-dsl="{{number:usingPoint}}" name="usingPoint"
														id="usingPoint" data-require="false" data-editable="true"
														value="1" readonly="readonly"> <b
														id="usingPoint_Comment"
														style="font-weight: bold; color: red"></b> </span></td>
											</tr>
											<tr>
												<td
													style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; height: 25px; text-align: center; color: rgb(0, 0, 0); font-size: 14px; font-weight: bold; vertical-align: middle;">

													반차&nbsp;여부</td>
												<td
													style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; border-image: none; height: 25px; text-align: left; color: rgb(0, 0, 0); font-size: 14px; font-weight: normal; vertical-align: middle;"><span
													id="vacationHalfArea"
													style="line-height: normal; font-family: malgun gothic, dotum, arial, tahoma; font-size: 11pt; margin-top: 0px; margin-bottom: 0px;"><span
														class="halfArea"> <input type="checkbox"
															class="editor_opt" data-dsl="{{check_시작일_종료일}}"
															value="시작일" data-autotype="false" data-require="false"
															name="check_startHalf" id="startHalf" data-label="시작일">
															<label class="editor_label" data-type="removeSpan">시작일</label>
															( <input type="radio" class="editor_opt"
															data-dsl="{{radio_오전_오후}}" name="radio_startHalf"
															id="startAMHalf" value="오전" data-autotype="false"
															data-require="false" data-label="오전" disabled="disabled">
															<label class="editor_label" data-type="removeSpan">오전</label>

															<input type="radio" class="editor_opt"
															data-dsl="{{radio_오전_오후}}" name="radio_startHalf"
															id="startPMHalf" value="오후" data-autotype="false"
															data-require="false" data-label="오후"> <label
															class="editor_label" data-type="removeSpan">오후</label> )
													</span> <span class="halfArea"> <input type="checkbox"
															class="editor_opt" data-dsl="{{check_시작일_종료일}}"
															value="종료일" data-autotype="false" data-require="false"
															name="check_startHalf" id="endHalf" data-label="종료일">
															<label class="editor_label" data-type="removeSpan">종료일</label>
															( <input type="radio" class="editor_opt"
															data-dsl="{{radio_오전_오후}}" name="radio_endHalf"
															id="endAMHalf" value="오전" data-autotype="false"
															data-require="false" data-label="오전" disabled="disabled">
															<label class="editor_label" data-type="removeSpan">오전</label>

															<input type="radio" class="editor_opt"
															data-dsl="{{radio_오전_오후}}" name="radio_endHalf"
															id="endPMHalf" value="오후" data-autotype="false"
															data-require="false" data-label="오후" disabled="disabled">
															<label class="editor_label" data-type="removeSpan">오후</label>
															)
													</span> </span></td>
											</tr>
											<tr>
												<td
													style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; height: 25px; text-align: center; color: rgb(0, 0, 0); font-size: 14px; font-weight: bold; vertical-align: middle;">

													연차&nbsp;일수</td>
												<td
													style="background: rgb(255, 255, 255); padding: 3px; border: 1px solid black; border-image: none; width: 700px; height: 22px; text-align: left; color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle;"><span
													id="restPointArea"
													style="line-height: normal; font-family: malgun gothic, dotum, arial, tahoma; font-size: 9pt; margin-top: 0px; margin-bottom: 0px;"><b>잔여연차
															: </b> <input type="text" class="ipt_editor ipt_editor_num"
														data-dsl="{{number:restPoint}}" name="restPoint"
														id="restPoint" data-require="false" data-editable="true"
														value="15" readonly="readonly"> <b
														id="restPoint_Comment"
														style="font-weight: bold; color: red"></b> </span><span
													id="applyPointArea"
													style="line-height: normal; font-family: malgun gothic, dotum, arial, tahoma; font-size: 9pt; margin-top: 0px; margin-bottom: 0px;"><b>신청연차
															: </b> <input type="text" class="ipt_editor ipt_editor_num"
														data-dsl="{{number:applyPoint}}" name="applyPoint"
														id="applyPoint" data-require="false" data-editable="true"
														value="3" readonly="readonly"> <b
														id="applyPoint_Comment"
														style="font-weight: bold; color: red"></b> </span></td>
											</tr>
											<tr>
												<td
													style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; height: 80px; text-align: center; color: rgb(0, 0, 0); font-size: 14px; font-weight: bold; vertical-align: middle;"><b
													style="color: rgb(255, 0, 0);">*</b>&nbsp;휴가&nbsp;사유</td>
												<td
													style="background: rgb(255, 255, 255); padding: 3px; border: 1px solid black; border-image: none; width: 700px; height: 100px; text-align: left; color: rgb(0, 0, 0); font-size: 12px; vertical-align: top;"><textarea
														class="txta_editor" data-dsl="{{textarea:description}}"
														name="description" id="description" value=""
														data-id="description" data-name="description"
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" data-value=""
														placeholder=""></textarea></td>
											</tr>
											<tr>
												<td
													style="background: rgb(221, 221, 221); padding: 20px !important; border: 1px solid black; border-image: none; width: 800px; height: 22px; text-align: left; vertical-align: middle;"
													colspan="2">1. 연차의 사용은 근로기준법에 따라 전년도에 발생한 개인별 잔여 연차에
													한하여 사용함을 원칙으로 한다. 단, 최초 입사시에는 근로 기준법에 따라 발생 예정된 연차를 차용하여 월
													1회 사용 할 수 있다.<br> 2. 경조사 휴가는 행사일을 증명할 수 있는 가족 관계 증명서
													또는 등본, 청첩장 등 제출<br> 3. 공가(예비군/민방위)는 사전에 통지서를, 사후에 참석증을
													반드시 제출
												</td>
											</tr>
										</tbody>
									</table></span>
							</form>
						</div>
						<div id="attachView" style="display: none;">
							<div class="add_file" style="display:">
								<div class="add_file_header">
									<span class="subject"> <span class="ic ic_file_s"></span>
										<strong>첨부파일</strong> <span class="num">0</span>개 <span
										class="size">(0.0Byte)</span>
									</span>
								</div>
								<ul class="file_wrap" id="file_wrap"></ul>
								<ul class="img_wrap" id="img_wrap"
									style="margin-bottom: 10px; margin-left: 10px; margin-right: 10px; margin-top: 0px;"></ul>
							</div>
						</div>
						
					</div>
				</section>


			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
	</div>



	<c:import url="/WEB-INF/views/include/footer.jsp" />
	<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. -->
</body>
</html>