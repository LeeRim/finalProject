<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url ="../include/header.jsp"/>
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
  	
  $(function(){
	  
	  
  	$(".table").click(function(){
  		
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
              <h3 class="box-title">보낸쪽지함</h3>

              <div class="box-tools pull-right">
                <div class="has-feedback">
                  <input type="text" class="form-control input-sm" placeholder="Search Mail">
                  <span class="glyphicon glyphicon-search form-control-feedback"></span>
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
                  <button type="button" class="btn btn-default btn-sm"><i class="fa fa-trash-o"></i></button>
                </div>
                <!-- /.btn-group -->
                <div class="pull-right">
					<!-- 화면 오른쪽위에 버튼 추가시 -->

                </div>
                <!-- /.pull-right -->
              </div>
              <div class="table-responsive mailbox-messages">
                <table class="table table-hover table-striped" >
                  <tbody>
                  <c:forEach items="${requestScope.sendNoteList}" var ="sendNote">
                  	<c:if test="${sendNote.snDeleteYn == 'N'}">
	                  <tr>
	                    <td><input type="checkbox"></td>
			                    <td class="mailbox-star"><i class="fa fa-envelope-o"></i></a></td>
		                    <td class="mailbox-name">
			                    <c:forEach items="${sendNote.employee}" var ="employee" varStatus="st">
			                    		<c:if test="${st.index < 2}">
					                    	<c:out value="${employee.eName}"/> 
					                    </c:if>
					                    <c:if test="${st.index eq 3}">
					                    	...
					                    </c:if>
			                    </c:forEach>
		                    </td>
	                    <td class="mailbox-subject"><a href="sendNoteDetail.do?snKey=${sendNote.snKey}" ><c:out value="${sendNote.snTitle}"/></a></td>
	                    
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
            <div class="box-footer no-padding">
              <div class="mailbox-controls">
                <!-- Check all button -->
                <div class="btn-group">
                   	
                </div>
                <div class="pull-right">
                  1-50/200
                  <div class="btn-group">
                    <button type="button" class="btn btn-default btn-sm"><i class="fa fa-chevron-left"></i></button>
                    <button type="button" class="btn btn-default btn-sm"><i class="fa fa-chevron-right"></i></button>
                  </div>
                  <!-- /.btn-group -->
                </div>
                <!-- /.pull-right -->
              </div>
            </div>
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