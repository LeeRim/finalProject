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
        <small>회사관리_회원목록</small>
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
                  <th>레벨</th>
                  <th>회사 명</th>
                  <th>대표</th>
                  <th>결제일</th>
                  <th>결제금액</th>
                  <th>이용권</th>
                </tr>
                </thead>
                <tbody>
                <c:if test="${empty companyPaymentList }">
                	<tr>
                		<td colspan="6">조회 된 회사가 없습니다.</td>
                	</tr>
                </c:if>
	            <c:if test="${!empty companyPaymentList }">
                <c:forEach items="${companyPaymentList }" var="cpList" varStatus="status">
	                <tr>
	                  <td>LEVEL ${cpList.cLevel }</td>
	                  <td>${cpList.cName }</td>
	                  <td>${cpList.cOwner }</td>
	                  <td>${cpList.payDate }</td>
	                  <td>${cpList.payMileage }원</td>
	                  <td>${cpList.payVoucher }개월</td>
	                </tr>
                </c:forEach>
                </c:if>
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