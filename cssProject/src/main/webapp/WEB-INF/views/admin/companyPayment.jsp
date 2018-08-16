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
	.row,.table-striped{
		margin-left:auto;
		margin-right:auto;
	}
	.box{
		width:100%;
	}
	.content{
		margin-top:30px;
	}
	th,td{
		text-align:center;
	}
	.payment{
		border:1px solid #bcbcbc;
		float:right;
		margin-right:83px;
		background:#bcbcbc;
		color:white;
		padding:5px;
		font-size:18px;
		cursor:pointer;
	}
	.select{
		height:27px;
		width:75px;
	}
	td{
		padding:10px;
	}
</style>
<script>
function kakaopay(){
	
}
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
        결제페이지
        <small>결제</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Tables</a></li>
        <li class="active">Data tables</li>
      </ol>
    </section>

    <form id="updateLevel" method="get" action="updateCompanyLevel.do" onsubmit="return validate();">
	<input type="hidden" name="companyList" id="companyList"/>
	<input type="hidden" name="cLevel" id="cLevel"/>
	<input type="hidden" name="listValue" value="list"/>
    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">Striped Full Width Table</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body no-padding">
              <table class="table table-striped">
                <tr>
                  <th>회사명</th>
                  <th>대표</th>
                  <th>사원수</th>
                  <th >레벨</th>
                  <th>금액(인당)</th>
                  <th>사용기간</th>
                  <th>#</th>
                  <th>금액</th>
                </tr>
                <tr>
                  <td>CSS</td>
                  <td>장건희</td>
                  <td>3</td>
                  <td>1</td>
                  <td>7000</td>
                  <td>
                  	<select class="select">
                  		<option >1개월</option>
                  		<option >3개월</option>
                  		<option >6개월</option>
                  		<option >12개월</option>
                  	</select>
                  </td>
                  <td>선택</td>
                  <td>21,000원</td>
                </tr>
              </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
      <div class="payment" onclick="kakaopay();">결제하기</div>
    </section>
    <!-- /.content -->
    </form>
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