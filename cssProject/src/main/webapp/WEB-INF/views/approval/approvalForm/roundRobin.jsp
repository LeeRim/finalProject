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
<script>
function openSelectApprover(){
	$('div.modal').modal();
}
</script>
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
				<div class="addApprover">
					<a class="btn btn-app" href="#" onclick="openSelectApprover();">
						<i class="fa fa-user-plus"></i>결재자추가
					</a>
				</div>
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
									style="font-family: &amp; amp; amp; amp; quot; 맑은 고딕&amp;amp; amp; amp; quot;; font-size: 10pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><span
									style="font-family: &amp; amp; amp; amp; quot; 맑은 고딕&amp;amp; amp; amp; quot;; font-size: 10pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
										<!-- 문서 헤더 시작-->

										<table
											style="width: 800px; color: black; background: white; border: 1px solid black; font-size: 12px; font-family: &amp; amp; amp; amp; quot; malgun gothic&amp;amp; amp; amp; quot; , dotum , arial, tahoma; border-collapse: collapse !important; height: 187px;">
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
															<div class="sign_condition" id="sign_condition">
															</div>

															<div class="sign_condition">
																<span class="sign_type1_inline"><span
																	class="sign_tit_wrap"><span class="sign_tit"><strong>신청</strong></span></span>
																	<!--  --> <span class="sign_member_wrap"
																	id="activity_15162"><span class="sign_member"><span
																			class="sign_rank_wrap"><span class="sign_rank"><c:out value="${sessionScope.user.job}"></c:out></span></span><span
																			class="sign_wrap"><span class="sign_name"><c:out value="${sessionScope.user.eName}"></c:out></span></span><span
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
														name="draftDept" id="draftDept"
														value="${sessionScope.user.department }"><br>
													</td>
													<td
														style="padding: 3px; height: 20px; vertical-align: middle; border: 1px solid black; text-align: center; font-weight: bold;">

														기 안 일</td>
													<td
														style="padding: 3px; height: 20px; vertical-align: middle; border: 1px solid black; text-align: left;"><input
														type="text" readonly=""
														style="vertical-align: middle; width: 100%; border: 0px; box-shadow: inset 0px 0px 0px rgba(150, 150, 150, 0.2)"
														name="draftDate" id="draftDate" value=""><br></td>
													<td
														style="padding: 3px; height: 20px; vertical-align: middle; border: 1px solid black; text-align: center; font-weight: bold;">

														문서번호</td>
													<td
														style="padding: 3px; height: 20px; vertical-align: middle; border: 1px solid black; text-align: left; font-size: 12px;"><input
														type="text" readonly=""
														style="vertical-align: middle; width: 100%; border: 0px; box-shadow: inset 0px 0px 0px rgba(150, 150, 150, 0.2)"
														name="docNo" id="docNo" value=""><br></td>
												</tr>
												<tr>
													<td
														style="padding: 3px; height: 20px; vertical-align: middle; border: 1px solid black; text-align: center; font-weight: bold;">

														기 안 자</td>
													<td
														style="padding: 3px; height: 20px; vertical-align: middle; border: 1px solid black; text-align: left;"><input
														type="text" readonly=""
														style="vertical-align: middle; width: 100%; border: 0px; box-shadow: inset 0px 0px 0px rgba(150, 150, 150, 0.2)"
														name="draftUser" id="draftUser"
														value="${sessionScope.user.eName }"><br></td>
													<td
														style="padding: 3px; height: 20px; vertical-align: middle; border: 1px solid black; text-align: center; font-weight: bold;">

														보존년한</td>
													<td
														style="padding: 3px; height: 20px; vertical-align: middle; border: 1px solid black; text-align: left;"><input
														type="text" readonly=""
														style="vertical-align: middle; width: 100%; border: 0px; box-shadow: inset 0px 0px 0px rgba(150, 150, 150, 0.2)"
														name="preserveDuration" id="preserveDuration" value="5년"><br></td>
													<td
														style="padding: 3px; height: 20px; vertical-align: middle; border: 1px solid black; text-align: center; font-weight: bold;">

														비밀등급</td>
													<td
														style="padding: 3px; height: 20px; vertical-align: middle; border: 1px solid black; text-align: left;"><input
														type="text" readonly=""
														style="vertical-align: middle; width: 100%; border: 0px; box-shadow: inset 0px 0px 0px rgba(150, 150, 150, 0.2)"
														name="securityLevel" id="securityLevel" value="1"><br></td>
												</tr>
											</tbody>
										</table> <!-- 문서 헤더 끝--> <!-- 마진 시작-->

										<table
											style="width: 800px; border-collapse: collapse; border-spacing: 0px; border: 1px solid black;">
											<tbody>
												<tr>
													<td
														style="padding: 0px !important; height: 10px; vertical-align: middle; border: 1px solid black; font-size: 9px;"><p
															style="font-family: &amp; amp; amp; amp; quot; 맑은 고딕&amp;amp; amp; amp; quot;; font-size: 7pt; line-height: 14px; margin-top: 0px; margin-bottom: 0px;">&nbsp;</p>
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
														type="text" class="ipt_editor" name="aTitle" id="aTitle"
														value=""><br></td>
												</tr>
												<tr>
													<td
														colspan="2" style="padding: 3px; height: 20px; vertical-align: middle; border: 1px solid black; text-align: center; font-weight: bold;">

														내 &nbsp;&nbsp;&nbsp; 용</td>
												</tr>
												<tr>
													<td colspan="2"><textarea name="aContent" rows="" cols=""></textarea></td>
												</tr>
											</tbody>
										</table> <!-- 제목 및 내용 끝 --> <!-- 푸터-->

										<table
											style="width: 800px; font-size: 12px; font-family: malgun gothic, dotum, arial, tahoma;">
											<tbody>
												<tr>
												</tr>
											</tbody>
										</table> <!-- 푸터 끝-->
								</span>
									<p
										style="font-family: &amp; amp; amp; amp; quot; 맑은 고딕&amp;amp; amp; amp; quot;; font-size: 10pt; line-height: 20px; margin-top: 0px; margin-bottom: 0px;">&nbsp;</p></span>
							</form>
						</div>

					</div>
				</section>


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