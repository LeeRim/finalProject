<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url ="/WEB-INF/views/include/header.jsp"/>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
<!-- AdminLTE for demo purposes -->
<script src="resources/dist/js/demo.js"></script>
<link href="resources/Js/summernote.css" rel="stylesheet">
<script src="resources/Js/summernote.js"></script>
<script type="resources/Js/summernote-ko-KR.js"></script>
<script type="text/javascript">
	$(function() {
	  $('#summernote').summernote({
		  height: 600,
		  lang: 'ko-KR'
	  });
	});
</script>

</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
   <c:import url="/WEB-INF/views/border/left_column_board.jsp"/>
	<div class="content-wrapper">
	<section class="content-header">
      <h1>
        Data Tables
        <small>advanced tables</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Tables</a></li>
        <li class="active">Data tables</li>
      </ol>
    </section>
    <div class="row" style="width:95%; margin-right:auto; margin-left:auto; margin-top:20px;">
	<div class="box-body table-responsive no-padding">

<div class="col-md-9">
          <div class="box box-primary">
              <form id="boardGalleryForm"action="boardGalleryForm.do" method="post" enctype="multipart/form-data">
            <div class="box-header with-border">
              <h3 class="box-title">Compose New Message</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <div class="form-group">
                <input type="text" class="form-control" placeholder="제목">
              </div>
              <!-- <div class="form-group">
                <input type="file" class="form-control" placeholder="파일">
              </div> -->
              <div class="form-group">
                    <textarea id="summernote" class="form-control" style="height: 300px">
                    </textarea>
              </div>
              <div class="form-group">
                <div class="btn btn-default btn-file">
                  <i class="fa fa-paperclip"></i> Attachment
                  <input type="file" name="file">
                  <input type="hidden" name="companyKey" value='<c:out value="${user.cKeyFk}"></c:out>'>
				  <input type="hidden" name="bWriter" value='<c:out value="${user.eKey }"></c:out>'>
                </div>
                <p class="help-block">Max. 32MB</p>
              </div>
            </div>
            <!-- /.box-body -->
            <div class="box-footer">
              <div class="pull-right">
                <button type="submit" class="btn btn-primary"><i class="fa fa-envelope-o"></i>작성</button>
              </div>
            </div>
            <!-- /.box-footer -->
              </form>
          </div>
          <!-- /. box -->
        </div>
        <!-- /.col -->
      </div>
</div>
</div>
</div>

<c:import url="/WEB-INF/views/include/footer.jsp"/>
</body>
</html>