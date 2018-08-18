<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url ="/WEB-INF/views/include/header.jsp"/>
<!DOCTYPE html>

<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 2 | Starter</title>
</head>


<script src="resources/plugins/input-mask/jquery.inputmask.js"></script>

<script src="resources/bower_components/select2/dist/js/select2.full.min.js"></script>
  
<script src="resources/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>

<link rel="stylesheet" href="resources/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.css">





<script src="resources/bower_components/fastclick/lib/fastclick.js"></script>
<script src="resources/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="resources/bower_components/jquery/dist/jquery.min.js"></script>
<style>

.frame{
padding:0 20px;
/* border: 1px solid black;  */
width:100%;
height:100%;
}

.org_map{
float:left;
width:400px;
}

.box-body{
display:inline-block;

column-count: 2;
padding: 0 100px;
  

}


</style>
<body class="hold-transition skin-blue sidebar-mini">

<script type="text/javascript">

//전화번호 입력
$(function () {
  $('[data-mask]').inputmask()
})


function memberJoin(){
	$("#joinForm").submit();	
	
}



function validate(){
	
	$("#eAddress").val($("#eAddress1").val()+","+$("#eAddress2").val())

	

	
}
	
$(document).ready(
	      function() {
	         var fileTarget = $('.form-group .upload-hidden');
	         fileTarget.on('change',function() { // 값이 변경되면 
	         var filenames ="";
	            if (window.FileReader) { // modern browser 
	            
	            for(var i=0;i<$(this)[0].files.length;i++){
	               var file = $(this)[0].files[i];
	               filenames += $(this)[0].files[i].name+"&nbsp<i class='fa fa-remove'></i><br>";
	               console.log(filenames);
	            }
	            } else { // old IE
	               var filename = $(this).val().split('/').pop().split('\\').pop(); // 파일명만 추출
	            }
	            // 추출한 파일명 삽입 
	            $('.file-list').html(filenames);
	         });
	      });
</script>


<div class="wrapper">
	
	<c:import url="../include/left_column.jsp"/>
  
  

  <div class="content-wrapper">
    <section class="content-header">
      <h1>
        조직도
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
        <li class="active">Here</li>
      </ol>
    </section>

    <section>
		<div class="frame">
		
		<div class="box box-primary" style="margin-top:50px; width:1000px;">
            <div class="box-header with-border">
              <h3 class="box-title">사원등록</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <form role="form" action="insertMember.do"  onsubmit="return validate();" method="post" enctype="multipart/form-data">
            
              <div class="box-body">
              
              <div class="form-group" style="width:200px">
                  <label>사원번호</label>
                  <input type="text" class="form-control"  name="eNo" >
                </div>
                
                <div class="form-group" style="width:200px">
                  <label>아이디</label>
                  <input type="text" class="form-control"  name="eId" >
                </div>
                <!-- 성공 할때 -->
<!--                   <div class="form-group has-success" style="width:200px"> -->
<!--                   <label>아이디</label> -->
<!--                   <input type="text" class="form-control"  name="eId" >  -->
<!-- 					<label class="control-label" for="inputSuccess"><i class="fa fa-check"></i> </label> -->
<!--                   <input type="text" class="form-control" id="inputSuccess" placeholder="Enter ..."> -->
<!--                 </div> -->
                
               <div class="form-group"style="width:200px;">
                  <label>사원이름</label>
                  <input type="text" class="form-control" name="eName" >
                </div>
                
                
                
                <div class="form-group"style="width:200px;">
                  <label for="exampleInputPassword1">비밀번호</label>
                  <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password"  name="ePwd" >
                </div>
                
                <div class="form-group"style="width:200px;">
                  <label for="exampleInputPassword1">비밀번호 확인</label>
                  <input type="password" class="form-control" id="exampleInputPassword2" placeholder="Password"  name="ePwd" >
                </div>
                
                <div class="form-group"style="width:200px;">
                <label>부서</label>
                 
                <select class="form-control select2 select2-hidden-accessible" style="width: 100%;" tabindex="-1" aria-hidden="true"  name="eDepartFk">
                  <c:forEach items="${list2 }" var="e2" >
                  <option value="${e2.eDepartFk}">${e2.department}</option>
                  </c:forEach>
                </select>
              </div>
                <div class="form-group"style="width:200px; margin-bottom: 100px;">
                <label>직급</label>
                 
                <select class="form-control select2 select2-hidden-accessible" style="width: 100%;" tabindex="-1" aria-hidden="true" name="eJobcodeFk">
                 <c:forEach items="${list }" var="e" >
                  <option value="${e.eJobcodeFk}">${e.job}</option>
                  </c:forEach>
                  
                </select>
              </div>
                
  				<div class="form-group">
                  <label for="exampleInputFile">사원 사진</label>
                 <input type="file" onchange="fileCheck(this)" accept="image/gif, image/jpeg, image/png" name="ePhoto1" />

                </div>
             
           
                
              <label>사원주소</label>
              <div class="input-group"style="width:400px;">
              
              <input type="hidden" name="eAddress" id="eAddress" />
              
                <input type="text" class="form-control" id="eAddress1"/>
                    <span class="input-group-btn">
                      <button type="button" class="btn btn-block btn-default">주소찾기</button>
                    </span>
                    </div>
                    <div class="input-group" style="width:300px; margin-bottom:15px;">
                  <input type="text" class="form-control"id="eAddress2"/>
                  </div>
                <div class="form-group" style="width:250px;">
                <label>내선번호</label>

                <div class="input-group">
                  <div class="input-group-addon">
                    <i class="fa fa-phone"></i>
                  </div>
                  
                  <input type="text" class="form-control"  name="eExten"  data-inputmask='"mask": "999-9999-9999"' data-mask>
<!--                   <input type="text" class="form-control" data-inputmask="&quot;mask&quot;: &quot;(999) 9999-9999&quot;" data-mask="" name="eExten"  value="11">
 -->                  
                </div>
                <!-- /.input group -->
              </div>
              <div class="form-group" style="width:250px;">
                <label>휴대폰 번호</label>

                <div class="input-group">
                  <div class="input-group-addon">
                    <i class="fa fa-phone"></i>
                  </div>
                  <input type="text" class="form-control"  name="ePhone"  data-inputmask='"mask": "999-999-9999"' data-mask>
                   <!-- <input type="text" class="form-control"data-inputmask="'mask': ['999-999-9999', '+099 99 99 9999[9]-9999']" data-mask> -->
<!--                   <input type="text" class="form-control" data-inputmask="'phone': ['999-999-9999 [x99999]', '+099 99 99 9999[9]-9999']" data-mask="phone" name="ePhone" >
 -->                  
                </div>
                <!-- /.input group -->
              </div>
              
                  <label for="exampleInputEmail1">이메일 주소</label>
              <div class="input-group" style="margin-bottom:15px;">
                  <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
                  <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email" name="eEmail" >
                </div>

                
                <div class="form-group" style="width:250px;">
                <label>생년월일</label>

                <div class="input-group date">
                  <div class="input-group-addon">
                    <i class="fa fa-calendar"></i>
                  </div>
                  <input type="text" class="form-control pull-right" id="datepicker" name="eBirth1">
                  
                </div>
                <!-- /.input group -->
              </div>
              
              <div class="form-group" style="width:250px;">
                <label>입사일</label>

                <div class="input-group date">
                  <div class="input-group-addon">
                    <i class="fa fa-calendar"></i>
                  </div>
                  <input type="text" class="form-control pull-right" id="datepicker2" name="eHireDate1" >
                </div>
                <!-- /.input group -->
              </div>
              
                  <label for="exampleInputFile">사원 사진</label>
              <div class="form-group">
						<div class="btn btn-default btn-file">
							<i class="fa fa-paperclip"></i> Attachment <input   type="file" name="ePhoto" class="upload-hidden" accept="image/gif, image/jpeg, image/png"
																								onchange="fileCheck(this)"/>
						</div>
					<div class="file-list"></div>
                </div>
              
              
               </div>
              
              
              
              <!-- /.box-body -->

              <div class="box-footer" style="text-align:center;">
                <button class="btn btn-primary" id="joinBtn" onclick="memberJoin();" >등록하기</button>
                
              </div>
            </form>
          </div>
		
		
		</div>

   
   


 



    </section>
    
  </div>
 
</div>
<script type="text/javascript">
function fileCheck(obj) {
    pathpoint = obj.value.lastIndexOf('.');
    filepoint = obj.value.substring(pathpoint+1,obj.length);
    filetype = filepoint.toLowerCase();
    if(filetype=='jpg' || filetype=='gif' || filetype=='png' || filetype=='jpeg' || filetype=='bmp') {

        // 정상적인 이미지 확장자 파일일 경우 ...

    } else {
        alert('이미지 파일만 선택할 수 있습니다.');

        parentObj  = obj.parentNode
        node = parentObj.replaceChild(obj.cloneNode(true),obj);

        return false;
    }
    if(filetype=='bmp') {
        upload = confirm('BMP 파일은 웹상에서 사용하기엔 적절한 이미지 포맷이 아닙니다.\n그래도 계속 하시겠습니까?');
        if(!upload) return false;
    }
}

// //Date picker
// $('#datepicker').datepicker({
// 	format: 'yyyy-mm-dd',
//   autoclose: true
// })

// $('#datepicker2').datepicker({
// 	format: 'yyyy-mm-dd',
//   autoclose: true
// })











</script>




<c:import url="../include/footer.jsp"/>
<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. -->
</body>
</html>