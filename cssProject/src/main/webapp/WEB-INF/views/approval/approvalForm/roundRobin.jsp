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
					<div class="report_type approval_type form_back">
						<!--전자결재 내용-->
						<div class="approval_import ie9-scroll-fix">
							<!-- 문서 내용 표시 테스트 -->
							<form id="document_content" class="form_doc_editor editor_view"
								onsubmit="return false;">
								<span
									style="font-family: &amp; amp; quot; 맑은 고딕&amp;amp; quot;; font-size: 10pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span
									style="font-family: &amp; amp; quot; 맑은 고딕&amp;amp; quot;; font-size: 10pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
										<!-- 문서 헤더 시작-->

										<table
											style="width: 800px; color: black; background: white; border: 1px solid black; font-size: 12px; font-family: &amp; amp; quot; malgun gothic&amp;amp; quot; , dotum , arial, tahoma; border-collapse: collapse !important; height: 187px;">
											<colgroup>
												<col style="width: 90px;">
												<col style="width: 180px;">
												<col style="width: 90px;">
												<col style="width: 120px;">
												<col style="width: 90px;">
												<col style="">
											</colgroup>

											<tbody>
												<tr>
													<td
														style="padding: 3px; border: 1px solid black; font-size: 27px; font-weight: bold; text-align: center; vertical-align: middle; height: 113px;"
														colspan="2">품 &nbsp;의 &nbsp;서</td>
													<td colspan="4">
													
													<div class="sign_condition">
																<span class="sign_type1_inline" data-group-seq="0"
																	data-group-name="승인" data-group-max-count="1"
																	data-group-type="type1" data-is-reception=""><span
																	class="sign_tit_wrap"><span class="sign_tit"><strong>승인</strong></span></span>
																	<span
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
												<tr>
													<td
														style="padding: 3px; height: 20px; vertical-align: middle; border: 1px solid black; text-align: center; font-weight: bold;">

														기안부서</td>
													<td
														style="padding: 3px; height: 20px; vertical-align: middle; border: 1px solid black; text-align: left;"><input
														type="text" readonly=""
														style="vertical-align: middle; width: 100%; border: 0px; box-shadow: inset 0px 0px 0px rgba(150, 150, 150, 0.2)"
														data-dsl="{{label:draftDept}}" name="draftDept"
														id="draftDept" value="영업본부" data-id="draftDept"
														data-name="draftDept" data-require="false"
														data-maxlength="" data-width="" data-defaultstr=""
														data-editable="false" data-value="영업본부" placeholder=""><br>
													</td>
													<td
														style="padding: 3px; height: 20px; vertical-align: middle; border: 1px solid black; text-align: center; font-weight: bold;">

														기 안 일</td>
													<td
														style="padding: 3px; height: 20px; vertical-align: middle; border: 1px solid black; text-align: left;"><input
														type="text" readonly=""
														style="vertical-align: middle; width: 100%; border: 0px; box-shadow: inset 0px 0px 0px rgba(150, 150, 150, 0.2)"
														data-dsl="{{label:draftDate}}" name="draftDate"
														id="draftDate" value="" data-id="draftDate"
														data-name="draftDate" data-require="false"
														data-maxlength="" data-width="" data-defaultstr=""
														data-editable="false" data-value="2018-08-06(월)"
														placeholder=""><br></td>
													<td
														style="padding: 3px; height: 20px; vertical-align: middle; border: 1px solid black; text-align: center; font-weight: bold;">

														문서번호</td>
													<td
														style="padding: 3px; height: 20px; vertical-align: middle; border: 1px solid black; text-align: left; font-size: 12px;"><input
														type="text" readonly=""
														style="vertical-align: middle; width: 100%; border: 0px; box-shadow: inset 0px 0px 0px rgba(150, 150, 150, 0.2)"
														data-dsl="{{label:docNo}}" name="docNo" id="docNo"
														value="" data-id="docNo" data-name="docNo"
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" data-value=""
														placeholder=""><br></td>
												</tr>
												<tr>
													<td
														style="padding: 3px; height: 20px; vertical-align: middle; border: 1px solid black; text-align: center; font-weight: bold;">

														기 안 자</td>
													<td
														style="padding: 3px; height: 20px; vertical-align: middle; border: 1px solid black; text-align: left;"><input
														type="text" readonly=""
														style="vertical-align: middle; width: 100%; border: 0px; box-shadow: inset 0px 0px 0px rgba(150, 150, 150, 0.2)"
														data-dsl="{{label:draftUser}}" name="draftUser"
														id="draftUser" value="김지연" data-id="draftUser"
														data-name="draftUser" data-require="false"
														data-maxlength="" data-width="" data-defaultstr=""
														data-editable="false" data-value="김지연" placeholder=""><br>
													</td>
													<td
														style="padding: 3px; height: 20px; vertical-align: middle; border: 1px solid black; text-align: center; font-weight: bold;">

														보존년한</td>
													<td
														style="padding: 3px; height: 20px; vertical-align: middle; border: 1px solid black; text-align: left;"><input
														type="text" readonly=""
														style="vertical-align: middle; width: 100%; border: 0px; box-shadow: inset 0px 0px 0px rgba(150, 150, 150, 0.2)"
														data-dsl="{{label:preserveDuration}}"
														name="preserveDuration" id="preserveDuration" value="5년"
														data-id="preserveDuration" data-name="preserveDuration"
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" data-value="5년"
														placeholder=""><br></td>
													<td
														style="padding: 3px; height: 20px; vertical-align: middle; border: 1px solid black; text-align: center; font-weight: bold;">

														비밀등급</td>
													<td
														style="padding: 3px; height: 20px; vertical-align: middle; border: 1px solid black; text-align: left;"><input
														type="text" readonly=""
														style="vertical-align: middle; width: 100%; border: 0px; box-shadow: inset 0px 0px 0px rgba(150, 150, 150, 0.2)"
														data-dsl="{{label:securityLevel}}" name="securityLevel"
														id="securityLevel" value="1" data-id="securityLevel"
														data-name="securityLevel" data-require="false"
														data-maxlength="" data-width="" data-defaultstr=""
														data-editable="false" data-value="1" placeholder=""
														class=""><br></td>
												</tr>
											</tbody>
										</table> <!-- 문서 헤더 끝--> <!-- 마진 시작-->

										<table
											style="width: 800px; border-collapse: collapse; border-spacing: 0px; border: 1px solid black;">
											<tbody>
												<tr>
													<td
														style="padding: 0px !important; height: 10px; vertical-align: middle; border: 1px solid black; font-size: 9px;"><p
															style="font-family: &amp; amp; quot; 맑은 고딕&amp;amp; quot;; font-size: 7pt; line-height: 14px; margin-top: 0px; margin-bottom: 0px;">&nbsp;</p>
													</td>
												</tr>
											</tbody>
										</table> <!-- 마진 끝 --> <!-- 합의 시작 --> <!-- 합의 끝 --> <!-- 마진 시작--> <!-- 마진 끝-->
										<!-- 제목 및 내용 시작 -->

										<table
											style="width: 800px; border-collapse: collapse !important; color: black; background: white; border: 1px solid black; font-size: 12px; font-family: malgun gothic, dotum, arial, tahoma;">
											<colgroup>
												<col style="width: 90px;">
												<col style="width: 710px;">
											</colgroup>

											<tbody>
												<tr>
													<td
														style="padding: 3px; height: 20px; vertical-align: middle; border: 1px solid black; text-align: center; font-weight: bold;">

														제 &nbsp;&nbsp;&nbsp; 목</td>
													<td
														style="padding: 3px; height: 20px; vertical-align: middle; border: 1px solid black; text-align: left;"><input
														type="text" class="ipt_editor" data-dsl="{{text:subject}}"
														name="subject" id="subject" value="" data-id="subject"
														data-name="subject" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														data-value="" placeholder=""><br></td>
												</tr>
												<tr>
													
												</tr>
											</tbody>
										</table> <!-- 제목 및 내용 끝 --> <!-- 푸터-->

										<table
											style="width: 800px; font-size: 12px; font-family: malgun gothic, dotum, arial, tahoma;">
											<tbody>
												<tr></tr>
											</tbody>
										</table> <!-- 푸터 끝-->
								</span>
									<p
										style="font-family: &amp; amp; quot; 맑은 고딕&amp;amp; quot;; font-size: 10pt; line-height: 20px; margin-top: 0px; margin-bottom: 0px;">&nbsp;</p></span>
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