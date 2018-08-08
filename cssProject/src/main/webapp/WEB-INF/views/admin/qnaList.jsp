<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url ="/WEB-INF/views/include/header.jsp"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>회원목록</title>
<!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- DataTables -->
  <link rel="stylesheet" href="resources/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
  
<style>
	.row{
		margin-left:auto;
		margin-right:auto;
	}
	.box{
		width:100%;
	}
	.content{
		margin-top:30px;
	}
	.changeLevel{
		border:none;
	}
	.tdBox{
		text-align:center;
	}
	
	.levelCheckbox + label {
	  display: inline-block;
	  width: 17px;
	  height: 17px;
	  border: 1px solid #bcbcbc;
	  cursor: pointer;
	}
	.levelCheckbox:checked + label:after {
	  content: '\2714';
	  font-size: 12px;
	}
	.levelCheckbox {
	  display: none;
	}
	.selDiv{
		float:right;
		margin-top:10px;
		margin-bottom:10px;
		margin-right:13px;
	}
	.levelDiv,.chgDiv{
		border:1px solid #bcbcbc;;
		display:inline-block;
		width:80px;
		padding:5px;
		text-align:center;
		cursor:pointer;
	}
</style>
<script>

</script>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
	<c:import url="admin_side.jsp"/>

    <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        관리자페이지
        <small>문의사항</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Tables</a></li>
        <li class="active">Data tables</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box">

            <div class="box-body">
              <table id="example2" class="table table-bordered table-hover">
                <thead>
                <tr>
                  <th>작성일</th>
                  <th>회사 명</th>
                  <th>제목</th>
                  <th>답변여부</th>
                  <th>답변일</th>
                </tr>
                </thead>
                <tbody>
	                <tr>
	                  <td>2018/08/08</td>
	                  <td>KH정보교육원</td>
	                  <td>집에보내주세요</td>
	                  <td>읽지않음</td>
	                  <td> </td>
	                 </tr>
                </tbody>
              </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
    
  </div>
  <!-- /.content-wrapper -->	


<c:import url="../include/footer.jsp"/>
<!-- DataTables -->
<script src="resources/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="resources/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<!-- SlimScroll -->
<script src="resources/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="resources/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="resources/dist/js/demo.js"></script>
<!-- page script -->
<script>
  $(function () {
    $('#example2').DataTable({
      'paging'      : true,
      'lengthChange': false,
      'searching'   : false,
      'ordering'    : true,
      'info'        : true,
      'autoWidth'   : false
    })
  })
</script>
</body>
</html>