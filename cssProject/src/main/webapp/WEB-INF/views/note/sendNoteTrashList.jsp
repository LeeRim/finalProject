<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url ="../include/header.jsp"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 2 | Starter</title>
  	<link rel="stylesheet" href="resources/bower_components/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/plugins/iCheck/flat/blue.css">
    <!-- Slimscroll -->
	<script src="resources/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script src="resources/bower_components/fastclick/lib/fastclick.js"></script>
	<script src="resources/plugins/iCheck/icheck.min.js"></script>
	
	<!-- DataTables 페이징 관련-->
	<link rel="stylesheet" href="resources/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
	<!-- DataTables -->
	<script src="resources/bower_components/datatables.net/js/jquery.dataTables.js"></script>
	<script src="resources/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
  <style>
  	.table{
  		cursor: pointer;
  	}
	a:link  { text-decoration: none; color: #5E5E5E}
	a:visited {  text-decoration: none; color: #5E5E5E}
	a:active {  text-decoration: none; color: #5E5E5E}     
	a:hover { text-decoration: underline; color:#F36798} 
  </style>
  
  <script>
  function checkDelete(){
		var checkKey = new Array();
		 $('.checkNote:checked').each(function() { 
		      console.log($(this).val());
		      checkKey.push($(this).val());
		 });  		
		 console.log(checkKey);
		if (confirm("정말로 삭제하시겠습니까?") == true){    //확인
	  		 location.href="sendNoteDelete.do?snKeies="+checkKey+"&snDeleteYn=Y";
		}else{   //취소
		    return;
		}
	}
  function checkRestore(){
		var checkKey = new Array();
		 $('.checkNote:checked').each(function() { 
		      console.log($(this).val());
		      checkKey.push($(this).val());
		 });  		
		 console.log(checkKey);
		if (confirm("복구 하시겠습니까?") == true){    //확인
	  		 location.href="sendNoteRestore.do?snKeies="+checkKey+"&snDeleteYn=Y";
		}else{   //취소
		    return;
		}
	} 
  
  
  
  $(function () {
	    //Enable iCheck plugin for checkboxes
	    //iCheck for checkbox and radio inputs
	    $('.mailbox-messages input[type="checkbox"]').iCheck({
	      checkboxClass: 'icheckbox_flat-blue',
	      radioClass: 'iradio_flat-blue'
	    });

	    //Enable check and uncheck all functionality
	    $(".checkbox-toggle").click(function () {
	      var clicks = $(this).data('clicks');
	      if (clicks) {
	        //Uncheck all checkboxes
	        $(".mailbox-messages input[type='checkbox']").iCheck("uncheck");
	        $(".fa", this).removeClass("fa-check-square-o").addClass('fa-square-o');
	      } else {
	        //Check all checkboxes
	        $(".mailbox-messages input[type='checkbox']").iCheck("check");
	        $(".fa", this).removeClass("fa-square-o").addClass('fa-check-square-o');
	      }
	      $(this).data("clicks", !clicks);
	    });

	    
	  $(".thead").hide();
	  $('#allTable').DataTable({
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
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
	
	<c:import url="left_column_note.jsp"/>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" style="height: 100%;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Page Header
        <small>Optional description</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
        <li class="active">Here</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content container-fluid">
	<div class="row">
        <div class="col-md-9" style="width: 100%" >
          <div class="box box-primary" style="width: 98%; margin-top: 50px; margin-left: 10px;">
            <div class="box-header with-border">
              <h3 class="box-title">보낸쪽지함 휴지통</h3>

              <div class="box-tools pull-right">
                <div class="has-feedback">
                <form action="searchSendNote.do" method="get">
                  <input type="text" class="form-control input-sm" placeholder="Search Mail" name="keyword">
                  <input type="hidden" name="snDeleteYn" value="Y"/>
                  <span class="glyphicon glyphicon-search form-control-feedback"></span>
                  </form>
                </div>
              </div>
              <!-- /.box-tools -->
            </div>
            <!-- /.box-header -->
            <div class="box-body no-padding">
              <div class="mailbox-controls">
                <!-- Check all button -->
                <button type="button" class="btn btn-default btn-sm checkbox-toggle"><i class="fa fa-square-o"></i>
                </button>
                <div class="btn-group">
                	<!--삭제 버튼  -->
                  <button type="button" class="btn btn-default btn-sm" onclick="checkDelete()"><i class="fa fa-trash-o"></i></button>
                  <button type="button" class="btn btn-default btn-sm" onclick="checkRestore()"><i class="fa fa-refresh"></i></button>
                </div>
                <!-- /.btn-group -->
                <div class="pull-right">
					<!-- 화면 오른쪽위에 버튼 추가시 -->
                </div>
                <!-- /.pull-right -->
              </div>
              <div class="table-responsive mailbox-messages">
                <table class="table table-hover table-striped" id="allTable"  >
                <thead class="thead">
                	<tr>	
                		<th></th>
                		<th></th>
                		<th></th>
                		<th></th>
                		<th></th>
                		<th></th>
                	</tr>
                </thead>
                  <tbody>
                  <c:forEach items="${requestScope.sendNoteList}" var ="sendNote">
                  	<c:if test="${sendNote.snDeleteYn == 'Y' && sendNote.snTrashdeleteYn == 'N'}">
	                  <tr>
	                    <td style="width: 5%"><input type="checkbox" class="checkNote" value="${sendNote.snKey}"></td>
			                    <td class="mailbox-star"><i class="fa fa-envelope-o"></i></td>
		                    <td class="mailbox-name" style="width: 20%">
			                    <c:forEach items="${sendNote.employee}" var ="employee" varStatus="st">
			                    		<c:if test="${st.index < 2}">
					                    	<c:out value="${employee.eName}"/> 
					                    </c:if>
					                    <c:if test="${st.index eq 3}">
					                    	...
					                    </c:if>
			                    </c:forEach>
		                    </td>
	                    <td class="mailbox-subject" style="width: 50%"><a href="sendNoteDetail.do?snKey=${sendNote.snKey}" ><c:out value="${sendNote.snTitle}"/></a></td>
	                    
	                    <td class="mailbox-attachment">
	                    	<c:if test="${sendNote.snAttachYn eq 'Y'}">
	                    		<i class="fa fa-paperclip"></i>
	                    	</c:if>
	                    </td>
	                    <td class="mailbox-date"><c:out value="${sendNote.snWriteDate}"/></td>
	                  </tr>
                  	</c:if>
                  </c:forEach>
                  </tbody>
                </table>
                <!-- /.table -->
              </div>
              <!-- /.mail-box-messages -->
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /. box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
</div>



	<c:import url="../include/footer.jsp"/>
</body>
</html>