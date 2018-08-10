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
<!-- <link rel="stylesheet"
	href="resources/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css"> -->
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
	$(function() {
		$('#example2').DataTable({
			'paging' : true,
			'lengthChange' : false,
			'searching' : false,
			'ordering' : true,
			'info' : true,
			'autoWidth' : false
		});

		$('#thead').hide();
	})
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
						<ul class="nav nav-tabs" role="tablist">
							<li role="presentation" class="active"><a href="#home"
								aria-controls="home" role="tab" data-toggle="tab">전체</a></li>
							<li role="presentation"><a href="#profile"
								aria-controls="profile" role="tab" data-toggle="tab">진행</a></li>
							<li role="presentation"><a href="#messages"
								aria-controls="messages" role="tab" data-toggle="tab">완료</a></li>
							<li role="presentation"><a href="#settings"
								aria-controls="settings" role="tab" data-toggle="tab">반려</a></li>
						</ul>

					</div>
				</div>

				<div class="tab-content">
					<div role="tabpanel" class="tab-pane active" id="home">

						<div class="box">
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
										<table id="example2" class="table table-condensed">
												<thead id="thead">
													<tr>
														<th>Rendering engine</th>
														<th>Browser</th>
														<th>Platform(s)</th>
														<th>Engine version</th>
														<th>CSS grade</th>
													</tr>
												</thead>
												<!-- <tbody> -->
												<tr>
													<td>183</td>
													<td>John Doe</td>
													<td>11-7-2014</td>
													<td><span class="label label-success">Approved</span></td>
													<td>Bacon ipsum dolor sit amet salami venison chicken
														flank fatback doner.</td>
												</tr>
												<tr>
													<td>219</td>
													<td>Alexander Pierce</td>
													<td>11-7-2014</td>
													<td><span class="label label-warning">Pending</span></td>
													<td>Bacon ipsum dolor sit amet salami venison chicken
														flank fatback doner.</td>
												</tr>
												<tr>
													<td>657</td>
													<td>Bob Doe</td>
													<td>11-7-2014</td>
													<td><span class="label label-primary">Approved</span></td>
													<td>Bacon ipsum dolor sit amet salami venison chicken
														flank fatback doner.</td>
												</tr>
												<tr>
													<td>175</td>
													<td>Mike Doe</td>
													<td>11-7-2014</td>
													<td><span class="label label-danger">Denied</span></td>
													<td>Bacon ipsum dolor sit amet salami venison chicken
														flank fatback doner.</td>
												</tr>
												<tr>
													<td>183</td>
													<td>John Doe</td>
													<td>11-7-2014</td>
													<td><span class="label label-success">Approved</span></td>
													<td>Bacon ipsum dolor sit amet salami venison chicken
														flank fatback doner.</td>
												</tr>
												<tr>
													<td>219</td>
													<td>Alexander Pierce</td>
													<td>11-7-2014</td>
													<td><span class="label label-warning">Pending</span></td>
													<td>Bacon ipsum dolor sit amet salami venison chicken
														flank fatback doner.</td>
												</tr>
												<tr>
													<td>657</td>
													<td>Bob Doe</td>
													<td>11-7-2014</td>
													<td><span class="label label-primary">Approved</span></td>
													<td>Bacon ipsum dolor sit amet salami venison chicken
														flank fatback doner.</td>
												</tr>
												<tr>
													<td>175</td>
													<td>Mike Doe</td>
													<td>11-7-2014</td>
													<td><span class="label label-danger">Denied</span></td>
													<td>Bacon ipsum dolor sit amet salami venison chicken
														flank fatback doner.</td>
												</tr>
												<tr>
													<td>183</td>
													<td>John Doe</td>
													<td>11-7-2014</td>
													<td><span class="label label-success">Approved</span></td>
													<td>Bacon ipsum dolor sit amet salami venison chicken
														flank fatback doner.</td>
												</tr>
												<tr>
													<td>219</td>
													<td>Alexander Pierce</td>
													<td>11-7-2014</td>
													<td><span class="label label-warning">Pending</span></td>
													<td>Bacon ipsum dolor sit amet salami venison chicken
														flank fatback doner.</td>
												</tr>
												<tr>
													<td>657</td>
													<td>Bob Doe</td>
													<td>11-7-2014</td>
													<td><span class="label label-primary">Approved</span></td>
													<td>Bacon ipsum dolor sit amet salami venison chicken
														flank fatback doner.</td>
												</tr>
												<tr>
													<td>175</td>
													<td>Mike Doe</td>
													<td>11-7-2014</td>
													<td><span class="label label-danger">Denied</span></td>
													<td>Bacon ipsum dolor sit amet salami venison chicken
														flank fatback doner.</td>
												</tr>
												<tr>
													<td>183</td>
													<td>John Doe</td>
													<td>11-7-2014</td>
													<td><span class="label label-success">Approved</span></td>
													<td>Bacon ipsum dolor sit amet salami venison chicken
														flank fatback doner.</td>
												</tr>
												<tr>
													<td>219</td>
													<td>Alexander Pierce</td>
													<td>11-7-2014</td>
													<td><span class="label label-warning">Pending</span></td>
													<td>Bacon ipsum dolor sit amet salami venison chicken
														flank fatback doner.</td>
												</tr>
												<tr>
													<td>657</td>
													<td>Bob Doe</td>
													<td>11-7-2014</td>
													<td><span class="label label-primary">Approved</span></td>
													<td>Bacon ipsum dolor sit amet salami venison chicken
														flank fatback doner.</td>
												</tr>
												<tr>
													<td>175</td>
													<td>Mike Doe</td>
													<td>11-7-2014</td>
													<td><span class="label label-danger">Denied</span></td>
													<td>Bacon ipsum dolor sit amet salami venison chicken
														flank fatback doner.</td>
												</tr>
												<tr>
													<td>183</td>
													<td>John Doe</td>
													<td>11-7-2014</td>
													<td><span class="label label-success">Approved</span></td>
													<td>Bacon ipsum dolor sit amet salami venison chicken
														flank fatback doner.</td>
												</tr>
												<tr>
													<td>219</td>
													<td>Alexander Pierce</td>
													<td>11-7-2014</td>
													<td><span class="label label-warning">Pending</span></td>
													<td>Bacon ipsum dolor sit amet salami venison chicken
														flank fatback doner.</td>
												</tr>
												<tr>
													<td>657</td>
													<td>Bob Doe</td>
													<td>11-7-2014</td>
													<td><span class="label label-primary">Approved</span></td>
													<td>Bacon ipsum dolor sit amet salami venison chicken
														flank fatback doner.</td>
												</tr>
												<tr>
													<td>175</td>
													<td>Mike Doe</td>
													<td>11-7-2014</td>
													<td><span class="label label-danger">Denied</span></td>
													<td>Bacon ipsum dolor sit amet salami venison chicken
														flank fatback doner.</td>
												</tr>
												<tr>
													<td>183</td>
													<td>John Doe</td>
													<td>11-7-2014</td>
													<td><span class="label label-success">Approved</span></td>
													<td>Bacon ipsum dolor sit amet salami venison chicken
														flank fatback doner.</td>
												</tr>
												<tr>
													<td>219</td>
													<td>Alexander Pierce</td>
													<td>11-7-2014</td>
													<td><span class="label label-warning">Pending</span></td>
													<td>Bacon ipsum dolor sit amet salami venison chicken
														flank fatback doner.</td>
												</tr>
												<tr>
													<td>657</td>
													<td>Bob Doe</td>
													<td>11-7-2014</td>
													<td><span class="label label-primary">Approved</span></td>
													<td>Bacon ipsum dolor sit amet salami venison chicken
														flank fatback doner.</td>
												</tr>
												<tr>
													<td>175</td>
													<td>Mike Doe</td>
													<td>11-7-2014</td>
													<td><span class="label label-danger">Denied</span></td>
													<td>Bacon ipsum dolor sit amet salami venison chicken
														flank fatback doner.</td>
												</tr>
												<tr>
													<td>183</td>
													<td>John Doe</td>
													<td>11-7-2014</td>
													<td><span class="label label-success">Approved</span></td>
													<td>Bacon ipsum dolor sit amet salami venison chicken
														flank fatback doner.</td>
												</tr>
												<tr>
													<td>219</td>
													<td>Alexander Pierce</td>
													<td>11-7-2014</td>
													<td><span class="label label-warning">Pending</span></td>
													<td>Bacon ipsum dolor sit amet salami venison chicken
														flank fatback doner.</td>
												</tr>
												<tr>
													<td>657</td>
													<td>Bob Doe</td>
													<td>11-7-2014</td>
													<td><span class="label label-primary">Approved</span></td>
													<td>Bacon ipsum dolor sit amet salami venison chicken
														flank fatback doner.</td>
												</tr>
												<tr>
													<td>175</td>
													<td>Mike Doe</td>
													<td>11-7-2014</td>
													<td><span class="label label-danger">Denied</span></td>
													<td>Bacon ipsum dolor sit amet salami venison chicken
														flank fatback doner.</td>
												</tr>
												<tr>
													<td>183</td>
													<td>John Doe</td>
													<td>11-7-2014</td>
													<td><span class="label label-success">Approved</span></td>
													<td>Bacon ipsum dolor sit amet salami venison chicken
														flank fatback doner.</td>
												</tr>
												<tr>
													<td>219</td>
													<td>Alexander Pierce</td>
													<td>11-7-2014</td>
													<td><span class="label label-warning">Pending</span></td>
													<td>Bacon ipsum dolor sit amet salami venison chicken
														flank fatback doner.</td>
												</tr>
												<tr>
													<td>657</td>
													<td>Bob Doe</td>
													<td>11-7-2014</td>
													<td><span class="label label-primary">Approved</span></td>
													<td>Bacon ipsum dolor sit amet salami venison chicken
														flank fatback doner.</td>
												</tr>
												<tr>
													<td>175</td>
													<td>Mike Doe</td>
													<td>11-7-2014</td>
													<td><span class="label label-danger">Denied</span></td>
													<td>Bacon ipsum dolor sit amet salami venison chicken
														flank fatback doner.</td>
												</tr>
												<tr>
													<td>183</td>
													<td>John Doe</td>
													<td>11-7-2014</td>
													<td><span class="label label-success">Approved</span></td>
													<td>Bacon ipsum dolor sit amet salami venison chicken
														flank fatback doner.</td>
												</tr>
												<tr>
													<td>219</td>
													<td>Alexander Pierce</td>
													<td>11-7-2014</td>
													<td><span class="label label-warning">Pending</span></td>
													<td>Bacon ipsum dolor sit amet salami venison chicken
														flank fatback doner.</td>
												</tr>
												<tr>
													<td>657</td>
													<td>Bob Doe</td>
													<td>11-7-2014</td>
													<td><span class="label label-primary">Approved</span></td>
													<td>Bacon ipsum dolor sit amet salami venison chicken
														flank fatback doner.</td>
												</tr>
												<tr>
													<td>175</td>
													<td>Mike Doe</td>
													<td>11-7-2014</td>
													<td><span class="label label-danger">Denied</span></td>
													<td>Bacon ipsum dolor sit amet salami venison chicken
														flank fatback doner.</td>
												</tr>
												<!-- </tbody> -->
												<!-- <tfoot>
											<tr>
												<th>Rendering engine</th>
												<th>Browser</th>
												<th>Platform(s)</th>
												<th>Engine version</th>
												<th>CSS grade</th>
											</tr>
										</tfoot> -->
											</table>
									</div>
									<!-- /.box-body -->
								</div>
								<!-- /.box -->


							</div>
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