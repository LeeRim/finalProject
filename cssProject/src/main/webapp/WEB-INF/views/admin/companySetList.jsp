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
		border:noen;
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
	
	function submitLevel(level,obj){
		$(".levelDiv").each(function(){
			if($(this).text() == $(obj).text()){
				$(this).css("border","2px solid gray");
			}else{
				$(this).css("border","1px solid #bcbcbc");
			}
		});
		$("#cLevel").val(level);
		console.log($("#cLevel").val());
	}
	
	function validate(){
		
	var companies = new Array();
	$(".levelCheckbox").each(function(value){
		if($(this).prop("checked")){
			companies.push($(this).val());
		}
	});
	$("#companyList").val(companies.join(","));
	
	return true;
	}
	
	function updateCompanyLevel(){
		$("#updateLevel").submit();
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
        회원관리<small>_ 회원설정</small>
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
	<input type="hidden" name="listValue" value="setList"/>
    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-body">
          <div class="selDiv">
			<div class="levelDiv" id="level0" onclick="submitLevel(0,this);">LEVEL 0</div>
			<div class="levelDiv" id="level1" onclick="submitLevel(1,this);">LEVEL 1</div>
			<div class="levelDiv" id="level2" onclick="submitLevel(2,this);">LEVEL 2</div>
			<div class="levelDiv" id="level3" onclick="submitLevel(3,this);">LEVEL 3</div>
			<div class="chgDiv" onclick="updateCompanyLevel();">변경</div>
          </div>
              <table id="example2" class="table table-bordered table-hover" >
                <thead>
                <tr>
                  <th>레벨</th>
                  <th>회사 명</th>
                  <th>사원 수</th>
                  <th>대표</th>
                  <th>주소</th>
                  <th>마일리지</th>
                  <th>사용 종료일</th>
                  <th>등급 변경</th>
                </tr>
                </thead>
                <tbody>
                <c:if test="${empty list }">
                	<tr>
                		<td colspan="8">조회 된 회사가 없습니다.</td>
                	</tr>
                </c:if>
                <c:if test="${!empty list }">
                <c:forEach items="${list }" var="n" varStatus="status">
	                <tr>
	                  <td>LEVEL ${n.cLevel }</td>
	                  <td>${n.cName }</td>
	                  <td>330</td>
	                  <td>${n.cOwner }</td>
	                  <td>${n.cAddress }</td>
	                  <td>${n.cMileage }</td>
	                  <td>${n.cCloseDay }</td>
	                  <td class="tdBox">
	                  	<input type="checkbox" value="${n.cKey }" name="levelCheckbox" class="levelCheckbox" id="cb${status.count }">
    					<label for="cb${status.count }"></label>
	                  </td>
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
	</form>
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