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
	function writeOrderForm() {
		//console.log($("#orderList").children());
		var count = 0;
		for (var i = 1; i < 6; i++) {
			for (var j = 1; j < 7; j++) {
				if ($("#orderList").children().eq(i).children().eq(j)
						.children().val() != "") {
					count += 1;
				}
			}
			if (count != 0) {
				for (var j = 1; j < 7; j++) {
					var text = $("#orderList").children().eq(0).children()
							.eq(j).text();
					if ($("#orderList").children().eq(i).children().eq(j)
							.children().val() == "") {
						alert(i + "번째 물품의 " + text + "을(를) 작성해 주세요");
						return;
					}
					var re = /^[0-9]+$/;
					if (j == 4 || j == 5 || j == 6) {
						if (!re.test($("#orderList").children().eq(i).children()
								.eq(j).children().val())) {
							alert(i + "번째 물품의 " + text + "에는 숫자만 입력해 주세요");
							return;
						}
					}
				}
				count = 0;
				if ($("#orderList").children().eq(i).children().eq(7)
						.children().val() == "") {
					$("#orderList").children().eq(i).children().eq(7)
							.children().val("/");
				}
			}
		}

		$("#form").submit();
	}

	function openSelectApprover() {
		$('div.modal').modal();
	}

	$(function() {
		$('#oLimit, #oDate, #oStartdate, #oEnddate, #oPayend').datepicker({
			format : "yyyy/mm/dd",
			language : "kr",
			autoclose : true
		});
	});
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
					<div class="report_type approval_type orderForm_back">
						<!--전자결재 내용-->
						<div class="approval_import ie9-scroll-fix">
							<!-- 문서 내용 표시 테스트 -->
							<form id="form" class="form_doc_editor editor_view"
								action="writeOrderForm.do" method="post"
								enctype="multipart/form-data">
								<input type="hidden" id="appStr" name="appStr" value="">
								<input type="hidden" id="insteads" name="insteads" value="">
								<span><span
									style="font-family: &amp; amp; amp; amp; amp; amp; amp; amp; amp; amp; amp; quot; 맑은 고딕&amp;amp; amp; amp; amp; amp; amp; amp; amp; amp; amp; quot;; font-size: 10pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
										<!-- default copy start --> <span
										style="font-family: &amp; amp; amp; amp; amp; amp; amp; amp; amp; amp; amp; quot; 맑은 고딕&amp;amp; amp; amp; amp; amp; amp; amp; amp; amp; amp; quot;; font-size: 10pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">

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
															style="background: white; padding: 0px !important; border: currentColor; border-image: none; text-align: left; color: black; font-size: 12px; font-weight: normal; vertical-align: top;"><span
															class="sign_type1_inline" data-group-seq="3"
															data-group-name="합의" data-group-max-count="1"
															data-group-type="type1" data-is-agreement="true"
															id="agreementWrap"></span> <!-- 에디터 &nbsp; 버그. 개행과 공백을 최소화 시키자. -->
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
															</table></td>
														<td>
															<div class="sign_condition" id="sign_condition"></div>

															<div class="sign_condition">
																<span class="sign_type1_inline"><span
																	class="sign_tit_wrap"><span class="sign_tit"><strong>신청</strong></span></span>
																	<!--  --> <span class="sign_member_wrap"
																	id="activity_15162"><span class="sign_member"><span
																			class="sign_rank_wrap"><span class="sign_rank"><c:out
																						value="${sessionScope.user.job}"></c:out></span></span><span
																			class="sign_wrap"><span class="sign_name"><c:out
																						value="${sessionScope.user.eName}"></c:out></span></span><span
																			class="sign_date_wrap"><span
																				class="sign_date " id="date_15162"></span></span></span></span></span>
															</div>

														</td>
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
														data-dsl="{{text:subject}}" name="aTitle" id="aTitle"
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
														data-dsl="{{text}}" name="oDepartment" id="oDepartment"
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
														data-dsl="{{calendar}}" id="oLimit" data-id=""
														data-name="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														name="oLimit" data-value="" placeholder="" value=""><br>
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
														data-dsl="{{text}}" name="oNo" id="oNo" value=""
														data-id="" data-name="" data-require="false"
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
														data-dsl="{{calendar}}" id="oDate" data-id="" data-name=""
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" name="oDate"
														data-value="" placeholder="" value=""><br></td>
												</tr>
												<tr>
													<td
														style="border-bottom: black 1px solid; text-align: center; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(221, 221, 221); height: 18px; color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: bold; border-right: black 1px solid; padding-top: 5px">

														대금지불방법</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="oPayment" id="oPayment" value="" data-id=""
														data-name="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														data-value="" placeholder=""><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: center; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(221, 221, 221); height: 18px; color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: bold; border-right: black 1px solid; padding-top: 5px">

														납품기간</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><span
														data-type="period" data-value=""><input type="text"
															readonly=""
															class="ipt_editor ipt_editor_date hasDatepicker"
															data-dsl="{{calendar}}" id="oStartdate" name="oStartdate">
															~ <input type="text" readonly=""
															class="ipt_editor ipt_editor_date hasDatepicker"
															data-dsl="{{calendar}}" id="oEnddate" name="oEnddate"></span><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: center; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(221, 221, 221); height: 18px; color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: bold; border-right: black 1px solid; padding-top: 5px"
														colspan="2">완납일자</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" readonly=""
														class="ipt_editor ipt_editor_date hasDatepicker"
														data-dsl="{{calendar}}" id="oPayend" data-id=""
														data-name="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														name="oPayend" data-value="" placeholder="" value=""><br>
													</td>
												</tr>
												<tr style="height: 32px">
													<td
														style="border-bottom: 1px solid; text-align: center; border-left: 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(221, 221, 221); height: 18px; color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: 1px solid; font-weight: bold; border-right: 1px solid; padding-top: 5px">

														사용목적</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"
														colspan="6"><input type="text" class="ipt_editor"
														data-dsl="{{text}}" name="oPurpose" id="oPurpose" value=""
														data-id="" data-name="" data-require="false"
														data-maxlength="" data-width="" data-defaultstr=""
														data-editable="false" data-value="" placeholder=""><br></td>
												</tr>
											</tbody>
										</table>


										<table
											style="border-bottom: 2px solid black; border-left: 2px solid black; width: 800px; border-collapse: collapse; font-family: &amp; amp; amp; amp; amp; amp; amp; amp; amp; amp; amp; quot; malgun gothic&amp;amp; amp; amp; amp; amp; amp; amp; amp; amp; amp; quot; , dotum , arial, tahoma; border-right: 2px solid black; height: 453.636px;">
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

											<tbody id="orderList">
												<tr>
													<td
														style="border-bottom: black 1px solid; text-align: center; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(221, 221, 221); height: 18px; color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: bold; border-right: black 1px solid; padding-top: 5px">

														품번</td>
													<td
														style="border-bottom: black 1px solid; text-align: center; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(221, 221, 221); height: 18px; color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: bold; border-right: black 1px solid; padding-top: 5px">

														품명</td>
													<td
														style="border-bottom: black 1px solid; text-align: center; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(221, 221, 221); height: 18px; color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: bold; border-right: black 1px solid; padding-top: 5px">

														규격</td>
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

														<input type="hidden" id="olCulno1" name="olCulno"
														value="1"> 1
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="olProduct" id="olProduct1" value="" data-id=""
														data-name="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														data-value="" placeholder=""><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="olSize" id="olSize1" value="" data-id=""
														data-name="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														data-value="" placeholder=""><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="olUnion" id="olUnion1" value="" data-id=""
														data-name="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														data-value="" placeholder=""><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_num"
														data-dsl="{{number}}" name="olProductcount"
														id="olProductcount1" value="" data-id="" data-name=""
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" data-value=""
														placeholder=""><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_currency"
														data-dsl="{{currency_0}}" name="olOrizinprice"
														id="olOrizinprice1" value="" data-autotype="false"
														data-value="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														placeholder="" style="text-align: right;"><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_currency"
														data-dsl="{{currency_0}}" name="olPrice" id="olPrice1"
														value="" data-autotype="false" data-value=""
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" placeholder=""
														style="text-align: right;"><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="olEtc" id="olEtc1" value="" data-id="" data-name=""
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" data-value=""
														placeholder=""><br></td>
												</tr>
												<tr>
													<td
														style="border-bottom: black 1px solid; text-align: center; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px">

														<input type="hidden" id="olCulno2" name="olCulno"
														value="2"> 2
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="olProduct" id="olProduct2" value="" data-id=""
														data-name="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														data-value="" placeholder=""><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="olSize" id="olSize2" value="" data-id=""
														data-name="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														data-value="" placeholder=""><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="olUnion" id="olUnion2" value="" data-id=""
														data-name="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														data-value="" placeholder=""><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_num"
														data-dsl="{{number}}" name="olProductcount"
														id="olProductcount2" value="" data-id="" data-name=""
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" data-value=""
														placeholder=""><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_currency"
														data-dsl="{{currency_0}}" name="olOrizinprice"
														id="olOrizinprice2" value="" data-autotype="false"
														data-value="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														placeholder="" style="text-align: right;"><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_currency"
														data-dsl="{{currency_0}}" name="olPrice" id="olPrice2"
														value="" data-autotype="false" data-value=""
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" placeholder=""
														style="text-align: right;"><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="olEtc" id="olEtc2" value="" data-id="" data-name=""
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" data-value=""
														placeholder=""><br></td>
												</tr>
												<tr>
													<td
														style="border-bottom: black 1px solid; text-align: center; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px">

														<input type="hidden" id="olCulno3" name="olCulno"
														value="3"> 3
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="olProduct" id="olProduct3" value="" data-id=""
														data-name="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														data-value="" placeholder=""><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="olSize" id="olSize3" value="" data-id=""
														data-name="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														data-value="" placeholder=""><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="olUnion" id="olUnion3" value="" data-id=""
														data-name="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														data-value="" placeholder=""><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_num"
														data-dsl="{{number}}" name="olProductcount"
														id="olProductcount3" value="" data-id="" data-name=""
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" data-value=""
														placeholder=""><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_currency"
														data-dsl="{{currency_0}}" name="olOrizinprice"
														id="olOrizinprice3" value="" data-autotype="false"
														data-value="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														placeholder="" style="text-align: right;"><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_currency"
														data-dsl="{{currency_0}}" name="olPrice" id="olPrice3"
														value="" data-autotype="false" data-value=""
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" placeholder=""
														style="text-align: right;"><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="olEtc" id="olEtc3" value="" data-id="" data-name=""
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" data-value=""
														placeholder=""><br></td>
												</tr>
												<tr>
													<td
														style="border-bottom: black 1px solid; text-align: center; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px">

														<input type="hidden" id="olCulno4" name="olCulno"
														value="4"> 4
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="olProduct" id="olProduct4" value="" data-id=""
														data-name="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														data-value="" placeholder=""><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="olSize" id="olSize4" value="" data-id=""
														data-name="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														data-value="" placeholder=""><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="olUnion" id="olUnion4" value="" data-id=""
														data-name="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														data-value="" placeholder=""><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_num"
														data-dsl="{{number}}" name="olProductcount"
														id="olProductcount4" value="" data-id="" data-name=""
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" data-value=""
														placeholder=""><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_currency"
														data-dsl="{{currency_0}}" name="olOrizinprice"
														id="olOrizinprice4" value="" data-autotype="false"
														data-value="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														placeholder="" style="text-align: right;"><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_currency"
														data-dsl="{{currency_0}}" name="olPrice" id="olPrice4"
														value="" data-autotype="false" data-value=""
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" placeholder=""
														style="text-align: right;"><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="olEtc" id="olEtc4" value="" data-id="" data-name=""
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" data-value=""
														placeholder=""><br></td>
												</tr>
												<tr>
													<td
														style="border-bottom: black 1px solid; text-align: center; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px">

														<input type="hidden" id="olCulno5" name="olCulno"
														value="5"> 5
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="olProduct" id="olProduct5" value="" data-id=""
														data-name="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														data-value="" placeholder=""><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="olSize" id="olSize5" value="" data-id=""
														data-name="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														data-value="" placeholder=""><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="olUnion" id="olUnion5" value="" data-id=""
														data-name="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														data-value="" placeholder=""><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_num"
														data-dsl="{{number}}" name="olProductcount"
														id="olProductcount5" value="" data-id="" data-name=""
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" data-value=""
														placeholder=""><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_currency"
														data-dsl="{{currency_0}}" name="olOrizinprice"
														id="olOrizinprice5" value="" data-autotype="false"
														data-value="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														placeholder="" style="text-align: right;"><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_currency"
														data-dsl="{{currency_0}}" name="olPrice" id="olPrice5"
														value="" data-autotype="false" data-value=""
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" placeholder=""
														style="text-align: right;"><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="olEtc" id="olEtc5" value="" data-id="" data-name=""
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" data-value=""
														placeholder=""><br></td>
												</tr>
												<tr>
													<td
														style="border-bottom: black 1px solid; text-align: center; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px">

														<input type="hidden" id="olCulno" name="olCulno" value="6">
														6
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="olProduct" id="olProduct" value="" data-id=""
														data-name="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														data-value="" placeholder=""><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="olSize" id="olSize" value="" data-id="" data-name=""
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" data-value=""
														placeholder=""><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="olUnion" id="olUnion" value="" data-id=""
														data-name="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														data-value="" placeholder=""><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_num"
														data-dsl="{{number}}" name="olProductcount"
														id="olProductcount" value="" data-id="" data-name=""
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" data-value=""
														placeholder=""><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_currency"
														data-dsl="{{currency_0}}" name="olOrizinprice"
														id="olOrizinprice" value="" data-autotype="false"
														data-value="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														placeholder="" style="text-align: right;"><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_currency"
														data-dsl="{{currency_0}}" name="olPrice" id="olPrice"
														value="" data-autotype="false" data-value=""
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" placeholder=""
														style="text-align: right;"><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="olEtc" id="olEtc" value="" data-id="" data-name=""
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" data-value=""
														placeholder=""><br></td>
												</tr>
												<tr>
													<td
														style="border-bottom: black 1px solid; text-align: center; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px">

														<input type="hidden" id="olCulno" name="olCulno" value="7">
														7
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="olProduct" id="olProduct" value="" data-id=""
														data-name="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														data-value="" placeholder=""><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="olSize" id="olSize" value="" data-id="" data-name=""
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" data-value=""
														placeholder=""><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="olUnion" id="olUnion" value="" data-id=""
														data-name="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														data-value="" placeholder=""><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_num"
														data-dsl="{{number}}" name="olProductcount"
														id="olProductcount" value="" data-id="" data-name=""
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" data-value=""
														placeholder=""><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_currency"
														data-dsl="{{currency_0}}" name="olOrizinprice"
														id="olOrizinprice" value="" data-autotype="false"
														data-value="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														placeholder="" style="text-align: right;"><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_currency"
														data-dsl="{{currency_0}}" name="olPrice" id="olPrice"
														value="" data-autotype="false" data-value=""
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" placeholder=""
														style="text-align: right;"><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="olEtc" id="olEtc" value="" data-id="" data-name=""
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" data-value=""
														placeholder=""><br></td>
												</tr>
												<tr>
													<td
														style="border-bottom: black 1px solid; text-align: center; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px">

														<input type="hidden" id="olCulno" name="olCulno" value="8">
														8
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="olProduct" id="olProduct" value="" data-id=""
														data-name="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														data-value="" placeholder=""><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="olSize" id="olSize" value="" data-id="" data-name=""
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" data-value=""
														placeholder=""><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="olUnion" id="olUnion" value="" data-id=""
														data-name="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														data-value="" placeholder=""><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_num"
														data-dsl="{{number}}" name="olProductcount"
														id="olProductcount" value="" data-id="" data-name=""
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" data-value=""
														placeholder=""><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_currency"
														data-dsl="{{currency_0}}" name="olOrizinprice"
														id="olOrizinprice" value="" data-autotype="false"
														data-value="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														placeholder="" style="text-align: right;"><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_currency"
														data-dsl="{{currency_0}}" name="olPrice" id="olPrice"
														value="" data-autotype="false" data-value=""
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" placeholder=""
														style="text-align: right;"><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="olEtc" id="olEtc" value="" data-id="" data-name=""
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" data-value=""
														placeholder=""><br></td>
												</tr>
												<tr>
													<td
														style="border-bottom: black 1px solid; text-align: center; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px">

														<input type="hidden" id="olCulno" name="olCulno" value="9">
														9
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="olProduct" id="olProduct" value="" data-id=""
														data-name="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														data-value="" placeholder=""><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="olSize" id="olSize" value="" data-id="" data-name=""
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" data-value=""
														placeholder=""><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="olUnion" id="olUnion" value="" data-id=""
														data-name="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														data-value="" placeholder=""><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_num"
														data-dsl="{{number}}" name="olProductcount"
														id="olProductcount" value="" data-id="" data-name=""
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" data-value=""
														placeholder=""><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_currency"
														data-dsl="{{currency_0}}" name="olOrizinprice"
														id="olOrizinprice" value="" data-autotype="false"
														data-value="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														placeholder="" style="text-align: right;"><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_currency"
														data-dsl="{{currency_0}}" name="olPrice" id="olPrice"
														value="" data-autotype="false" data-value=""
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" placeholder=""
														style="text-align: right;"><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="olEtc" id="olEtc" value="" data-id="" data-name=""
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" data-value=""
														placeholder=""><br></td>
												</tr>
												<tr>
													<td
														style="border-bottom: black 1px solid; text-align: center; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px">

														<input type="hidden" id="olCulno" name="olCulno"
														value="10"> 10
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="olProduct" id="olProduct" value="" data-id=""
														data-name="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														data-value="" placeholder=""><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="olSize" id="olSize" value="" data-id="" data-name=""
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" data-value=""
														placeholder=""><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="olUnion" id="olUnion" value="" data-id=""
														data-name="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														data-value="" placeholder=""><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_num"
														data-dsl="{{number}}" name="olProductcount"
														id="olProductcount" value="" data-id="" data-name=""
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" data-value=""
														placeholder=""><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_currency"
														data-dsl="{{currency_0}}" name="olOrizinprice"
														id="olOrizinprice" value="" data-autotype="false"
														data-value="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														placeholder="" style="text-align: right;"><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_currency"
														data-dsl="{{currency_0}}" name="olPrice" id="olPrice"
														value="" data-autotype="false" data-value=""
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" placeholder=""
														style="text-align: right;"><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="olEtc" id="olEtc" value="" data-id="" data-name=""
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" data-value=""
														placeholder=""><br></td>
												</tr>
												<tr>
													<td
														style="border-bottom: black 1px solid; text-align: center; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px">

														<input type="hidden" id="olCulno" name="olCulno"
														value="11"> 11
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="olProduct" id="olProduct" value="" data-id=""
														data-name="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														data-value="" placeholder=""><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="olSize" id="olSize" value="" data-id="" data-name=""
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" data-value=""
														placeholder=""><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="olUnion" id="olUnion" value="" data-id=""
														data-name="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														data-value="" placeholder=""><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_num"
														data-dsl="{{number}}" name="olProductcount"
														id="olProductcount" value="" data-id="" data-name=""
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" data-value=""
														placeholder=""><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_currency"
														data-dsl="{{currency_0}}" name="olOrizinprice"
														id="olOrizinprice" value="" data-autotype="false"
														data-value="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														placeholder="" style="text-align: right;"><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_currency"
														data-dsl="{{currency_0}}" name="olPrice" id="olPrice"
														value="" data-autotype="false" data-value=""
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" placeholder=""
														style="text-align: right;"><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="olEtc" id="olEtc" value="" data-id="" data-name=""
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" data-value=""
														placeholder=""><br></td>
												</tr>
												<tr>
													<td
														style="border-bottom: black 1px solid; text-align: center; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px">

														<input type="hidden" id="olCulno" name="olCulno"
														value="12"> 12
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="olProduct" id="olProduct" value="" data-id=""
														data-name="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														data-value="" placeholder=""><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="olSize" id="olSize" value="" data-id="" data-name=""
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" data-value=""
														placeholder=""><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="olUnion" id="olUnion" value="" data-id=""
														data-name="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														data-value="" placeholder=""><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_num"
														data-dsl="{{number}}" name="olProductcount"
														id="olProductcount" value="" data-id="" data-name=""
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" data-value=""
														placeholder=""><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_currency"
														data-dsl="{{currency_0}}" name="olOrizinprice"
														id="olOrizinprice" value="" data-autotype="false"
														data-value="" data-require="false" data-maxlength=""
														data-width="" data-defaultstr="" data-editable="false"
														placeholder="" style="text-align: right;"><br>
													</td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor ipt_editor_currency"
														data-dsl="{{currency_0}}" name="olPrice" id="olPrice"
														value="" data-autotype="false" data-value=""
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" placeholder=""
														style="text-align: right;"><br></td>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><input
														type="text" class="ipt_editor" data-dsl="{{text}}"
														name="olEtc" id="olEtc" value="" data-id="" data-name=""
														data-require="false" data-maxlength="" data-width=""
														data-defaultstr="" data-editable="false" data-value=""
														placeholder=""><br></td>
												</tr>

												<tr>
													<td
														style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"
														colspan="8"><p
															style="margin: 0px 0px 10px; font-family: &amp; amp; amp; amp; amp; amp; amp; amp; amp; amp; amp; quot; malgun gothic&amp;amp; amp; amp; amp; amp; amp; amp; amp; amp; amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: 18px;">※
															특기사항</p> <textarea class="txta_editor"
															data-dsl="{{textarea}}" name="aContent" id="aContent"
															value="" data-id="" data-name="" data-require="false"
															data-maxlength="" data-width="" data-defaultstr=""
															data-editable="false" data-value="" placeholder=""></textarea><br></td>
												</tr>
											</tbody>
										</table>
								</span> </span>

								<div class="form-group" style="height: 100px;">
									<div style="float: left; height: 100px; width: 130px;">
										<div class="btn btn-default btn-file">
											<i class="fa fa-paperclip"></i> Attachment <input
												multiple="multiple" type="file" name="files"
												class="upload-hidden">
										</div>
										<p class="help-block">Max. 32MB</p>
									</div>
									<div class="file-list"></div>
								</div>
								<div class="btn btn-primary" onclick="writeOrderForm();">
									<i class="fa fa-edit"></i>작성
								</div>

							</form>
						</div>

					</div>
				</section>


			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
	</div>


	<c:import url="../selectApproverPage.jsp" />
	<c:import url="/WEB-INF/views/include/footer.jsp" />
	<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. -->
</body>
</html>