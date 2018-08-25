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
	function openSelectApprover() {
		$('div.modal').modal();
	}
	$(function() {
		$('#vfStartdate,#vfEnddate').datepicker({
			format : "yyyy/mm/dd",
			language : "kr",
			autoclose : true
		});
	});
	

	
</script>
<!--  -->

</head>
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
					<a class="btn btn-app" href="#" onclick="openDoApproval();">
						<i class="fa fa-check"></i>결재하기
					</a>
				</div>
				<section class="content_wrapper">
					<!--전자결제 상세-->
					<div class="report_type approval_type form_back">
						<!--전자결재 내용-->
						<div class="approval_import ie9-scroll-fix">
							<!-- 문서 내용 표시 테스트 -->
							<form id="vacationForm" action="writeVacation.do" class="form_doc_editor editor_view" method="post"  enctype="multipart/form-data">
							<input type="hidden" id="appStr" name="appStr" value="">
										<input type="hidden" id="insteads" name="insteads" value="">
								<span style="font-family: 맑은 고딕; font-size: 10pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
									<table class="__se_tbl" style="background: white; border: 0px solid black; border-image: none; width: 800px; color: black; font-family: malgun gothic, dotum, arial, tahoma; font-size: 12px; border-collapse: collapse !important;">
										<!-- Header -->

										<tbody>
											<tr>
												<td style="padding: 3px !important; border: 0px solid black; border-image: none; width: 300px; height: 90px !important; text-align: center; font-size: 22px; font-weight: bold; vertical-align: middle;"
													colspan="2" class="">연차신청서</td>
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
																	<c:out value="${approval.writer.eName}"></c:out>
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

																<td style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; border-image: none; text-align: left; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle;">
																	<c:out value="${approval.aWriteDate }"></c:out>
																</td>
															</tr>
															<tr>
																<td
																	style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; height: 18px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: bold; vertical-align: middle;">

																	문서번호</td>
																	<td style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; border-image: none; text-align: left; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle;">
																			<fmt:formatNumber value="${approval.aKey}" pattern='000000'/>
																		</td>
																</tr>
														</tbody>
													</table>
												</td>
												<td>
															<div class="sign_condition" id="sign_condition">
																<span class='sign_type1_inline'> <span
																	class='sign_tit_wrap'> <span class='sign_tit'>
																			<strong>승인</strong>
																	</span>
																</span> <c:forEach items="${approval.aConList}" var="appCon">
																		<span class='sign_member_wrap' id='activity_15162'><span
																			class='sign_member'><span
																				class='sign_rank_wrap'><span
																					class='sign_rank'><c:out
																							value="${appCon.approver.job }"></c:out></span></span><span
																				class='sign_wrap'><span class='sign_name'><c:if test="${appCon.acType != null}"><small><c:out value="${appCon.acType}"></c:out></small><br></c:if>
																				<c:if test="${appCon.acCondition ==1}"><img alt="" src="resources/upload/image/ok.png" height="30" width="30" style="margin-left:5px"></c:if>
																				<c:if test="${appCon.acCondition ==2}"><img alt="" src="resources/upload/image/companion.png" height="30" width="30" style="margin-left:5px"></c:if>
																						<br><c:out value="${appCon.approver.eName }"></c:out></span></span><span
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
																			class="sign_date_wrap"><span
																				class="sign_date " id="date_15162"><c:out
																						value="${approval.aWriteDate }"></c:out></span></span></span></span></span>
															</div>

														</td>
											</tr>

										</tbody>
									</table> <br>

									<table class="__se_tbl" style="background: white; border: 1px solid black; border-image: none; width: 800px; color: black; font-family: malgun gothic, dotum, arial, tahoma; font-size: 12px; margin-top: 0px; border-collapse: collapse !important;">
										<tbody>
											<tr>
												<td
													style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; height: 25px; text-align: center; color: rgb(0, 0, 0); font-size: 14px; font-weight: bold; vertical-align: middle;">

													휴가 종류</td>
												<td
													style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; border-image: none; height: 25px; text-align: left; color: rgb(0, 0, 0); font-size: 14px; font-weight: normal; vertical-align: middle;">
													<span id="vacationTypeArea" style="line-height: normal; font-family: malgun gothic, dotum, arial, tahoma; font-size: 11pt; margin-top: 0px; margin-bottom: 0px;"
													name="select"> 
													 <c:out value="${vf.vfType }"></c:out>
												</span>
												</td>
											</tr>
											<tr>
												<td style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; height: 25px; text-align: center; color: rgb(0, 0, 0); font-size: 14px; font-weight: bold; vertical-align: middle;">
													기간 및 일시</td>
												<td
													style="background: rgb(255, 255, 255); padding: 3px; border: 1px solid black; border-image: none; width: 700px; height: 22px; text-align: left; color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle;">
													<c:out value="${vf.vfStartdate }"></c:out>~<c:out value="${vf.vfEnddate }"></c:out>
													<span id="usingPointArea"
													style="line-height: normal; font-family: malgun gothic, dotum, arial, tahoma; font-size: 9pt; margin-top: 0px; margin-bottom: 0px;"><b>사용일수
															: </b> <input type="text" class="ipt_editor ipt_editor_num"
														data-dsl="{{number:usingPoint}}" name="usingPoint"
														value="${vf.vfUseddate }" readonly="readonly"> <b
														id="usingPoint_Comment"
														style="font-weight: bold; color: red"></b> </span></td>
											</tr>
											<tr>
												<td
													style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; height: 25px; text-align: center; color: rgb(0, 0, 0); font-size: 14px; font-weight: bold; vertical-align: middle;">

													반차 여부</td>
												<td
													style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; border-image: none; height: 25px; text-align: left; color: rgb(0, 0, 0); font-size: 14px; font-weight: normal; vertical-align: middle;"><span
													id="vacationHalfArea"
													style="line-height: normal; font-family: malgun gothic, dotum, arial, tahoma; font-size: 11pt; margin-top: 0px; margin-bottom: 0px;"><span
														class="halfArea"> <input type="checkbox"
															class="editor_opt" value="시작일" name="check_startHalf"
															id="startHalf"> <label class="editor_label">시작일</label>
													</span>
														<span class="halfArea">
															 <input type="checkbox" class="editor_opt" value="종료일" name="check_startHalf" id="endHalf"> 
															 <label class="editor_label" data-type="removeSpan">종료일</label>
														</span> 
													</span>
													</td>
											</tr>
											<tr>
												<td
													style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; height: 80px; text-align: center; color: rgb(0, 0, 0); font-size: 14px; font-weight: bold; vertical-align: middle;"><b
													style="color: rgb(255, 0, 0);">*</b>휴가 사유</td>
												<td
													style="background: rgb(255, 255, 255); padding: 3px; border: 1px solid black; border-image: none; width: 700px; height: 100px; text-align: left; color: rgb(0, 0, 0); font-size: 12px; vertical-align: top;">
													<c:out value="${vf.vfReason }"></c:out></td>
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
									<div class="form-group" style="height: 100px;">
											<div class="file-list">
											<c:forEach var="attach" items="${approval.aAttachList}">
												<br><a href="/css/resources/upload/approval/<c:out value="${attach.attaFileName}"/>" download><i class="fa fa-paperclip"></i>&nbsp<c:out value="${attach.attaFileName}"></c:out></a>
											</c:forEach>
											</div>
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


	<c:import url="../selectApproverPage.jsp"/>
	<c:import url="/WEB-INF/views/include/footer.jsp" />
	<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. -->
     <script>
     	$(function(){
     		if($("#startHalf").val() == '<%=req.getBathroom()%>'){
     			$("#bathroom").prop("checked",true);
     		}
     	});
     </script>
</body>
</html>