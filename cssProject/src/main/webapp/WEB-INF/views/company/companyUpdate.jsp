<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


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
<script src="resources/bower_components/bootstrap-datepicker/dist/locales/bootstrap-datepicker.kr.min.js"></script>

<link rel="stylesheet" href="resources/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.css">

<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>



<style>


.frame{
/* border: 1px solid black;  */
width:80%;
margin: 0 auto;
height:100%;
}


.box-body{
display:inline-block;
width:100%;
height:500px;
column-count: 2;
padding: 30px 0;
margin-left:80px;
  

}
.emp_picture{
display:inline-block;
height:230px;
margin-left:50px;
width:300px;
}

.emp_picture2{
display:table;
border: 1px solid #D8D8D8;
margin-left :10%;
margin-bottom :10px;
 width: 121px;
 height: 121px;
}
.emp_picture2_1{
display:table-cell; 
text-align:center; 
vertical-align:middle;
color:#BDBDBD;
font-size:16px;
}
.emp_picture2_2{
display:table-cell; 
text-align:center; 
vertical-align:middle;
color:#BDBDBD;
font-size:16px;
}

.emp_picture3{
text-align:center;
margin-left:-115px;
}

.emp_photo{
		width:120px;
		height:120px;
		
		}

.file-list .file-list2{

}

#blah {
 width: 120px;
 height: 120px;
}
#blahs{
 width: 120px;
 height: 120px;
}

.pull-right{
background-color: white !important;
}
  

}




</style>

<body class="hold-transition skin-blue sidebar-mini">

<script type="text/javascript">


$(document).ready(
		
		//로고 변경
	      function() {
	         var fileTarget = $('.upLogo');
	         fileTarget.on('change',function() { // 값이 변경되면 
	        
	        	 
	         var filenames ="";
	         var filenames2 ="";
	            if (window.FileReader) { // modern browser 
	            
	            for(var i=0;i<$(this)[0].files.length;i++){
	               var file = $(this)[0].files[i];
	               filenames += $(this)[0].files[i].name+"&nbsp<i class='fa fa-remove' onclick='photoDelete();'></i><br>";
	               filenames2 +=$(this)[0].files[i].name;
	               console.log(filenames);
	            }
	            } else { // old IE
	               var filename = $(this).val().split('/').pop().split('\\').pop(); // 파일명만 추출
	            }
	            // 추출한 파일명 삽입 
	            $('.file-list').html(filenames);
	            $('#file-list2').val(filenames2);
	            

	         });
	         
	         $(function() {
		        	
		        	
	             $("#imgInp").on('change', function(){
	                 readURL(this);
	             });
	         });
	         

	         function readURL(input) {
	             if (input.files && input.files[0]) {
	             var reader = new FileReader();

	             reader.onload = function (e) {
	            	 	
	            	 $("#holder").empty();
		              
	            	 var html = $("#holder").html("<img id='blah' src='#'/>")
	                  $('#blah').attr('src', e.target.result);
	                   
	                     
	                 }

	               reader.readAsDataURL(input.files[0]);
	               
	               
	             }
	         }
	         
	         
	         
	         
	         //사인변경
		         var fileTarget = $('.upSign');
		         fileTarget.on('change',function() { // 값이 변경되면 
		        
		        	 
		         var filenames ="";
		         var filenames2 ="";
		            if (window.FileReader) { // modern browser 
		            
			            for(var i=0;i<$(this)[0].files.length;i++){
			               var file = $(this)[0].files[i];
			               filenames += $(this)[0].files[i].name+"&nbsp<i class='fa fa-remove' onclick='photoDelete2();'></i><br>";
			               filenames2 +=$(this)[0].files[i].name;
			               console.log(filenames);
			            }
		            } else { // old IE
		               var filename = $(this).val().split('/').pop().split('\\').pop(); // 파일명만 추출
		            }
		            // 추출한 파일명 삽입 
		            $('.file-lists').html(filenames);
		            $('#file-lists2').val(filenames2);
		            

		         });
		         
		         
		         $(function() {
			        	
			        	
		             $("#imgInps").on('change', function(){
		                 readURL2(this);
		             });
		         });
		         

		         function readURL2(input) {
		             if (input.files && input.files[0]) {
		             var reader = new FileReader();

		             reader.onload = function (e) {
		            	 	
		            	 $("#holders").empty();
			              
		            	 var html = $("#holders").html("<img id='blahs' src='#'/>")
		                  $('#blahs').attr('src', e.target.result);
		                   
		                     
		                 }

		               reader.readAsDataURL(input.files[0]);
		               
		               
		             }
		         }
	         
	         
	         
	         

	      });




function validate(){
	
	
	$("#cAddress").val($("#cAddress1").val()+"/"+$.trim($("#cAddress2").val()))


}

function openAddressPopup(){
	new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var fullAddr = ''; // 최종 주소 변수
            var extraAddr = ''; // 조합형 주소 변수

            // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                fullAddr = data.roadAddress;

            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                fullAddr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
            if(data.userSelectedType === 'R'){
                //법정동명이 있을 경우 추가한다.
                if(data.bname !== ''){
                    extraAddr += data.bname;
                }
                // 건물명이 있을 경우 추가한다.
                if(data.buildingName !== ''){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            //data.zonecode; //5자리 새우편번호 사용
            $("#cAddress1").val(fullAddr);

            // 커서를 상세주소 필드로 이동한다.
            $("#cAddress2").focus();
        }
    }).open();
}



function photoDelete() {
	 $('.file-list').empty();
	 $('#holder').empty();
	 
	 $("#imgInp").val(null);


	 
	 var html = $("#holder").html("<p class='emp_picture2_1' >사&emsp;진</p>")
	  
	 
	 $('#file-list2').val(null);


}

function photoDelete2() {
	 $('.file-lists').empty();
	 $('#holders').empty();
	 
	 $("#imgInps").val(null);


	 
	 var html = $("#holders").html("<p class='emp_picture2_2' >사&emsp;진</p>")
	  
	 
	 $('#file-lists2').val(null);


}



	      
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
		
		<div class="box box-primary" style="margin-top:50px; width:1100px;">
		<div class="box-header with-border">
              <h3 class="box-title">회사정보 수정</h3>
            </div>
		<div style="width:80%; margin: 0 auto;">
            <!-- /.box-header -->
            <!-- form start -->
            <form role="form" action="companyModify.do"  onsubmit="return validate();" method="post" enctype="multipart/form-data">
            	
            	
            
            
              <div class="box-body">
             <div class="form-group" style="width:200px; margin-bottom:20px;" id="inputNo">
                  <label>회사명</label>
                  <input type="text" class="form-control" name="cName" id="eNoCheck" autocomplete="off" maxlength="20" value="${select.cName }">
                </div>
                
             <div class="form-group" style="width:200px; margin-bottom:30px;" id="inputId">
                  <label>대표자 명</label>
                  <input type="text" class="form-control" name="cOwner" id="idCheck" autocomplete="off" maxlength="20" value="${select.cOwner }">
                  </div>
               
               
                  
                  
                  
                 <div>
              <label>사원주소</label>
              <div class="input-group"style="width:400px;">
              
              <input type="hidden" name="cAddress" id="cAddress" />
              	<c:set var="adrr" value="${fn:split(select.cAddress,'/')}" />
              				
                <input type="text" class="form-control" id="cAddress1" 
                value="<c:forEach var="adrr2" items="${adrr}" varStatus="a"><c:if test="${a.count == 1}">${adrr2}</c:if></c:forEach>"/>
                
                    <span class="input-group-btn">
                      <button type="button" class="btn btn-block btn-default" onclick="openAddressPopup();">주소찾기</button>
                    </span>
                    </div>
                    <div class="input-group" style="width:300px; margin-bottom:35px;">
                   
                  <input type="text" class="form-control"id="cAddress2" 
                 value="<c:forEach var="adrr2" items="${adrr}" varStatus="a"><c:if test="${a.count == 2}">${adrr2}</c:if></c:forEach> "/>
               </div>
               </div>
               
                  
                  <div class="form-group" style="width:250px;">
                <label>서비스 종료일</label>

                <div class="input-group date">
                  <div class="input-group-addon">
                    <i class="fa fa-calendar"></i>
                  </div>
                  <input type="text" class="form-control pull-right" id="datepicker" name="cCloseDay" value="${select.cCloseDay }"  readonly>
                  
                </div>
                <!-- /.input group -->
              </div>
              
              
               <div class="emp_picture">
            	<div class="emp_picture2" id="holder">
            	<c:if test="${ select.cLogo ne null }">
            
            	<img class='emp_photo' src='resources/upload/CompanyLogo/${select.cLogo }'>
            	</c:if>
				<c:if test="${select.cLogo eq null }">
            	 <p class="emp_picture2_1" >사&emsp;진</p>
            	 </c:if>
            	</div>
            	<div class="emp_picture3">
            	<label for="exampleInputFile">회사 로고</label>
              <div class="form-group">
						<div class="btn btn-default btn-file">
							<i class="fa fa-paperclip"></i> Attachment <input   type="file" id="imgInp" name="cLogo1" class="upload-hidden upLogo" accept="image/gif, image/jpeg, image/png"
																								onchange="fileCheck(this)" />
						</div>
						
					<input type="hidden" name="cLogo2" id="file-list2" value="${select.cLogo}"/>
					
					<div class="file-list">${select.cLogo}
					<c:if test="${ null ne select.cLogo }">
					<i class='fa fa-remove' onclick='photoDelete();'></i>
					</c:if>
					</div>
                </div>
                
                </div>
            	
            	
            	</div>  
            	
            	
            	<div class="emp_picture">
            	<div class="emp_picture2" id="holders">
            	<c:if test="${ select.cSign ne null }">
            
            	<img class='emp_photo' src='resources/upload/CompanySign/${select.cSign }'>
            	</c:if>
				<c:if test="${select.cSign eq null }">
            	 <p class="emp_picture2_2" >사&emsp;진</p>
            	 </c:if>
            	</div>
            	<div class="emp_picture3">
            	<label for="exampleInputFile">회사 도장</label>
              <div class="form-group">
						<div class="btn btn-default btn-file">
							<i class="fa fa-paperclip"></i> Attachment <input   type="file" id="imgInps" name="cSign1" class="upload-hidden upSign" accept="image/gif, image/jpeg, image/png"
																								onchange="fileCheck(this)" />
						</div>
						
					<input type="hidden" name="cSign2" id="file-lists2" value="${select.cSign}"/>
					
					<div class="file-lists">${select.cSign}
					<c:if test="${ null ne select.cSign }">
					<i class='fa fa-remove' onclick='photoDelete2();'></i>
					</c:if>
					</div>
                </div>
                
                </div>
            	
            	
            	</div>
                  
                  

             
              </div>
              

              

              <div class="box-footer" style="text-align:center;">
                <button class="btn btn-primary" id="joinBtn" onclick="memberUpdate();" >수정하기</button>
                
              </div>
            </form>
          </div>
		
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

    } else if(filetype!='jpg' || filetype!='gif' || filetype!='png' || filetype!='jpeg' || filetype!='bmp') {
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

//Date picker
 $('#datepicker').datepicker({
 	format: 'yyyy-mm-dd',
 	language: "kr",
 	clearBtn :true,
 	maxViewMode : 2,
 	startDate: '1910-01-01',
 	endDate: 'today',
  autoclose: true
 })










</script>




<c:import url="../include/footer.jsp"/>
<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. -->
</body>
</html>