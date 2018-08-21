<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url="/WEB-INF/views/include/header.jsp" />
<c:import url="../doApprovalPage.jsp" />
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
				<div class="doApproval">
					<a class="btn btn-app" href="#" onclick="openDoApproval();"> <i
						class="fa fa-check"></i>결재하기
					</a>
				</div>
				<!-- 3단 레이아웃 멀티클래스 -->
				<section class="content_wrapper">
					<!--전자결제 상세-->
					<div class="report_type approval_type orderForm_back">
						<!--전자결재 내용-->
						<div class="approval_import ie9-scroll-fix">
							<!-- 문서 내용 표시 테스트 -->

							<span><span
								style="font-family: &amp; amp; amp; amp; amp; amp; amp; amp; amp; amp; quot; 맑은 고딕&amp;amp; amp; amp; amp; amp; amp; amp; amp; amp; quot;; font-size: 10pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
									<!-- default copy start --> <span
									style="font-family: &amp; amp; amp; amp; amp; amp; amp; amp; amp; amp; quot; 맑은 고딕&amp;amp; amp; amp; amp; amp; amp; amp; amp; amp; quot;; font-size: 10pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">

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
																		<c:out value="${approval.writer.eName}"></c:out>&nbsp<c:out
																			value="${approval.writer.job }"></c:out>
																	</td>
																</tr>
																<tr>
																	<td
																		style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; height: 18px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: bold; vertical-align: middle;">

																		소속</td>
																	<td
																		style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; border-image: none; text-align: left; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle;">
																		<c:out value="${approval.writer.department}"></c:out>
																	</td>
																</tr>
																<tr>
																	<td
																		style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; height: 18px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: bold; vertical-align: middle;">

																		기안일</td>

																	<td
																		style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; border-image: none; text-align: left; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle;">
																		<c:out value="${approval.aWriteDate }"></c:out>
																	</td>
																</tr>
																<tr>
																	<td
																		style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; height: 18px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: bold; vertical-align: middle;">

																		문서번호</td>
																	<td
																		style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; border-image: none; text-align: left; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle;">
																		<fmt:formatNumber value="${approval.aKey}"
																			pattern='000000' />
																	</td>
																</tr>
															</tbody>
														</table></td>
													<td>
														<div class="sign_condition" id="sign_condition">
															<span class='sign_type1_inline'> <span
																class='sign_tit_wrap'> <span class='sign_tit'>
																		<strong>승인</strong>
																</span>
															</span> <c:forEach items="${approval.aConList}" var="appCon">
																	<span class='sign_member_wrap' id='activity_15162'><span
																		class='sign_member'><span
																			class='sign_rank_wrap'><span class='sign_rank'><c:out
																						value="${appCon.approver.job }"></c:out></span></span><span
																			class='sign_wrap'><span class='sign_name'><c:out
																						value="${appCon.acType}"></c:out><br>
																				<c:out value="${appCon.condition }"></c:out> <c:out
																						value="${appCon.approver.eName }"></c:out></span></span><span
																			class='sign_date_wrap'><span
																				class='sign_date ' id='date_15162'>${appCon.acApprovalDate }</span></span></span></span>

																</c:forEach>
															</span>
														</div>

														<div class="sign_condition">
															<span class="sign_type1_inline"><span
																class="sign_tit_wrap"><span class="sign_tit"><strong>신청</strong></span></span>
																<!--  --> <span class="sign_member_wrap"
																id="activity_15162"><span class="sign_member"><span
																		class="sign_rank_wrap"><span class="sign_rank"><c:out
																					value="${approval.writer.job}"></c:out></span></span><span
																		class="sign_wrap"><span class="sign_name"><c:out
																					value="${approval.writer.eName}"></c:out></span></span><span
																		class="sign_date_wrap"><span class="sign_date "
																			id="date_15162"><c:out
																					value="${approval.aWriteDate }"></c:out></span></span></span></span></span>
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
													colspan="6"><c:out value="${approval.aTitle }"></c:out><br></td>
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
													rowspan="2"><c:out value="${of.oDepartment }"></c:out><br>
												</td>
												<td
													style="border-bottom: black 1px solid; text-align: center; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(221, 221, 221); height: 18px; color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: bold; border-right: black 1px solid; padding-top: 5px"
													rowspan="2">납품요청기한</td>
												<td
													style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"
													rowspan="2"><c:out value="${of.oLimit }"></c:out><br></td>
												<td
													style="border-bottom: black 1px solid; text-align: center; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(221, 221, 221); height: 18px; color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; font-weight: bold; border-right: black 1px solid; padding-top: 5px"
													rowspan="2" class="">발<br>주
												</td>
												<td
													style="border-bottom: black 1px solid; text-align: center; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(221, 221, 221); height: 18px; color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; font-weight: bold; padding-top: 5px"
													class="">번호</td>
												<td
													style="text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; font-weight: normal; padding-top: 5px"
													class=""><c:out value="${of.oNo }"></c:out><br></td>
											</tr>
											<tr>
												<td
													style="border-bottom: black 1px solid; text-align: center; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(221, 221, 221); height: 18px; color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; font-weight: bold; padding-top: 5px"
													class="">일자</td>
												<td
													style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px">
													<c:out value="${of.oDate }"></c:out><br></td>
											</tr>
											<tr>
												<td
													style="border-bottom: black 1px solid; text-align: center; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(221, 221, 221); height: 18px; color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: bold; border-right: black 1px solid; padding-top: 5px">

													대금지불방법</td>
												<td
													style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px">
													<c:out value="${of.oPayment }"></c:out><br></td>
												<td
													style="border-bottom: black 1px solid; text-align: center; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(221, 221, 221); height: 18px; color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: bold; border-right: black 1px solid; padding-top: 5px">

													납품기간</td>
												<td
													style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"><span
													data-type="period" data-value=""><c:out value="${of.oStartdate }"></c:out>
														~ <c:out value="${of.oEnddate }"></c:out></span><br></td>
												<td
													style="border-bottom: black 1px solid; text-align: center; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(221, 221, 221); height: 18px; color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: bold; border-right: black 1px solid; padding-top: 5px"
													colspan="2">완납일자</td>
												<td
													style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px">
													<c:out value="${of.oPayend }"></c:out><br>
												</td>
											</tr>
											<tr style="height: 32px">
												<td
													style="border-bottom: 1px solid; text-align: center; border-left: 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(221, 221, 221); height: 18px; color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: 1px solid; font-weight: bold; border-right: 1px solid; padding-top: 5px">

													사용목적</td>
												<td
													style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"
													colspan="6"><c:out value="${of.oPurpose }"></c:out><br></td>
											</tr>
										</tbody>
									</table>


									<table
										style="border-bottom: 2px solid black; border-left: 2px solid black; width: 800px; border-collapse: collapse; font-family: &amp; amp; amp; amp; amp; amp; amp; amp; amp; amp; quot; malgun gothic&amp;amp; amp; amp; amp; amp; amp; amp; amp; amp; quot; , dotum , arial, tahoma; border-right: 2px solid black;">
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
											<c:forEach var="orderList" items="${otlList}">
											<tr>
												<td
													style="border-bottom: black 1px solid; text-align: center; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px">

													<c:out value="${orderList.olCulno }"></c:out>
												</td>
												<td
													style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px">
													<c:out value="${orderList.olProduct }"></c:out><br></td>
												<td
													style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px">
													<c:out value="${orderList.olSize }"></c:out><br></td>
												<td
													style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px">
													<c:out value="${orderList.olUnion }"></c:out><br></td>
												<td
													style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px">
													<c:out value="${orderList.olProductcount }"></c:out><br></td>
												<td
													style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px">
													<c:out value="${orderList.olOrizinprice }"></c:out><br>
												</td>
												<td
													style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px">
													<c:out value="${orderList.olPrice }"></c:out><br></td>
												<td
													style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px">
													<c:out value="${orderList.olEtc }"></c:out><br></td>
											</tr>
											</c:forEach>
											

											<tr>
												<td
													style="border-bottom: black 1px solid; text-align: left; border-left: black 1px solid; padding-bottom: 5px; padding-left: 5px; padding-right: 5px; background: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle; border-top: black 1px solid; font-weight: normal; border-right: black 1px solid; padding-top: 5px"
													colspan="8"><p
														style="margin: 0px 0px 10px; font-family: &amp; amp; amp; amp; amp; amp; amp; amp; amp; amp; quot; malgun gothic&amp;amp; amp; amp; amp; amp; amp; amp; amp; amp; quot; , dotum , arial, tahoma; font-size: 9pt; line-height: 18px;">※
														특기사항</p><c:out value="${approval.aContent}"></c:out><br></td>
											</tr>
										</tbody>
									</table>
							</span> </span>

							<div class="form-group" style="height: 100px;">
								<div class="file-list">
									<c:forEach var="attach" items="${approval.aAttachList}">
										<br>
										<a
											href="/css/resources/upload/approval/<c:out value="${attach.attaFileName}"/>"
											download><i class="fa fa-paperclip"></i>&nbsp<c:out
												value="${attach.attaFileName}"></c:out></a>
									</c:forEach>
								</div>
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