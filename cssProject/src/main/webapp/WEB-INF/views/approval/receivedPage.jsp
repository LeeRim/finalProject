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
<!-- DataTables -->
<link rel="stylesheet"
	href="resources/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
<!-- DataTables -->
<script
	src="resources/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script
	src="resources/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<!-- SlimScroll
<script
	src="resources/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
FastClick
<script src="resources/bower_components/fastclick/lib/fastclick.js"></script>
AdminLTE for demo purposes
<script src="resources/dist/js/demo.js"></script> -->
<!-- page script -->
<script>

function hideThead(){
	$('.thead').hide();
}
function openDetail(aKey,divDoctypeFk){
	switch(divDoctypeFk){
	case 1: location.href="openJobPropsalDetail.do?aKey="+aKey; break;
	case 2: location.href="openOrderFormDetail.do?aKey="+aKey; break;
	case 3: location.href="openSpendingResolutionDetail.do?aKey="+aKey; break;
	case 4: location.href="openRoundRobinDetail.do?aKey="+aKey; break;
	case 5: location.href="openVacationFormDetail.do?aKey="+aKey; break;
	}
}

	$(function() {
		$('.thead').hide();
		
		$('#allTable').DataTable({
			'paging' : true,
			'lengthChange' : false,
			'searching' : false,
			'ordering' : true,
			'info' : true,
			'autoWidth' : false
		});
		$('#ingTable').DataTable({
			'paging' : true,
			'lengthChange' : false,
			'searching' : false,
			'ordering' : true,
			'info' : true,
			'autoWidth' : false
		});	$('#complTable').DataTable({
			'paging' : true,
			'lengthChange' : false,
			'searching' : false,
			'ordering' : true,
			'info' : true,
			'autoWidth' : false
		});	$('#compaTable').DataTable({
			'paging' : true,
			'lengthChange' : false,
			'searching' : false,
			'ordering' : true,
			'info' : true,
			'autoWidth' : false
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

		<c:import url="approval_menu.jsp" />



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
				<div class="row">
					<div class="col-xs-12">
						<!-- Nav tabs -->
						<ul class="nav nav-tabs" role="tablist"  onclick="hideThead();">
							<li role="presentation" class="active"><a href="#all"
								aria-controls="all" role="tab" data-toggle="tab">전체</a></li>
							<li role="presentation"><a href="#ing"
								aria-controls="ing" role="tab" data-toggle="tab">진행</a></li>
							<li role="presentation"><a href="#complete"
								aria-controls="complete" role="tab" data-toggle="tab">완료</a></li>
							<li role="presentation"><a href="#companion"
								aria-controls="companion" role="tab" data-toggle="tab">반려</a></li>
						</ul>

					</div>
				</div>

				<div class="tab-content">
					<div role="tabpanel" class="tab-pane active" id="all">

						<div class="box" style="width:100%">
							<div class="box-header with-border">
								<h3 class="box-title">전체결재문서</h3>

								<div class="box-tools">
									<div class="input-group input-group-sm" style="width: 150px;">
										<input type="text" name="table_search"
											class="form-control pull-right" placeholder="Search">

										<div class="input-group-btn">
											<button type="submit" class="btn btn-default">
												<i class="fa fa-search"></i>
											</button>
										</div>
									</div>
								</div>
							</div>
							<!-- /.box-header -->
							<div class="box-body">
								<table id="allTable" class="table table-condensed">
									<thead class="thead">
										<tr>
											<th>0</th>
											<th>기안일</th>
											<th>완료일</th>
											<th>결재양식</th>
											<th>제목</th>
											<th>기안자</th>
											<th>문서번호</th>
											<th>상태</th>
										</tr>
									</thead>
										<tr>
											<th><p style="visibility: hidden; height:15px;">0</p></th>
											<th>기안일</th>
											<th>완료일</th>
											<th>결재양식</th>
											<th>제목</th>
											<th>기안자</th>
											<th>문서번호</th>
											<th>상태</th>
										</tr>
										
										<c:forEach var="approval" items="${allList }">
										<tr onclick="openDetail(${approval.aKey},${approval.divDoctypeFk});">
											<td><p style="visibility: hidden; height:15px;"><c:out value="${9999999-approval.aKey }"></c:out></p></td>
											<td><c:out value="${approval.aWriteDate }"></c:out></td>
											<td><c:out value="${approval.aCompleteDate}"></c:out></td>
											<td><c:out value="${approval.doctype }"></c:out></td>
											<td><c:out value="${approval.aTitle }"></c:out></td>
											<td><c:out value="${approval.writer.eName }"></c:out></td>
											<td><c:out value="${approval.aKey }"></c:out></td>
											<c:if test="${approval.aCondition==0 }">
												<td><span class="label label-warning">진행</span></td>
											</c:if>
											<c:if test="${approval.aCondition==1 }">
												<td><span class="label label-primary">완료</span></td>
											</c:if>
											<c:if test="${approval.aCondition==2 }">
												<td><span class="label label-danger">반려</span></td>
											</c:if>
										</tr>
										</c:forEach>
								</table>
							</div>
							<!-- /.box-body -->
						</div>
						<!-- /.box -->
					</div>
					<!-- #all -->
					
					<div role="tabpanel" class="tab-pane" id="ing">

						<div class="box" style="width:100%">
							<div class="box-header with-border">
								<h3 class="box-title">진행중인 결재문서</h3>

								<div class="box-tools">
									<div class="input-group input-group-sm" style="width: 150px;">
										<input type="text" name="table_search"
											class="form-control pull-right" placeholder="Search">

										<div class="input-group-btn">
											<button type="submit" class="btn btn-default">
												<i class="fa fa-search"></i>
											</button>
										</div>
									</div>
								</div>
							</div>
							<!-- /.box-header -->
							<div class="box-body">
								<table id="ingTable" class="table table-condensed">
									<thead class="thead">
										<tr>
											<th>0</th>
											<th>기안일</th>
											<th>완료일</th>
											<th>결재양식</th>
											<th>제목</th>
											<th>기안자</th>
											<th>문서번호</th>
											<th>상태</th>
										</tr>
									</thead>
										<tr>
											<th><p style="visibility: hidden; height:15px;">0</p></th>
											<th>기안일</th>
											<th>완료일</th>
											<th>결재양식</th>
											<th>제목</th>
											<th>기안자</th>
											<th>문서번호</th>
											<th>상태</th>
										</tr>
										
										<c:forEach var="approval" items="${ingList }">
										<tr onclick="openDetail(${approval.aKey},${approval.divDoctypeFk});">
											<td><p style="visibility: hidden; height:15px;"><c:out value="${9999999-approval.aKey }"></c:out></p></td>
											<td><c:out value="${approval.aWriteDate }"></c:out></td>
											<td><c:out value="${approval.aCompleteDate}"></c:out></td>
											<td><c:out value="${approval.doctype }"></c:out></td>
											<td><c:out value="${approval.aTitle }"></c:out></td>
											<td><c:out value="${approval.writer.eName }"></c:out></td>
											<td><c:out value="${approval.aKey }"></c:out></td>
											<td><span class="label label-warning">진행</span></td>
										</tr>
										</c:forEach>
								</table>
							</div>
							<!-- /.box-body -->
						</div>
						<!-- /.box -->
					</div>
					<!-- #ing -->
					
					<div role="tabpanel" class="tab-pane" id="complete">

						<div class="box" style="width:100%">
							<div class="box-header with-border">
								<h3 class="box-title">완료된 결재문서</h3>

								<div class="box-tools">
									<div class="input-group input-group-sm" style="width: 150px;">
										<input type="text" name="table_search"
											class="form-control pull-right" placeholder="Search">

										<div class="input-group-btn">
											<button type="submit" class="btn btn-default">
												<i class="fa fa-search"></i>
											</button>
										</div>
									</div>
								</div>
							</div>
							<!-- /.box-header -->
							<div class="box-body">
								<table id="complTable" class="table table-condensed">
									<thead class="thead">
										<tr>
											<th>0</th>
											<th>기안일</th>
											<th>완료일</th>
											<th>결재양식</th>
											<th>제목</th>
											<th>기안자</th>
											<th>문서번호</th>
											<th>상태</th>
										</tr>
									</thead>
										<tr>
											<th><p style="visibility: hidden; height:15px;">0</p></th>
											<th>기안일</th>
											<th>완료일</th>
											<th>결재양식</th>
											<th>제목</th>
											<th>기안자</th>
											<th>문서번호</th>
											<th>상태</th>
										</tr>
										
										<c:forEach var="approval" items="${complList }">
										<tr onclick="openDetail(${approval.aKey},${approval.divDoctypeFk});">
											<td><p style="visibility: hidden; height:15px;"><c:out value="${9999999-approval.aKey }"></c:out></p></td>
											<td><c:out value="${approval.aWriteDate }"></c:out></td>
											<td><c:out value="${approval.aCompleteDate}"></c:out></td>
											<td><c:out value="${approval.doctype }"></c:out></td>
											<td><c:out value="${approval.aTitle }"></c:out></td>
											<td><c:out value="${approval.writer.eName }"></c:out></td>
											<td><c:out value="${approval.aKey }"></c:out></td>
											<td><span class="label label-primary">완료</span></td>
										</tr>
										</c:forEach>
								</table>
							</div>
							<!-- /.box-body -->
						</div>
						<!-- /.box -->
					</div>
					<!-- #complete -->
					
					<div role="tabpanel" class="tab-pane" id="companion">

						<div class="box" style="width:100%">
							<div class="box-header with-border">
								<h3 class="box-title">반려된 결재문서</h3>

								<div class="box-tools">
									<div class="input-group input-group-sm" style="width: 150px;">
										<input type="text" name="table_search"
											class="form-control pull-right" placeholder="Search">

										<div class="input-group-btn">
											<button type="submit" class="btn btn-default">
												<i class="fa fa-search"></i>
											</button>
										</div>
									</div>
								</div>
							</div>
							<!-- /.box-header -->
							<div class="box-body">
								<table id="compaTable" class="table table-condensed">
									<thead class="thead">
										<tr>
											<th>0</th>
											<th>기안일</th>
											<th>완료일</th>
											<th>결재양식</th>
											<th>제목</th>
											<th>기안자</th>
											<th>문서번호</th>
											<th>상태</th>
										</tr>
									</thead>
										<tr>
											<th><p style="visibility: hidden; height:15px;">0</p></th>
											<th>기안일</th>
											<th>완료일</th>
											<th>결재양식</th>
											<th>제목</th>
											<th>기안자</th>
											<th>문서번호</th>
											<th>상태</th>
										</tr>
										
										<c:forEach var="approval" items="${compaList }">
										<tr onclick="openDetail(${approval.aKey},${approval.divDoctypeFk});">
											<td><p style="visibility: hidden; height:15px;"><c:out value="${9999999-approval.aKey }"></c:out></p></td>
											<td><c:out value="${approval.aWriteDate }"></c:out></td>
											<td><c:out value="${approval.aCompleteDate}"></c:out></td>
											<td><c:out value="${approval.doctype }"></c:out></td>
											<td><c:out value="${approval.aTitle }"></c:out></td>
											<td><c:out value="${approval.writer.eName }"></c:out></td>
											<td><c:out value="${approval.aKey }"></c:out></td>
											<td><span class="label label-danger">반려</span></td>
										</tr>
										</c:forEach>
								</table>
							</div>
							<!-- /.box-body -->
						</div>
						<!-- /.box -->
					</div>
					<!-- #companion -->
					
				</div>
				<!-- tab-content -->
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