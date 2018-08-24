<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="../include/header.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>AdminLTE 2 | Starter</title>
<link rel="stylesheet" href="resources/plugins/iCheck/flat/blue.css">
<!-- bootstrap wysihtml5 - text editor -->
<link rel="stylesheet"
	href="resources/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

<!-- summerNote 관련  -->
<!-- include libraries(jQuery, bootstrap) -->
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css"
	rel="stylesheet">
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>

<!-- include summernote css/js-->
<link href="resources/Js/summernote.css" rel="stylesheet">
<script src="resources/Js/summernote.js"></script>
<script src="resources/Js/summernote-ko-KR.js"></script>
<script>
  		var names = new Array();
  		var num = new Array();
  		
  		
  	function select(no,name){
  		var nameFlag = true;
  		
  		for(var i in names){
 			if(names[i]==name){
 				nameFlag=false;
  			}
  		}
  		
  		if(nameFlag){
			names.push(name);
			num.push(no);
  		}else{
  			names.splice(names.indexOf(name),1);
  			num.splice(num.indexOf(no),1);
  		}
  		console.log(names);
  		console.log(num);
		var test = $("#to").val();
  		
		$("#to").val(names.join(", "));  							  				
  		
  		$("#receive").val(names);
  		$("#receiveNo").val(num);
  	}
  	
  	$(function() {
  	  $('#summernote').summernote({
  		  height: 500,
  		  lang: 'ko-KR'
  	  });
  	});
	
  	function cancel(){
  		location.href="moveNote.do";	
  	};
  	
	   $(document).ready(
	      function() {
	         var fileTarget = $('.form-group .upload-hidden');
	         fileTarget.on('change',function() { // 값이 변경되면 
	         var filenames ="";
	            if (window.FileReader) { // modern browser 
	            
	            for(var i=0;i<$(this)[0].files.length;i++){
	               var file = $(this)[0].files[i];
	               filenames += $(this)[0].files[i].name+"<br>";
	               console.log(filenames);
	            }
	            } else { // old IE
	               var filename = $(this).val().split('/').pop().split('\\').pop(); // 파일명만 추출
	            }
	            // 추출한 파일명 삽입 
	            $('.file-list').html(filenames);
	         });
	         $("#labelBtn").hover(function(){
	             $("#labelBtn").css("background","#337ab7");
	             $("#labelBtn").css("border","none");
	           });
	      });
	   
	   function check(){
		   if($("#receiveNo").val() == ""){
			   alert("받는 사람을 입력해주세요.");
			   return false;
		   }else if($("#title").val() == ""){
			   alert("제목을 입력해주세요.");
			   return false;
		   }else{
			   return true;
		   }
			   
	   }
  </script>

</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">

		<c:import url="left_column_note.jsp" />



		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper" style="height: 100%;">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					사내쪽지
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
					<li class="active">Here</li>
				</ol>
			</section>

			<!-- Main content -->
			<section class="content container-fluid">
				<div class="row">
					<div class="col-md-3">
						<label class="btn btn-primary btn-block margin-bottom"
							id="labelBtn">수신자 선택</label>

						<c:forEach items="${department}" var="department">
							<div class="box box-solid" style="width: 100%">
								<div class="box-header with-border">
									<h3 class="box-title">
										<c:out value="${department.department}" />
									</h3>

									<div class="box-tools">
										<button type="button" class="btn btn-box-tool"
											data-widget="collapse">
											<i class="fa fa-minus"></i>
										</button>
									</div>
								</div>
								<div class="box-body no-padding">
									<ul class="nav nav-pills nav-stacked">
										<c:forEach items="${employee}" var="employee">
											<c:if test="${employee.department == department.department}">
												<li><a href="#"
													onclick="select(${employee.eKey},'${employee.eName}');"><i
														class="fa fa-circle-o text-red"></i> <c:out
															value="${employee.eName}" /></a></li>
											</c:if>
										</c:forEach>
									</ul>
								</div>
								<!-- /.box-body -->
							</div>
						</c:forEach>
						<!-- /.box -->
					</div>
					<!-- /.col -->

					<div class="col-md-9">
						<div class="box box-primary" style="width: 80%">
							<div class="box-header with-border">
								<h3 class="box-title">Compose New Message</h3>
							</div>
							<!-- /.box-header -->
							<form action="sendNote.do" method="post"
								enctype="multipart/form-data">
								<div class="box-body">
									<input type="hidden" value="${sessionScope.user.eKey}"
										name="snSenderFk" /> <input type="hidden" value=""
										name="receiveNo" id="receiveNo" />
									<div class="form-group">
										<input class="form-control" placeholder="To:" id="to"
											name="receive" readonly>
									</div>
									<div class="form-group">
										<input class="form-control" placeholder="Subject:"
											name="snTitle" id="title">
									</div>
									<div class="form-group">
										<textarea id="summernote" class="form-control"
											style="height: 300px" name="snContent">
                    </textarea>
									</div>
									<div class="form-group" style="height: 100px;">
										<div style="float: left; height: 100px; width: 130px;">
											<div class="btn btn-default btn-file">
												<i class="fa fa-paperclip"></i> Attachment <input
													type="file" name="files" multiple="multiple"
													class="upload-hidden">
											</div>
											<p class="help-block">Max. 32MB</p>
										</div>
										<div class="file-list"></div>
									</div>
								</div>
								<!-- /.box-body -->
								<div class="box-footer">
									<div class="pull-right">
										<button type="submit" class="btn btn-primary"
											onclick="return check()">
											<i class="fa fa-envelope-o"></i> 전송
										</button>
									</div>
									<button onclick="cancel();" class="btn btn-default">
										<i class="fa fa-times"></i> 취소
									</button>
								</div>
							</form>
							<!-- /.box-footer -->
						</div>
						<!-- /. box -->
					</div>
					<!-- /.col -->
				</div>
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
	</div>



	<c:import url="../include/footer.jsp" />
</body>
</html>