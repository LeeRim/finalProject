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

<script type="text/javascript" src="resources/dist/js/pages/spendingResolution.js"></script>

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

				<div class="form_back">
					<span
						style="font-family: &amp; amp; quot; 맑은 고딕&amp;amp; quot;; font-size: 10pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span
						style="font-family: &amp; amp; quot; 맑은 고딕&amp;amp; quot;; font-size: 10pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span
							style="font-family: &amp; amp; quot; 맑은 고딕&amp;amp; quot;; font-size: 10pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span
								style="font-family: &amp; amp; quot; 맑은 고딕&amp;amp; quot;; font-size: 10pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">

									<div
										style="font-family: 돋움; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
										<span
											style="font-family: 돋움; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">

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
															style="background: white; padding: 0px !important; border: 0px currentColor; height: 90px; text-align: center; color: black; font-size: 25px; font-weight: bold; vertical-align: middle;"
															colspan="2"
															class="dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">

															법인카드 지출결의서</td>
													</tr>
													<tr>
														<td
															style="background: white; padding: 0px !important; border: currentColor; text-align: left; color: black; font-size: 12px; font-weight: normal; vertical-align: top;">

															<table
																style="border: 1px solid rgb(0, 0, 0); font-family: malgun gothic, dotum, arial, tahoma; margin-top: 1px; border-collapse: collapse;">
																<!-- User -->
																<colgroup>
																	<col width="90">
																	<col width="220">
																</colgroup>

																<tbody>
																	<tr>
																		<td
																			style="background: rgb(226, 226, 226); padding: 5px; border: 1px solid black; height: 18px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: bold; vertical-align: middle;">

																			기안자</td>
																		<td
																			style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; text-align: left; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle;">
																			<span unselectable="on" contenteditable="false"
																			class="comp_wrap" data-cid="0"
																			data-dsl="{{label:draftUser}}" data-wrapper=""
																			style="" data-value="" data-autotype=""><span
																				class="comp_item">기안자</span><span
																				contenteditable="false" class="comp_active"
																				style="display: none;"> <span
																					class="Active_dot1"></span><span
																					class="Active_dot2"></span> <span
																					class="Active_dot3"></span><span
																					class="Active_dot4"></span>
																			</span> <span contenteditable="false" class="comp_hover"
																				data-content-protect-cover="true" data-origin="0">
																					<a contenteditable="false"
																					class="ic_prototype ic_prototype_trash"
																					data-content-protect-cover="true"
																					data-component-delete-button="true"></a>
																			</span> </span>
																		</td>
																	</tr>
																	<tr>
																		<td
																			style="background: rgb(226, 226, 226); padding: 5px; border: 1px solid black; height: 18px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: bold; vertical-align: middle;">

																			소속</td>
																		<td
																			style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; text-align: left; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle;">
																			<span unselectable="on" contenteditable="false"
																			class="comp_wrap" data-cid="1"
																			data-dsl="{{label:draftDept}}" data-wrapper=""
																			style="" data-value="" data-autotype=""><span
																				class="comp_item">기안부서</span><span
																				contenteditable="false" class="comp_active"
																				style="display: none;"> <span
																					class="Active_dot1"></span><span
																					class="Active_dot2"></span> <span
																					class="Active_dot3"></span><span
																					class="Active_dot4"></span>
																			</span> <span contenteditable="false" class="comp_hover"
																				data-content-protect-cover="true" data-origin="1">
																					<a contenteditable="false"
																					class="ic_prototype ic_prototype_trash"
																					data-content-protect-cover="true"
																					data-component-delete-button="true"></a>
																			</span> </span>
																		</td>
																	</tr>
																	<tr>
																		<td
																			style="background: rgb(226, 226, 226); padding: 5px; border: 1px solid black; height: 18px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: bold; vertical-align: middle;">

																			기안일</td>
																		<td
																			style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; text-align: left; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle;">
																			<span unselectable="on" contenteditable="false"
																			class="comp_wrap" data-cid="2"
																			data-dsl="{{label:draftDate}}" data-wrapper=""
																			style="" data-value="" data-autotype=""><span
																				class="comp_item">기안일</span><span
																				contenteditable="false" class="comp_active"
																				style="display: none;"> <span
																					class="Active_dot1"></span><span
																					class="Active_dot2"></span> <span
																					class="Active_dot3"></span><span
																					class="Active_dot4"></span>
																			</span> <span contenteditable="false" class="comp_hover"
																				data-content-protect-cover="true" data-origin="2">
																					<a contenteditable="false"
																					class="ic_prototype ic_prototype_trash"
																					data-content-protect-cover="true"
																					data-component-delete-button="true"></a>
																			</span> </span>
																		</td>
																	</tr>
																	<tr>
																		<td
																			style="background: rgb(226, 226, 226); padding: 5px; border: 1px solid black; height: 18px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: bold; vertical-align: middle;">

																			문서번호</td>
																		<td
																			style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; text-align: left; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle;">
																			<span unselectable="on" contenteditable="false"
																			class="comp_wrap" data-cid="3"
																			data-dsl="{{label:docNo}}" data-wrapper="" style=""
																			data-value="" data-autotype=""><span
																				class="comp_item">문서번호</span><span
																				contenteditable="false" class="comp_active"
																				style="display: none;"> <span
																					class="Active_dot1"></span><span
																					class="Active_dot2"></span> <span
																					class="Active_dot3"></span><span
																					class="Active_dot4"></span>
																			</span> <span contenteditable="false" class="comp_hover"
																				data-content-protect-cover="true" data-origin="3">
																					<a contenteditable="false"
																					class="ic_prototype ic_prototype_trash"
																					data-content-protect-cover="true"
																					data-component-delete-button="true"></a>
																			</span> </span>
																		</td>
																	</tr>
																</tbody>
															</table>

														</td>
														<td
															style="background: white; padding: 0px !important; border: currentColor; text-align: right; color: black; font-size: 12px; font-weight: normal; vertical-align: top;">
															<span unselectable="on" contenteditable="false"
															class="comp_wrap" data-wrapper=""><span
																class="sign_type1_inline" data-group-seq="0"
																data-group-name="신청" data-group-max-count="1"
																data-group-type="type1" data-is-reception=""
																style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span
																	class="sign_tit_wrap"
																	style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span
																		class="sign_tit"
																		style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><strong>신청</strong></span></span><span
																	class="sign_member_wrap"
																	style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span
																		class="sign_member"
																		style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span
																			class="sign_rank_wrap"
																			style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span
																				class="sign_rank"
																				style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">&nbsp;</span></span><span
																			class="sign_wrap"
																			style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">&nbsp;</span><span
																			class="sign_date_wrap"
																			style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span
																				class="sign_date"
																				style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">&nbsp;</span></span></span></span></span><span
																contenteditable="false" class="comp_active"
																style="display: none;"> <span class="Active_dot1"></span><span
																	class="Active_dot2"></span> <span class="Active_dot3"></span><span
																	class="Active_dot4"></span>
															</span><span contenteditable="false" class="comp_hover"
																data-content-protect-cover="true"> <a
																	contenteditable="false"
																	class="ic_prototype ic_prototype_trash"
																	data-content-protect-cover="true"
																	data-component-delete-button="true"></a>
															</span></span> <span unselectable="on" contenteditable="false"
															class="comp_wrap" data-wrapper=""><span
																class="sign_type1_inline" data-group-seq="1"
																data-group-name="승인" data-group-max-count="4"
																data-group-type="type1" data-is-reception=""
																style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span
																	class="sign_tit_wrap"
																	style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span
																		class="sign_tit"
																		style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><strong>승인</strong></span></span><span
																	class="sign_member_wrap"
																	style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span
																		class="sign_member"
																		style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span
																			class="sign_rank_wrap"
																			style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span
																				class="sign_rank"
																				style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">&nbsp;</span></span><span
																			class="sign_wrap"
																			style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">&nbsp;</span><span
																			class="sign_date_wrap"
																			style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span
																				class="sign_date"
																				style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">&nbsp;</span></span></span></span><span
																	class="sign_member_wrap"
																	style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span
																		class="sign_member"
																		style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span
																			class="sign_rank_wrap"
																			style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span
																				class="sign_rank"
																				style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">&nbsp;</span></span><span
																			class="sign_wrap"
																			style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">&nbsp;</span><span
																			class="sign_date_wrap"
																			style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span
																				class="sign_date"
																				style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">&nbsp;</span></span></span></span><span
																	class="sign_member_wrap"
																	style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span
																		class="sign_member"
																		style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span
																			class="sign_rank_wrap"
																			style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span
																				class="sign_rank"
																				style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">&nbsp;</span></span><span
																			class="sign_wrap"
																			style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">&nbsp;</span><span
																			class="sign_date_wrap"
																			style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span
																				class="sign_date"
																				style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">&nbsp;</span></span></span></span><span
																	class="sign_member_wrap"
																	style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span
																		class="sign_member"
																		style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span
																			class="sign_rank_wrap"
																			style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span
																				class="sign_rank"
																				style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">&nbsp;</span></span><span
																			class="sign_wrap"
																			style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">&nbsp;</span><span
																			class="sign_date_wrap"
																			style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span
																				class="sign_date"
																				style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">&nbsp;</span></span></span></span></span><span
																contenteditable="false" class="comp_active"
																style="display: none;"> <span class="Active_dot1"></span><span
																	class="Active_dot2"></span> <span class="Active_dot3"></span><span
																	class="Active_dot4"></span>
															</span><span contenteditable="false" class="comp_hover"
																data-content-protect-cover="true"> <a
																	contenteditable="false"
																	class="ic_prototype ic_prototype_trash"
																	data-content-protect-cover="true"
																	data-component-delete-button="true"></a>
															</span></span>

														</td>
													</tr>
												</tbody>
											</table> <br>
										</span>
									</div>
									<div
										style="font-family: 돋움; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
										<span
											style="font-family: 돋움; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><br></span>
									</div>
									<div
										style="font-family: 돋움; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
										<br>
									</div>
									<div
										style="font-family: 돋움; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
										<br>
									</div>
							</span>
								<table border="0" cellpadding="0" cellspacing="0"
									style="border-collapse: collapse; width: 800px; height: 208px;">
									<colgroup>
										<col width="72" style="width: 72px;">
										<col width="27" style="width: 27px;">
										<col width="50" span="3" style="width: 51px;">
										<col width="72" style="width: 72px;">
										<col width="84" style="width: 84px;">
										<col width="43" style="width: 43px;">
										<col width="72" span="4" style="width: 72px;">
										<col width="96" style="width: 96px;">
									</colgroup>
									<tbody>
										<tr>
											<td height="30" width="72"
												style="padding-top: 1px; padding-right: 1px; padding-left: 1px; font-family: &amp; amp; quot; 맑은 고딕&amp;amp; quot; , monospace; vertical-align: middle; white-space: nowrap; font-size: 10pt; text-align: center; border: 1px solid windowtext; height: 30px; width: 80px; background-color: rgb(226, 226, 226);">
												<strong>제 목</strong>
											</td>
											<td colspan="12" width="760"
												style="padding-top: 1px; padding-right: 1px; padding-left: 1px; font-family: &amp; amp; quot; 맑은 고딕&amp;amp; quot; , monospace; vertical-align: middle; border-image: initial; white-space: nowrap; font-size: 10pt; text-align: center; border-width: 1px; border-style: solid; border-color: windowtext black windowtext windowtext; width: 720px;">
												<p
													style="text-align: left; font-family: &amp; amp; quot; 맑은 고딕&amp;amp; quot; , monospace; font-size: 10pt; line-height: 20px; margin-top: 0px; margin-bottom: 0px;">
													<span unselectable="on" contenteditable="false"
														class="comp_wrap" data-cid="4" data-dsl="{{text}}"
														data-wrapper="" style="width: 100%;" data-value=""
														data-autotype=""><input class="ipt_editor"
														type="text"><span contenteditable="false"
														class="comp_active" style="display: none;"> <span
															class="Active_dot1"></span><span class="Active_dot2"></span>
															<span class="Active_dot3"></span><span
															class="Active_dot4"></span>
													</span> <span contenteditable="false" class="comp_hover"
														data-content-protect-cover="true" data-origin="4">
															<a contenteditable="false"
															class="ic_prototype ic_prototype_trash"
															data-content-protect-cover="true"
															data-component-delete-button="true"></a>
													</span> </span><br>
												</p>
											</td>
										</tr>
										<tr>
											<td height="30"
												style="padding-top: 1px; padding-right: 1px; padding-left: 1px; font-family: &amp; amp; quot; 맑은 고딕&amp;amp; quot; , monospace; vertical-align: middle; white-space: nowrap; font-size: 10pt; text-align: center; border-right: 1px solid windowtext; border-bottom: 1px solid windowtext; border-left: 1px solid windowtext; border-image: initial; height: 30px; border-top: none; background-color: rgb(226, 226, 226); width: 83px;"
												class="dext_table_border_t"><strong>작성일자</strong></td>
											<td colspan="6"
												style="padding-top: 1px; padding-right: 1px; padding-left: 1px; font-family: &amp; amp; quot; 맑은 고딕&amp;amp; quot; , monospace; vertical-align: middle; white-space: nowrap; font-size: 10pt; text-align: center; border-top: 1px solid windowtext; border-right: 1px solid windowtext; border-bottom: 1px solid windowtext; border-image: initial; border-left: none; width: 303px;"
												class="dext_table_border_l">
												<p
													style="font-family: &amp; amp; quot; 맑은 고딕&amp;amp; quot; , monospace; font-size: 10pt; line-height: 20px; margin-top: 0px; margin-bottom: 0px;">
													<span unselectable="on" contenteditable="false"
														class="comp_wrap" data-cid="5" data-dsl="{{calendar}}"
														data-wrapper="" style="" data-value="" data-autotype=""><input
														class="ipt_editor ipt_editor_date" type="text"><span
														contenteditable="false" class="comp_active"
														style="display: none;"> <span class="Active_dot1"></span><span
															class="Active_dot2"></span> <span class="Active_dot3"></span><span
															class="Active_dot4"></span>
													</span> <span contenteditable="false" class="comp_hover"
														data-content-protect-cover="true" data-origin="5">
															<a contenteditable="false"
															class="ic_prototype ic_prototype_trash"
															data-content-protect-cover="true"
															data-component-delete-button="true"></a>
													</span> </span><br>
												</p>
											</td>
											<td
												style="padding-top: 1px; padding-right: 1px; padding-left: 1px; font-family: &amp; amp; quot; 맑은 고딕&amp;amp; quot; , monospace; vertical-align: middle; white-space: nowrap; font-size: 10pt; text-align: center; border-right: 1px solid windowtext; border-bottom: 1px solid windowtext; border-left: 1px solid windowtext; border-image: initial; height: 30px; border-top: none; background-color: rgb(226, 226, 226); width: 79px;"
												class="dext_table_border_t"><strong>소 속</strong></td>
											<td colspan="5"
												style="padding-top: 1px; padding-right: 1px; padding-left: 1px; font-family: &amp; amp; quot; 맑은 고딕&amp;amp; quot; , monospace; vertical-align: middle; white-space: nowrap; font-size: 10pt; text-align: center; border-top: 1px solid windowtext; border-right: 1px solid windowtext; border-bottom: 1px solid windowtext; border-image: initial; border-left: none; width: 242px;"
												class="dext_table_border_l">
												<p
													style="font-family: &amp; amp; quot; 맑은 고딕&amp;amp; quot; , monospace; font-size: 10pt; line-height: 20px; margin-top: 0px; margin-bottom: 0px;">
													<span unselectable="on" contenteditable="false"
														class="comp_wrap" data-cid="6" data-dsl="{{text}}"
														data-wrapper="" style="width: 100%;" data-value=""
														data-autotype=""><input class="ipt_editor"
														type="text"><span contenteditable="false"
														class="comp_active" style="display: none;"> <span
															class="Active_dot1"></span><span class="Active_dot2"></span>
															<span class="Active_dot3"></span><span
															class="Active_dot4"></span>
													</span> <span contenteditable="false" class="comp_hover"
														data-content-protect-cover="true" data-origin="6">
															<a contenteditable="false"
															class="ic_prototype ic_prototype_trash"
															data-content-protect-cover="true"
															data-component-delete-button="true"></a>
													</span> </span><br>
												</p>
											</td>
										</tr>
										<tr>
											<td height="30"
												style="padding-top: 1px; padding-right: 1px; padding-left: 1px; font-family: &amp; amp; quot; 맑은 고딕&amp;amp; quot; , monospace; vertical-align: middle; white-space: nowrap; font-size: 10pt; text-align: center; border-right: 1px solid windowtext; border-bottom: 1px solid windowtext; border-left: 1px solid windowtext; border-image: initial; height: 30px; border-top: none; background-color: rgb(226, 226, 226); width: 83px;"
												class="dext_table_border_t"><strong>작 성 자</strong></td>
											<td colspan="6"
												style="padding-top: 1px; padding-right: 1px; padding-left: 1px; font-family: &amp; amp; quot; 맑은 고딕&amp;amp; quot; , monospace; vertical-align: middle; white-space: nowrap; font-size: 10pt; text-align: center; border-top: 1px solid windowtext; border-right: 1px solid windowtext; border-bottom: 1px solid windowtext; border-image: initial; border-left: none; width: 303px;"
												class="dext_table_border_l">
												<p
													style="font-family: &amp; amp; quot; 맑은 고딕&amp;amp; quot; , monospace; font-size: 10pt; line-height: 20px; margin-top: 0px; margin-bottom: 0px;">
													<span unselectable="on" contenteditable="false"
														class="comp_wrap" data-cid="7" data-dsl="{{text}}"
														data-wrapper="" style="width: 100%;" data-value=""
														data-autotype=""><input class="ipt_editor"
														type="text"><span contenteditable="false"
														class="comp_active" style="display: none;"> <span
															class="Active_dot1"></span><span class="Active_dot2"></span>
															<span class="Active_dot3"></span><span
															class="Active_dot4"></span>
													</span> <span contenteditable="false" class="comp_hover"
														data-content-protect-cover="true" data-origin="7">
															<a contenteditable="false"
															class="ic_prototype ic_prototype_trash"
															data-content-protect-cover="true"
															data-component-delete-button="true"></a>
													</span> </span><br>
												</p>
											</td>
											<td
												style="padding-top: 1px; padding-right: 1px; padding-left: 1px; font-family: &amp; amp; quot; 맑은 고딕&amp;amp; quot; , monospace; vertical-align: middle; white-space: nowrap; font-size: 10pt; text-align: center; border-right: 1px solid windowtext; border-bottom: 1px solid windowtext; border-left: 1px solid windowtext; border-image: initial; height: 30px; border-top: none; background-color: rgb(226, 226, 226); width: 79px;"
												class="dext_table_border_t"><strong>금 액</strong></td>
											<td class="total_price dext_table_border_l" colspan="5"
												style="padding-top: 1px; padding-right: 1px; padding-left: 1px; font-family: &amp; amp; quot; 맑은 고딕&amp;amp; quot; , monospace; vertical-align: middle; white-space: nowrap; font-size: 10pt; text-align: center; border-top: 1px solid windowtext; border-right: 1px solid windowtext; border-bottom: 1px solid windowtext; border-image: initial; border-left: none; width: 242px;">

											</td>
										</tr>
										<tr>
											<td height="150"
												style="padding-top: 1px; padding-right: 1px; padding-left: 1px; font-family: &amp; amp; quot; 맑은 고딕&amp;amp; quot; , monospace; vertical-align: middle; white-space: nowrap; font-size: 10pt; text-align: center; border-right: 1px solid windowtext; border-bottom: 1px solid windowtext; border-left: 1px solid windowtext; border-image: initial; height: 117px; border-top: none; background-color: rgb(226, 226, 226); width: 83px;"
												class="dext_table_border_t"><strong>지출사유</strong></td>
											<td colspan="12"
												style="padding-top: 1px; padding-right: 1px; padding-left: 1px; font-family: &amp; amp; quot; 맑은 고딕&amp;amp; quot; , monospace; vertical-align: middle; white-space: nowrap; font-size: 10pt; text-align: center; border-top: 1px solid windowtext; border-right: 1px solid windowtext; border-bottom: 1px solid windowtext; border-image: initial; border-left: none; width: 683px; height: 117px;"
												class="dext_table_border_l">
												<p
													style="font-family: &amp; amp; quot; 맑은 고딕&amp;amp; quot; , monospace; font-size: 10pt; line-height: 20px; margin-top: 0px; margin-bottom: 0px;">
													<span unselectable="on" contenteditable="false"
														class="comp_wrap" data-cid="8" data-dsl="{{textarea}}"
														data-wrapper="" style="width: 100%;" data-value=""
														data-autotype=""><textarea class="txta_editor"></textarea><span
														contenteditable="false" class="comp_active"
														style="display: none;"> <span class="Active_dot1"></span><span
															class="Active_dot2"></span> <span class="Active_dot3"></span><span
															class="Active_dot4"></span>
													</span> <span contenteditable="false" class="comp_hover"
														data-content-protect-cover="true" data-origin="8">
															<a contenteditable="false"
															class="ic_prototype ic_prototype_trash"
															data-content-protect-cover="true"
															data-component-delete-button="true"></a>
													</span> </span><br>
												</p>
											</td>
										</tr>
									</tbody>
								</table>
								<p
									style="font-family: &amp; amp; quot; 맑은 고딕&amp;amp; quot;; font-size: 10pt; line-height: 20px; margin-top: 0px; margin-bottom: 0px;">
									<br>
								</p>

								<div id="divCustomWrapper"
									style="font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
									<table id="dynamic_table1" class="detailSection"
										style="margin-top: 5px !important; height: 100px;">
										<colgroup>
											<col width="120">
											<col width="150">
											<col width="150">
											<col width="260">
											<col width="120">
										</colgroup>
										<tbody>
											<tr>
												<td colspan="5"
													class="viewModeHiddenPart td_button dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
													<a class="button" id="plus1" data-bypass="">추가</a><a
													class="button" id="minus1" data-bypass="">삭제</a>
												</td>
											</tr>
											<tr>
												<td
													class="subjectColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">

													일 자</td>
												<td
													class="subjectColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">

													분 류</td>
												<td
													class="subjectColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">

													금 액</td>
												<td
													class="subjectColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">

													사용 내역</td>
												<td
													class="subjectColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">

													비 고</td>
											</tr>
											<tr class="copyRow1">
												<td
													class="detailColumn centerCol dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l"
													style="height: 29px;"><span unselectable="on"
													contenteditable="false" class="comp_wrap" data-cid="9"
													data-dsl="{{calendar}}" data-wrapper="" style=""
													data-value="" data-autotype=""><input
														class="ipt_editor ipt_editor_date" type="text"><span
														contenteditable="false" class="comp_active"
														style="display: none;"> <span class="Active_dot1"></span><span
															class="Active_dot2"></span> <span class="Active_dot3"></span><span
															class="Active_dot4"></span>
													</span> <span contenteditable="false" class="comp_hover"
														data-content-protect-cover="true" data-origin="9">
															<a contenteditable="false"
															class="ic_prototype ic_prototype_trash"
															data-content-protect-cover="true"
															data-component-delete-button="true"></a>
													</span> </span></td>
												<td
													class="detailColumn centerCol dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l"
													style="height: 29px;"><span unselectable="on"
													contenteditable="false" class="comp_wrap" data-cid="10"
													data-dsl="{{cSel__물품구입비_잡비_회식비_식비_교통비_기타}}" data-wrapper=""
													style="" data-value="" data-autotype=""><select
														class="editor_slt" style="width: 100%"><option
																selected="selected"></option>
															<option>물품구입비</option>
															<option>잡비</option>
															<option>회식비</option>
															<option>식비</option>
															<option>교통비</option>
															<option>기타</option></select><span contenteditable="false"
														class="comp_active" "="" style="display: none;"> <span
															class="Active_dot1"></span><span class="Active_dot2"></span>
															<span class="Active_dot3"></span><span
															class="Active_dot4"></span>
													</span> <span contenteditable="false" class="comp_hover"
														data-content-protect-cover="true" data-origin="10">
															<a contenteditable="false"
															class="ic_prototype ic_prototype_trash"
															data-content-protect-cover="true"
															data-component-delete-button="true"></a>
													</span> </span></td>
												<td
													class="detailColumn centerCol price dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l"
													style="height: 29px;"><span unselectable="on"
													contenteditable="false" class="comp_wrap" data-cid="11"
													data-dsl="{{currency_0}}" data-wrapper="" style=""
													data-value="" data-autotype=""><input
														class="ipt_editor ipt_editor_currency" type="text"
														style=""><span contenteditable="false"
														class="comp_active" style="display: none;"> <span
															class="Active_dot1"></span><span class="Active_dot2"></span>
															<span class="Active_dot3"></span><span
															class="Active_dot4"></span>
													</span> <span contenteditable="false" class="comp_hover"
														data-content-protect-cover="true" data-origin="11">
															<a contenteditable="false"
															class="ic_prototype ic_prototype_trash"
															data-content-protect-cover="true"
															data-component-delete-button="true"></a>
													</span> </span></td>
												<td
													class="detailColumn centerCol dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l"
													style="height: 29px;"><span unselectable="on"
													contenteditable="false" class="comp_wrap" data-cid="12"
													data-dsl="{{text}}" data-wrapper="" style="width: 100%;"
													data-value="" data-autotype=""><input
														class="ipt_editor" type="text"><span
														contenteditable="false" class="comp_active"
														style="display: none;"> <span class="Active_dot1"></span><span
															class="Active_dot2"></span> <span class="Active_dot3"></span><span
															class="Active_dot4"></span>
													</span> <span contenteditable="false" class="comp_hover"
														data-content-protect-cover="true" data-origin="12">
															<a contenteditable="false"
															class="ic_prototype ic_prototype_trash"
															data-content-protect-cover="true"
															data-component-delete-button="true"></a>
													</span> </span></td>
												<td
													class="detailColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l"
													style="height: 29px;"><span unselectable="on"
													contenteditable="false" class="comp_wrap" data-cid="13"
													data-dsl="{{text}}" data-wrapper="" style="width: 100%;"
													data-value="" data-autotype=""><input
														class="ipt_editor" type="text"><span
														contenteditable="false" class="comp_active"
														style="display: none;"> <span class="Active_dot1"></span><span
															class="Active_dot2"></span> <span class="Active_dot3"></span><span
															class="Active_dot4"></span>
													</span> <span contenteditable="false" class="comp_hover"
														data-content-protect-cover="true" data-origin="13">
															<a contenteditable="false"
															class="ic_prototype ic_prototype_trash"
															data-content-protect-cover="true"
															data-component-delete-button="true"></a>
													</span> </span></td>
											</tr>
											<tr>
												<td colspan="2"
													class="detailColumn centerCol rightCol dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l"
													style="border-right: none !important; font-weight: bold">

													합계 :</td>
												<td
													class="detailColumn total_price centerCol dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l"
													style="border-left: none !important; border-right: none !important;">
													<p>
														<br>
													</p>
												</td>
												<td colspan="2"
													class="detailColumn dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l"
													style="border-left: none !important;">
													<p>
														<br>
													</p>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
								<p
									style="font-family: &amp; amp; quot; 맑은 고딕&amp;amp; quot;; font-size: 10pt; line-height: 20px; margin-top: 0px; margin-bottom: 0px;">
									<br>
								</p>
								<p
									style="font-family: &amp; amp; quot; 맑은 고딕&amp;amp; quot;; font-size: 10pt; line-height: 20px; margin-top: 0px; margin-bottom: 0px;">
									<br>
								</p>
								<p
									style="font-family: &amp; amp; quot; 맑은 고딕&amp;amp; quot;; font-size: 10pt; line-height: 20px; margin-top: 0px; margin-bottom: 0px;">
									<strong>* 영수증 별도 제출</strong>
								</p></span>
							<p
								style="font-family: &amp; amp; quot; 맑은 고딕&amp;amp; quot;; font-size: 10pt; line-height: 20px; margin-top: 0px; margin-bottom: 0px;">
								<br>
							</p></span> </span>
				</div>

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