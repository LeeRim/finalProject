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

				<!-- 3단 레이아웃 멀티클래스 -->
				<section class="content_wrapper">
					<!--전자결제 상세-->
					<div class="report_type approval_type orderForm_back">
						<!--전자결재 내용-->
						<div class="approval_import ie9-scroll-fix">
							<!-- 문서 내용 표시 테스트 -->
							<form id="document_content" class="form_doc_editor editor_view"
								onsubmit="return false;">
								<span><span
									style="font-family: &amp; quot; 맑은 고딕&amp;quot;; font-size: 10pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
										<!-- default copy start -->
										<span
										style="font-family: &amp; quot; 맑은 고딕&amp;quot;; font-size: 10pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">

											<table
												style="border: 0px solid rgb(0, 0, 0); width: 800px; font-family: malgun gothic, dotum, arial, tahoma; margin-top: 1px; border-collapse: collapse;">
												<!-- Header -->
												<colgroup>
													<col width="310">
													<col width="490">
												</colgroup>

												<tbody>
													<tr>
														<td
															style="background: white; padding: 0px !important; border: 0px currentColor; height: 70px; text-align: center; color: black; font-size: 36px; font-weight: bold; vertical-align: top;"
															colspan="2" class="">구매 품의서</td>
													</tr>
													<tr>
														<td
															style="background: white; padding: 0px !important; border: currentColor; text-align: left; color: black; font-size: 12px; font-weight: normal; vertical-align: top;"><table
																style="border: 1px solid rgb(0, 0, 0); font-family: malgun gothic, dotum, arial, tahoma; margin-top: 1px; border-collapse: collapse;">
																<!-- User -->
																<colgroup>
																	<col width="90">
																	<col width="120">
																</colgroup>

																<tbody>
																	<tr>
																		<td
																			style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; height: 18px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: bold; vertical-align: middle;">

																			문서번호</td>
																		<td
																			style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; text-align: left; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle;"><input
																			type="text" readonly=""
																			style="vertical-align: middle; width: 100%; border: 0px; box-shadow: inset 0px 0px 0px rgba(150, 150, 150, 0.2)"
																			data-dsl="{{label:docNo}}" name="docNo" id="docNo"
																			value="" data-id="docNo" data-name="docNo"
																			data-require="false" data-maxlength="" data-width=""
																			data-defaultstr="" data-editable="false"
																			data-value="" placeholder=""><br></td>
																	</tr>
																	<tr style="height: 32px;">
																		<td
																			style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; height: 18px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: bold; vertical-align: middle;">

																			부&nbsp; &nbsp; &nbsp;서</td>
																		<td
																			style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; height: 18px; text-align: left; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle;"><input
																			type="text" readonly=""
																			style="vertical-align: middle; width: 100%; border: 0px; box-shadow: inset 0px 0px 0px rgba(150, 150, 150, 0.2)"
																			data-dsl="{{label:draftDept}}" name="draftDept"
																			id="draftDept" value="영업본부" data-id="draftDept"
																			data-name="draftDept" data-require="false"
																			data-maxlength="" data-width="" data-defaultstr=""
																			data-editable="false" data-value="영업본부"
																			placeholder=""><br></td>
																	</tr>
																	<tr>
																		<td
																			style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; height: 18px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: bold; vertical-align: middle;">

																			기 안 일</td>
																		<td
																			style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; text-align: left; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle;"><input
																			type="text" readonly=""
																			style="vertical-align: middle; width: 100%; border: 0px; box-shadow: inset 0px 0px 0px rgba(150, 150, 150, 0.2)"
																			data-dsl="{{label:draftDate}}" name="draftDate"
																			id="draftDate" value="" data-id="draftDate"
																			data-name="draftDate" data-require="false"
																			data-maxlength="" data-width="" data-defaultstr=""
																			data-editable="false" data-value="2018-08-07(화)"
																			placeholder=""><br></td>
																	</tr>
																	<tr>
																		<td
																			style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; height: 18px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: bold; vertical-align: middle;">

																			기 안 자</td>
																		<td
																			style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; text-align: left; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle;"><input
																			type="text" readonly=""
																			style="vertical-align: middle; width: 100%; border: 0px; box-shadow: inset 0px 0px 0px rgba(150, 150, 150, 0.2)"
																			data-dsl="{{label:draftUser}}" name="draftUser"
																			id="draftUser" value="김지연" data-id="draftUser"
																			data-name="draftUser" data-require="false"
																			data-maxlength="" data-width="" data-defaultstr=""
																			data-editable="false" data-value="김지연" placeholder=""><br>
																		</td>
																	</tr>
																	<tr>
																		<td
																			style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; height: 18px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: bold; vertical-align: middle;">

																			공개여부</td>
																		<td
																			style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; text-align: left; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle;"><input
																			type="text" readonly=""
																			style="vertical-align: middle; width: 100%; border: 0px; box-shadow: inset 0px 0px 0px rgba(150, 150, 150, 0.2)"
																			data-dsl="{{label:openOption}}" name="openOption"
																			id="openOption" value="비공개" data-id="openOption"
																			data-name="openOption" data-require="false"
																			data-maxlength="" data-width="" data-defaultstr=""
																			data-editable="false" data-value="비공개" placeholder=""><br>
																		</td>
																	</tr>
																	<tr>
																		<td
																			style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; height: 18px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: bold; vertical-align: middle;">

																			보존기간</td>
																		<td
																			style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; text-align: left; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle;"><input
																			type="text" readonly=""
																			style="vertical-align: middle; width: 100%; border: 0px; box-shadow: inset 0px 0px 0px rgba(150, 150, 150, 0.2)"
																			data-dsl="{{label:preserveDuration}}"
																			name="preserveDuration" id="preserveDuration"
																			value="5년" data-id="preserveDuration"
																			data-name="preserveDuration" data-require="false"
																			data-maxlength="" data-width="" data-defaultstr=""
																			data-editable="false" data-value="5년" placeholder=""><br>
																		</td>
																	</tr>
																</tbody>
															</table></td>
														<td
															style="text-align: right; padding-bottom: 0px !important; padding-left: 0px !important; padding-right: 0px !important; background: white; color: black; font-size: 12px; vertical-align: top; font-weight: normal; padding-top: 0px !important"
															class=""><br>
														<span class="sign_type1_inline" data-group-seq="0"
															data-group-name="결재선" data-group-max-count="5"
															data-group-type="type1" data-is-reception=""
															style="font-family: &amp; quot; malgun gothic&amp;quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span
																class="sign_tit_wrap"><span class="sign_tit"><strong>결재선</strong></span></span><span
																class="sign_member_wrap" id="activity_15313"><span
																	class="sign_member"><span class="sign_rank_wrap"><span
																			class="sign_rank">부장</span></span><span class="sign_wrap"><span
																			class="sign_name">김지연</span></span><span
																		class="sign_date_wrap"><span class="sign_date "
																			id="date_15313"></span></span></span></span></span><br></td>
													</tr>
												</tbody>
											</table>
									</span>

										<table
											style="border-bottom: black 1px solid; border-left: black 2px solid; margin-top: 10px; width: 800px; border-collapse: collapse; font-family: malgun gothic, dotum, arial, tahoma; border-top: black 2px solid; border-right: black 2px solid">
											<!-- user -->

											<tbody>
												<tr>
													<td
														style="border-bottom: black 1px solid; text-align: center; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(221, 221, 221); height: 18px; color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: bold; border-right: black 1px solid; padding-top: 5px">

														제&nbsp;&nbsp;목</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"
														colspan="6"><input type="text" class="ipt_editor"
														data-dsl="{{text:subject}}" name="subject" id="subject"
														value="" data-id="subject" data-name="subject"
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" data-value=""
														placeholder=""><br></td>
												</tr>
											</tbody>
											<colgroup>
												<col width="100">
												<col width="120">
												<col width="85">
												<col width="235">
												<col width="30">
												<col width="50">
												<col width="180">
											</colgroup>

											<tbody>
												<tr>
													<td
														style="border-bottom: black 1px solid; text-align: center; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(221, 221, 221); height: 18px; color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: bold; border-right: black 1px solid; padding-top: 5px"
														rowspan="2">구매요청부서</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"
														rowspan="2"><input type="text" class="ipt_editor"
														data-dsl="{{text}}" name="editorForm_7" id="editorForm_7"
														value="" data-id="" data-name="" data-require="false"
														data-maxlength="" data-width="" data-defaultstr=""
														data-editable="false" data-value="" placeholder=""><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: center; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(221, 221, 221); height: 18px; color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: bold; border-right: black 1px solid; padding-top: 5px"
														rowspan="2">납품요청기한</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"
														rowspan="2"><input type="text" readonly=""
														class="ipt_editor ipt_editor_date hasDatepicker"
														data-dsl="{{calendar}}" id="editorForm_8" data-id=""
														data-name="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														name="editorForm_8" data-value="" placeholder="" value=""><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: center; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(221, 221, 221); height: 18px; color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; font-weight: bold; border-right: black 1px solid; padding-top: 5px"
														rowspan="2" class="">발<br>주
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: center; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(221, 221, 221); height: 18px; color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; font-weight: bold; padding-top: 5px"
														class="">번호</td>
													<td
														style="text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; font-weight: normal; padding-top: 5px"
														class=""><input type="text" class="ipt_editor"
														data-dsl="{{text}}" name="editorForm_9" id="editorForm_9"
														value="" data-id="" data-name="" data-require="false"
														data-maxlength="" data-width="" data-defaultstr=""
														data-editable="false" data-value="" placeholder=""><br>
													</td>
												</tr>
												<tr>
													<td
														style="border-bottom: black 1px solid; text-align: center; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(221, 221, 221); height: 18px; color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; font-weight: bold; padding-top: 5px"
														class="">일자</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" readonly=""
														class="ipt_editor ipt_editor_date hasDatepicker"
														data-dsl="{{calendar}}" id="editorForm_10" data-id=""
														data-name="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														name="editorForm_10" data-value="" placeholder="" value=""><br>
													</td>
												</tr>
												<tr>
													<td
														style="border-bottom: black 1px solid; text-align: center; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(221, 221, 221); height: 18px; color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: bold; border-right: black 1px solid; padding-top: 5px">

														대금지불방법</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="editorForm_11" id="editorForm_11" value=""
														data-id="" data-name="" data-require="false"
														data-maxlength="" data-width="" data-defaultstr=""
														data-editable="false" data-value="" placeholder=""><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: center; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(221, 221, 221); height: 18px; color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: bold; border-right: black 1px solid; padding-top: 5px">

														납품기간</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><span
														data-type="period" data-value=""><input type="text"
															readonly=""
															class="ipt_editor ipt_editor_date hasDatepicker"
															data-dsl="{{calendar}}" id="editorForm_12"
															name="editorForm_12"> ~ <input type="text"
															readonly=""
															class="ipt_editor ipt_editor_date hasDatepicker"
															data-dsl="{{calendar}}" id="editorForm_13"
															name="editorForm_13"></span><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: center; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(221, 221, 221); height: 18px; color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: bold; border-right: black 1px solid; padding-top: 5px"
														colspan="2">완납일자</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" readonly=""
														class="ipt_editor ipt_editor_date hasDatepicker"
														data-dsl="{{calendar}}" id="editorForm_14" data-id=""
														data-name="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														name="editorForm_14" data-value="" placeholder="" value=""><br>
													</td>
												</tr>
												<tr style="height: 32px">
													<td
														style="border-bottom: 1px solid; text-align: center; border-left: 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(221, 221, 221); height: 18px; color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: 1px solid; font-weight: bold; border-right: 1px solid; padding-top: 5px">

														사용목적</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"
														colspan="6"><input type="text" class="ipt_editor"
														data-dsl="{{text}}" name="editorForm_15"
														id="editorForm_15" value="" data-id="" data-name=""
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" data-value=""
														placeholder=""><br></td>
												</tr>
											</tbody>
										</table>


										<table
											style="border-bottom: 2px solid black; border-left: 2px solid black; width: 800px; border-collapse: collapse; font-family: &amp; quot; malgun gothic&amp;quot; , dotum , arial, tahoma; border-right: 2px solid black; height: 453.636px;">
											<colgroup>
												<col width="40">
												<col width="300">
												<col width="150">
												<col width="65">
												<col width="65">
												<col width="65">
												<col width="100">
												<col width="80">
												<col>
											</colgroup>

											<tbody>
												<tr>
													<td
														style="border-bottom: black 1px solid; text-align: center; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(221, 221, 221); height: 18px; color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: bold; border-right: black 1px solid; padding-top: 5px">

														품번</td>
													<td
														style="border-bottom: black 1px solid; text-align: center; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(221, 221, 221); height: 18px; color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: bold; border-right: black 1px solid; padding-top: 5px">

														품&nbsp;&nbsp;&nbsp;&nbsp;명</td>
													<td
														style="border-bottom: black 1px solid; text-align: center; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(221, 221, 221); height: 18px; color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: bold; border-right: black 1px solid; padding-top: 5px">

														규&nbsp;&nbsp;&nbsp;&nbsp;격</td>
													<td
														style="border-bottom: black 1px solid; text-align: center; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(221, 221, 221); height: 18px; color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: bold; border-right: black 1px solid; padding-top: 5px">

														단위</td>
													<td
														style="border-bottom: black 1px solid; text-align: center; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(221, 221, 221); height: 18px; color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: bold; border-right: black 1px solid; padding-top: 5px">

														수량</td>
													<td
														style="border-bottom: black 1px solid; text-align: center; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(221, 221, 221); height: 18px; color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: bold; border-right: black 1px solid; padding-top: 5px">

														단가</td>
													<td
														style="border-bottom: black 1px solid; text-align: center; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(221, 221, 221); height: 18px; color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: bold; border-right: black 1px solid; padding-top: 5px">

														금액</td>
													<td
														style="border-bottom: black 1px solid; text-align: center; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(221, 221, 221); height: 18px; color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: bold; border-right: black 1px solid; padding-top: 5px">

														비고</td>
												</tr>
												<tr>
													<td
														style="border-bottom: black 1px solid; text-align: center; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px">

														1</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="editorForm_16" id="editorForm_16" value=""
														data-id="" data-name="" data-require="false"
														data-maxlength="" data-width="" data-defaultstr=""
														data-editable="false" data-value="" placeholder=""><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="editorForm_17" id="editorForm_17" value=""
														data-id="" data-name="" data-require="false"
														data-maxlength="" data-width="" data-defaultstr=""
														data-editable="false" data-value="" placeholder=""><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="editorForm_18" id="editorForm_18" value=""
														data-id="" data-name="" data-require="false"
														data-maxlength="" data-width="" data-defaultstr=""
														data-editable="false" data-value="" placeholder=""><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_num"
														data-dsl="{{number}}" name="editorForm_19"
														id="editorForm_19" value="" data-id="" data-name=""
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" data-value=""
														placeholder=""><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_currency"
														data-dsl="{{currency_0}}" name="editorForm_20"
														id="editorForm_20" value="" data-autotype="false"
														data-value="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														placeholder="" style="text-align: right;"><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_currency"
														data-dsl="{{currency_0}}" name="editorForm_21"
														id="editorForm_21" value="" data-autotype="false"
														data-value="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														placeholder="" style="text-align: right;"><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="editorForm_22" id="editorForm_22" value=""
														data-id="" data-name="" data-require="false"
														data-maxlength="" data-width="" data-defaultstr=""
														data-editable="false" data-value="" placeholder=""><br>
													</td>
												</tr>
												<tr>
													<td
														style="border-width: 1px; border-style: solid; border-color: black; text-align: center; padding: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; font-weight: normal; height: 32.9091px;">

														2</td>
													<td
														style="border-width: 1px; border-style: solid; border-color: black; text-align: left; padding: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; font-weight: normal; height: 32.9091px;"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="editorForm_23" id="editorForm_23" value=""
														data-id="" data-name="" data-require="false"
														data-maxlength="" data-width="" data-defaultstr=""
														data-editable="false" data-value="" placeholder=""><br>
													</td>
													<td
														style="border-width: 1px; border-style: solid; border-color: black; text-align: left; padding: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; font-weight: normal; height: 32.9091px;"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="editorForm_24" id="editorForm_24" value=""
														data-id="" data-name="" data-require="false"
														data-maxlength="" data-width="" data-defaultstr=""
														data-editable="false" data-value="" placeholder=""><br>
													</td>
													<td
														style="border-width: 1px; border-style: solid; border-color: black; text-align: left; padding: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; font-weight: normal; height: 32.9091px;"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="editorForm_25" id="editorForm_25" value=""
														data-id="" data-name="" data-require="false"
														data-maxlength="" data-width="" data-defaultstr=""
														data-editable="false" data-value="" placeholder=""><br>
													</td>
													<td
														style="border-width: 1px; border-style: solid; border-color: black; text-align: left; padding: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; font-weight: normal; height: 32.9091px;"><input
														type="text" class="ipt_editor ipt_editor_num"
														data-dsl="{{number}}" name="editorForm_26"
														id="editorForm_26" value="" data-id="" data-name=""
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" data-value=""
														placeholder=""><br></td>
													<td
														style="border-width: 1px; border-style: solid; border-color: black; text-align: left; padding: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; font-weight: normal; height: 32.9091px;"><input
														type="text" class="ipt_editor ipt_editor_currency"
														data-dsl="{{currency_0}}" name="editorForm_27"
														id="editorForm_27" value="" data-autotype="false"
														data-value="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														placeholder="" style="text-align: right;"><br>
													</td>
													<td
														style="border-width: 1px; border-style: solid; border-color: black; text-align: left; padding: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; font-weight: normal; height: 32.9091px;"><input
														type="text" class="ipt_editor ipt_editor_currency"
														data-dsl="{{currency_0}}" name="editorForm_28"
														id="editorForm_28" value="" data-autotype="false"
														data-value="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														placeholder="" style="text-align: right;"><br>
													</td>
													<td
														style="border-width: 1px; border-style: solid; border-color: black; text-align: left; padding: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; font-weight: normal; height: 32.9091px;"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="editorForm_29" id="editorForm_29" value=""
														data-id="" data-name="" data-require="false"
														data-maxlength="" data-width="" data-defaultstr=""
														data-editable="false" data-value="" placeholder=""><br>
													</td>
												</tr>
												<tr>
													<td
														style="border-bottom: black 1px solid; text-align: center; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px">

														3</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="editorForm_30" id="editorForm_30" value=""
														data-id="" data-name="" data-require="false"
														data-maxlength="" data-width="" data-defaultstr=""
														data-editable="false" data-value="" placeholder=""><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="editorForm_31" id="editorForm_31" value=""
														data-id="" data-name="" data-require="false"
														data-maxlength="" data-width="" data-defaultstr=""
														data-editable="false" data-value="" placeholder=""><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="editorForm_32" id="editorForm_32" value=""
														data-id="" data-name="" data-require="false"
														data-maxlength="" data-width="" data-defaultstr=""
														data-editable="false" data-value="" placeholder=""><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_num"
														data-dsl="{{number}}" name="editorForm_33"
														id="editorForm_33" value="" data-id="" data-name=""
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" data-value=""
														placeholder=""><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_currency"
														data-dsl="{{currency_0}}" name="editorForm_34"
														id="editorForm_34" value="" data-autotype="false"
														data-value="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														placeholder="" style="text-align: right;"><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_currency"
														data-dsl="{{currency_0}}" name="editorForm_35"
														id="editorForm_35" value="" data-autotype="false"
														data-value="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														placeholder="" style="text-align: right;"><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="editorForm_36" id="editorForm_36" value=""
														data-id="" data-name="" data-require="false"
														data-maxlength="" data-width="" data-defaultstr=""
														data-editable="false" data-value="" placeholder=""><br>
													</td>
												</tr>
												<tr>
													<td
														style="border-bottom: black 1px solid; text-align: center; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px">

														4</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="editorForm_37" id="editorForm_37" value=""
														data-id="" data-name="" data-require="false"
														data-maxlength="" data-width="" data-defaultstr=""
														data-editable="false" data-value="" placeholder=""><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="editorForm_38" id="editorForm_38" value=""
														data-id="" data-name="" data-require="false"
														data-maxlength="" data-width="" data-defaultstr=""
														data-editable="false" data-value="" placeholder=""><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="editorForm_39" id="editorForm_39" value=""
														data-id="" data-name="" data-require="false"
														data-maxlength="" data-width="" data-defaultstr=""
														data-editable="false" data-value="" placeholder=""><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_num"
														data-dsl="{{number}}" name="editorForm_40"
														id="editorForm_40" value="" data-id="" data-name=""
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" data-value=""
														placeholder=""><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_currency"
														data-dsl="{{currency_0}}" name="editorForm_41"
														id="editorForm_41" value="" data-autotype="false"
														data-value="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														placeholder="" style="text-align: right;"><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_currency"
														data-dsl="{{currency_0}}" name="editorForm_42"
														id="editorForm_42" value="" data-autotype="false"
														data-value="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														placeholder="" style="text-align: right;"><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="editorForm_43" id="editorForm_43" value=""
														data-id="" data-name="" data-require="false"
														data-maxlength="" data-width="" data-defaultstr=""
														data-editable="false" data-value="" placeholder=""><br>
													</td>
												</tr>
												<tr>
													<td
														style="border-width: 1px; border-style: solid; border-color: black; text-align: center; padding: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; font-weight: normal; height: 31.9091px;">

														5</td>
													<td
														style="border-width: 1px; border-style: solid; border-color: black; text-align: left; padding: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; font-weight: normal; height: 31.9091px;"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="editorForm_44" id="editorForm_44" value=""
														data-id="" data-name="" data-require="false"
														data-maxlength="" data-width="" data-defaultstr=""
														data-editable="false" data-value="" placeholder=""><br>
													</td>
													<td
														style="border-width: 1px; border-style: solid; border-color: black; text-align: left; padding: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; font-weight: normal; height: 31.9091px;"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="editorForm_45" id="editorForm_45" value=""
														data-id="" data-name="" data-require="false"
														data-maxlength="" data-width="" data-defaultstr=""
														data-editable="false" data-value="" placeholder=""><br>
													</td>
													<td
														style="border-width: 1px; border-style: solid; border-color: black; text-align: left; padding: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; font-weight: normal; height: 31.9091px;"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="editorForm_46" id="editorForm_46" value=""
														data-id="" data-name="" data-require="false"
														data-maxlength="" data-width="" data-defaultstr=""
														data-editable="false" data-value="" placeholder=""><br>
													</td>
													<td
														style="border-width: 1px; border-style: solid; border-color: black; text-align: left; padding: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; font-weight: normal; height: 31.9091px;"><input
														type="text" class="ipt_editor ipt_editor_num"
														data-dsl="{{number}}" name="editorForm_47"
														id="editorForm_47" value="" data-id="" data-name=""
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" data-value=""
														placeholder=""><br></td>
													<td
														style="border-width: 1px; border-style: solid; border-color: black; text-align: left; padding: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; font-weight: normal; height: 31.9091px;"><input
														type="text" class="ipt_editor ipt_editor_currency"
														data-dsl="{{currency_0}}" name="editorForm_48"
														id="editorForm_48" value="" data-autotype="false"
														data-value="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														placeholder="" style="text-align: right;"><br>
													</td>
													<td
														style="border-width: 1px; border-style: solid; border-color: black; text-align: left; padding: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; font-weight: normal; height: 31.9091px;"><input
														type="text" class="ipt_editor ipt_editor_currency"
														data-dsl="{{currency_0}}" name="editorForm_49"
														id="editorForm_49" value="" data-autotype="false"
														data-value="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														placeholder="" style="text-align: right;"><br>
													</td>
													<td
														style="border-width: 1px; border-style: solid; border-color: black; text-align: left; padding: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; font-weight: normal; height: 31.9091px;"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="editorForm_50" id="editorForm_50" value=""
														data-id="" data-name="" data-require="false"
														data-maxlength="" data-width="" data-defaultstr=""
														data-editable="false" data-value="" placeholder=""><br>
													</td>
												</tr>
												<tr>
													<td
														style="border-width: 1px; border-style: solid; border-color: black; text-align: center; padding: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; font-weight: normal; height: 27.9091px;">

														6</td>
													<td
														style="border-width: 1px; border-style: solid; border-color: black; text-align: left; padding: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; font-weight: normal; height: 27.9091px;"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="editorForm_51" id="editorForm_51" value=""
														data-id="" data-name="" data-require="false"
														data-maxlength="" data-width="" data-defaultstr=""
														data-editable="false" data-value="" placeholder=""><br>
													</td>
													<td
														style="border-width: 1px; border-style: solid; border-color: black; text-align: left; padding: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; font-weight: normal; height: 27.9091px;"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="editorForm_52" id="editorForm_52" value=""
														data-id="" data-name="" data-require="false"
														data-maxlength="" data-width="" data-defaultstr=""
														data-editable="false" data-value="" placeholder=""><br>
													</td>
													<td
														style="border-width: 1px; border-style: solid; border-color: black; text-align: left; padding: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; font-weight: normal; height: 27.9091px;"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="editorForm_53" id="editorForm_53" value=""
														data-id="" data-name="" data-require="false"
														data-maxlength="" data-width="" data-defaultstr=""
														data-editable="false" data-value="" placeholder=""><br>
													</td>
													<td
														style="border-width: 1px; border-style: solid; border-color: black; text-align: left; padding: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; font-weight: normal; height: 27.9091px;"><input
														type="text" class="ipt_editor ipt_editor_num"
														data-dsl="{{number}}" name="editorForm_54"
														id="editorForm_54" value="" data-id="" data-name=""
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" data-value=""
														placeholder=""><br></td>
													<td
														style="border-width: 1px; border-style: solid; border-color: black; text-align: left; padding: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; font-weight: normal; height: 27.9091px;"><input
														type="text" class="ipt_editor ipt_editor_currency"
														data-dsl="{{currency_0}}" name="editorForm_55"
														id="editorForm_55" value="" data-autotype="false"
														data-value="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														placeholder="" style="text-align: right;"><br>
													</td>
													<td
														style="border-width: 1px; border-style: solid; border-color: black; text-align: left; padding: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; font-weight: normal; height: 27.9091px;"><input
														type="text" class="ipt_editor ipt_editor_currency"
														data-dsl="{{currency_0}}" name="editorForm_56"
														id="editorForm_56" value="" data-autotype="false"
														data-value="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														placeholder="" style="text-align: right;"><br>
													</td>
													<td
														style="border-width: 1px; border-style: solid; border-color: black; text-align: left; padding: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; font-weight: normal; height: 27.9091px;"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="editorForm_57" id="editorForm_57" value=""
														data-id="" data-name="" data-require="false"
														data-maxlength="" data-width="" data-defaultstr=""
														data-editable="false" data-value="" placeholder=""><br>
													</td>
												</tr>
												<tr>
													<td
														style="border-bottom: black 1px solid; text-align: center; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px">

														7</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="editorForm_58" id="editorForm_58" value=""
														data-id="" data-name="" data-require="false"
														data-maxlength="" data-width="" data-defaultstr=""
														data-editable="false" data-value="" placeholder=""><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="editorForm_59" id="editorForm_59" value=""
														data-id="" data-name="" data-require="false"
														data-maxlength="" data-width="" data-defaultstr=""
														data-editable="false" data-value="" placeholder=""><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="editorForm_60" id="editorForm_60" value=""
														data-id="" data-name="" data-require="false"
														data-maxlength="" data-width="" data-defaultstr=""
														data-editable="false" data-value="" placeholder=""><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_num"
														data-dsl="{{number}}" name="editorForm_61"
														id="editorForm_61" value="" data-id="" data-name=""
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" data-value=""
														placeholder=""><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_currency"
														data-dsl="{{currency_0}}" name="editorForm_62"
														id="editorForm_62" value="" data-autotype="false"
														data-value="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														placeholder="" style="text-align: right;"><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_currency"
														data-dsl="{{currency_0}}" name="editorForm_63"
														id="editorForm_63" value="" data-autotype="false"
														data-value="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														placeholder="" style="text-align: right;"><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="editorForm_64" id="editorForm_64" value=""
														data-id="" data-name="" data-require="false"
														data-maxlength="" data-width="" data-defaultstr=""
														data-editable="false" data-value="" placeholder=""><br>
													</td>
												</tr>
												<tr>
													<td
														style="border-bottom: black 1px solid; text-align: center; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px">

														8</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="editorForm_65" id="editorForm_65" value=""
														data-id="" data-name="" data-require="false"
														data-maxlength="" data-width="" data-defaultstr=""
														data-editable="false" data-value="" placeholder=""><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="editorForm_66" id="editorForm_66" value=""
														data-id="" data-name="" data-require="false"
														data-maxlength="" data-width="" data-defaultstr=""
														data-editable="false" data-value="" placeholder=""><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="editorForm_67" id="editorForm_67" value=""
														data-id="" data-name="" data-require="false"
														data-maxlength="" data-width="" data-defaultstr=""
														data-editable="false" data-value="" placeholder=""><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_num"
														data-dsl="{{number}}" name="editorForm_68"
														id="editorForm_68" value="" data-id="" data-name=""
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" data-value=""
														placeholder=""><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_currency"
														data-dsl="{{currency_0}}" name="editorForm_69"
														id="editorForm_69" value="" data-autotype="false"
														data-value="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														placeholder="" style="text-align: right;"><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_currency"
														data-dsl="{{currency_0}}" name="editorForm_70"
														id="editorForm_70" value="" data-autotype="false"
														data-value="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														placeholder="" style="text-align: right;"><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="editorForm_71" id="editorForm_71" value=""
														data-id="" data-name="" data-require="false"
														data-maxlength="" data-width="" data-defaultstr=""
														data-editable="false" data-value="" placeholder=""><br>
													</td>
												</tr>
												<tr>
													<td
														style="border-bottom: black 1px solid; text-align: center; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px">

														9</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="editorForm_72" id="editorForm_72" value=""
														data-id="" data-name="" data-require="false"
														data-maxlength="" data-width="" data-defaultstr=""
														data-editable="false" data-value="" placeholder=""><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="editorForm_73" id="editorForm_73" value=""
														data-id="" data-name="" data-require="false"
														data-maxlength="" data-width="" data-defaultstr=""
														data-editable="false" data-value="" placeholder=""><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="editorForm_74" id="editorForm_74" value=""
														data-id="" data-name="" data-require="false"
														data-maxlength="" data-width="" data-defaultstr=""
														data-editable="false" data-value="" placeholder=""><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_num"
														data-dsl="{{number}}" name="editorForm_75"
														id="editorForm_75" value="" data-id="" data-name=""
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" data-value=""
														placeholder=""><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_currency"
														data-dsl="{{currency_0}}" name="editorForm_76"
														id="editorForm_76" value="" data-autotype="false"
														data-value="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														placeholder="" style="text-align: right;"><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_currency"
														data-dsl="{{currency_0}}" name="editorForm_77"
														id="editorForm_77" value="" data-autotype="false"
														data-value="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														placeholder="" style="text-align: right;"><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="editorForm_78" id="editorForm_78" value=""
														data-id="" data-name="" data-require="false"
														data-maxlength="" data-width="" data-defaultstr=""
														data-editable="false" data-value="" placeholder=""><br>
													</td>
												</tr>
												<tr>
													<td
														style="border-bottom: black 1px solid; text-align: center; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px">

														10</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="editorForm_79" id="editorForm_79" value=""
														data-id="" data-name="" data-require="false"
														data-maxlength="" data-width="" data-defaultstr=""
														data-editable="false" data-value="" placeholder=""><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="editorForm_80" id="editorForm_80" value=""
														data-id="" data-name="" data-require="false"
														data-maxlength="" data-width="" data-defaultstr=""
														data-editable="false" data-value="" placeholder=""><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="editorForm_81" id="editorForm_81" value=""
														data-id="" data-name="" data-require="false"
														data-maxlength="" data-width="" data-defaultstr=""
														data-editable="false" data-value="" placeholder=""><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_num"
														data-dsl="{{number}}" name="editorForm_82"
														id="editorForm_82" value="" data-id="" data-name=""
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" data-value=""
														placeholder=""><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_currency"
														data-dsl="{{currency_0}}" name="editorForm_83"
														id="editorForm_83" value="" data-autotype="false"
														data-value="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														placeholder="" style="text-align: right;"><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_currency"
														data-dsl="{{currency_0}}" name="editorForm_84"
														id="editorForm_84" value="" data-autotype="false"
														data-value="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														placeholder="" style="text-align: right;"><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="editorForm_85" id="editorForm_85" value=""
														data-id="" data-name="" data-require="false"
														data-maxlength="" data-width="" data-defaultstr=""
														data-editable="false" data-value="" placeholder=""><br>
													</td>
												</tr>
												<tr>
													<td
														style="border-bottom: black 1px solid; text-align: center; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px">

														11</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="editorForm_86" id="editorForm_86" value=""
														data-id="" data-name="" data-require="false"
														data-maxlength="" data-width="" data-defaultstr=""
														data-editable="false" data-value="" placeholder=""><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="editorForm_87" id="editorForm_87" value=""
														data-id="" data-name="" data-require="false"
														data-maxlength="" data-width="" data-defaultstr=""
														data-editable="false" data-value="" placeholder=""><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="editorForm_88" id="editorForm_88" value=""
														data-id="" data-name="" data-require="false"
														data-maxlength="" data-width="" data-defaultstr=""
														data-editable="false" data-value="" placeholder=""><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_num"
														data-dsl="{{number}}" name="editorForm_89"
														id="editorForm_89" value="" data-id="" data-name=""
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" data-value=""
														placeholder=""><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_currency"
														data-dsl="{{currency_0}}" name="editorForm_90"
														id="editorForm_90" value="" data-autotype="false"
														data-value="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														placeholder="" style="text-align: right;"><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_currency"
														data-dsl="{{currency_0}}" name="editorForm_91"
														id="editorForm_91" value="" data-autotype="false"
														data-value="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														placeholder="" style="text-align: right;"><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="editorForm_92" id="editorForm_92" value=""
														data-id="" data-name="" data-require="false"
														data-maxlength="" data-width="" data-defaultstr=""
														data-editable="false" data-value="" placeholder=""><br>
													</td>
												</tr>
												<tr>
													<td
														style="border-bottom: black 1px solid; text-align: center; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px">

														12</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="editorForm_93" id="editorForm_93" value=""
														data-id="" data-name="" data-require="false"
														data-maxlength="" data-width="" data-defaultstr=""
														data-editable="false" data-value="" placeholder=""><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="editorForm_94" id="editorForm_94" value=""
														data-id="" data-name="" data-require="false"
														data-maxlength="" data-width="" data-defaultstr=""
														data-editable="false" data-value="" placeholder=""><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="editorForm_95" id="editorForm_95" value=""
														data-id="" data-name="" data-require="false"
														data-maxlength="" data-width="" data-defaultstr=""
														data-editable="false" data-value="" placeholder=""><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_num"
														data-dsl="{{number}}" name="editorForm_96"
														id="editorForm_96" value="" data-id="" data-name=""
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" data-value=""
														placeholder=""><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_currency"
														data-dsl="{{currency_0}}" name="editorForm_97"
														id="editorForm_97" value="" data-autotype="false"
														data-value="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														placeholder="" style="text-align: right;"><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_currency"
														data-dsl="{{currency_0}}" name="editorForm_98"
														id="editorForm_98" value="" data-autotype="false"
														data-value="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														placeholder="" style="text-align: right;"><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="editorForm_99" id="editorForm_99" value=""
														data-id="" data-name="" data-require="false"
														data-maxlength="" data-width="" data-defaultstr=""
														data-editable="false" data-value="" placeholder=""><br>
													</td>
												</tr>
												<tr>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"
														colspan="8"><p
															style="margin: 0px 0px 10px; font-family: &amp; quot; malgun gothic&amp;quot; , dotum , arial, tahoma; font-size: 9pt; line-height: 18px;">※
															특기사항</p>
														<textarea class="txta_editor" data-dsl="{{textarea}}"
															name="editorForm_100" id="editorForm_100" value=""
															data-id="" data-name="" data-require="false"
															data-maxlength="" data-width="" data-defaultstr=""
															data-editable="false" data-value="" placeholder=""></textarea><br>
													</td>
												</tr>
											</tbody>
										</table>
								</span>
									<p
										style="font-family: &amp; quot; 맑은 고딕&amp;quot;; font-size: 10pt; line-height: 20px; margin-top: 0px; margin-bottom: 0px;">&nbsp;</p></span>
							</form>
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