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
padding:0 20px;
/* border: 1px solid black;  */
width:100%;
height:100%;
}


.box-body{
display:inline-block;
width:60%;
column-count: 2;
padding: 0 50px;
  

}
.emp_picture{
display:inline-block;
width:25%;
height: 577.5px;
border-right: 1px solid #f4f4f4;
float:left;

}

.emp_picture2{
display:table;
border: 1px solid #D8D8D8;
margin-top:50px;
margin-left :62px;
margin-bottom :10px;
 width: 151px;
 height: 151px;
}
.emp_picture2_1{
display:table-cell; 
text-align:center; 
vertical-align:middle;
color:#BDBDBD;
font-size:16px;
}

.emp_picture3{
text-align:center;
margin :0 80px;
}

.emp_photo{
		width:150px;
		height:150px;
		
		}

.file-list{
margin-left:-80px;
width:275px;
text-align:center;
}



</style>
<body class="hold-transition skin-blue sidebar-mini">

<script type="text/javascript">

//전화번호 입력
$(function () {
  $('[data-mask]').inputmask()
})


function memberUpdate(){
	$("#joinForm").submit();	
	
}



function validate(){
	
	
	$("#eAddress").val($("#eAddress1").val()+"/"+$.trim($("#eAddress2").val()))

	

	
}
	
$(document).ready(
	      function() {
	         var fileTarget = $('.form-group .upload-hidden');
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
	      });
	      
	      
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
            $("#eAddress1").val(fullAddr);

            // 커서를 상세주소 필드로 이동한다.
            $("#eAddress2").focus();
        }
    }).open();
}


 function photoDelete() {
	 $('.file-list').empty();
	 $('#file-list2').val(null);
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
              <h3 class="box-title">사원정보 수정</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <form role="form" action="updateEmployee.do"  onsubmit="return validate();" method="post" enctype="multipart/form-data">
            	<div class="emp_picture">
            	<div class="emp_picture2">
            	<c:if test="${ select.ePhoto ne null }">
            
            	<img class='emp_photo' src='resources/upload/empPhoto/${select.ePhoto }'>
            	</c:if>
				<c:if test="${select.ePhoto eq null }">
            	 <p class="emp_picture2_1" >사&emsp;진</p>
            	 </c:if>
            	</div>
            	<div class="emp_picture3">
            	<label for="exampleInputFile">사원 사진</label>
              <div class="form-group">
						<div class="btn btn-default btn-file">
							<i class="fa fa-paperclip"></i> Attachment <input   type="file" name="ePhoto1" class="upload-hidden" accept="image/gif, image/jpeg, image/png"
																								onchange="fileCheck(this)" />
						</div>
						
					<input type="hidden" name="ePhoto2" id="file-list2" value="${select.ePhoto}"/>
					
					<div class="file-list">${select.ePhoto}
					<c:if test="${ null ne select.ePhoto }">
					<i class='fa fa-remove' onclick='photoDelete();'></i>
					</c:if>
					</div>
                </div>
                
                </div>
            	
            	
            	</div>
            	
            
            
              <div class="box-body">
              <input type="hidden" name="eKey" value="${select.eKey}"/>
              <div class="form-group" style="width:200px">
                  <label>사원번호</label>
                  <input type="text" class="form-control"  name="eNo" value="${select.eNo}">
                </div>
                
                <div class="form-group" style="width:200px">
                  <label>아이디</label>
                  <input type="text" class="form-control"  name="eId" value="${select.eId}">
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
                  <input type="text" class="form-control" name="eName"  value="${select.eName}">
                </div>
                
                
                
                <div class="form-group"style="width:200px;">
                  <label for="exampleInputPassword1">비밀번호</label>
                  <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password"  name="ePwd" value="1234">
                </div>
                
                <div class="form-group"style="width:200px;">
                  <label for="exampleInputPassword1">비밀번호 확인</label>
                  <input type="password" class="form-control" id="exampleInputPassword2" placeholder="Password"  >
                </div>
                
                <div class="form-group"style="width:200px;">
                <label>부서</label>
                 
                <select class="form-control select2 select2-hidden-accessible" style="width: 100%;" tabindex="-1" aria-hidden="true"  name="eDepartFk">
                  <c:forEach items="${list2 }" var="e2" >
                  <c:if test="${ e2.department eq select.department }">
                  <option selected="selected" value="${e2.eDepartFk}">${e2.department}</option>
                  </c:if>
                  <c:if test="${ e2.department ne select.department }">
                  <option value="${e2.eDepartFk}">${e2.department}</option>
                  </c:if>
                  </c:forEach>
                </select>
              </div>
                <div class="form-group"style="width:200px; margin-bottom: 100px;">
                <label>직급</label>
                 
                <select class="form-control select2 select2-hidden-accessible" style="width: 100%;" tabindex="-1" aria-hidden="true" name="eJobcodeFk">
                 <c:forEach items="${list }" var="e" >
                 <c:if test="${ e.job eq select.job }">
                  <option selected="selected" value="${e.eJobcodeFk}">${e.job}</option>
                  </c:if>
                  <c:if test="${ e.job ne select.job }">
                  <option value="${e.eJobcodeFk}">${e.job}</option>
                  </c:if>
                  </c:forEach>
                  
                </select>
              </div>
                
             
           
                
              <label>사원주소</label>
              <div class="input-group"style="width:400px;">
              
              <input type="hidden" name="eAddress" id="eAddress" />
              	<c:set var="adrr" value="${fn:split(select.eAddress,'/')}" />
              				
                <input type="text" class="form-control" id="eAddress1" 
                value="<c:forEach var="adrr2" items="${adrr}" varStatus="a"><c:if test="${a.count == 1}">${adrr2}</c:if></c:forEach>"/>
                
                    <span class="input-group-btn">
                      <button type="button" class="btn btn-block btn-default" onclick="openAddressPopup();">주소찾기</button>
                    </span>
                    </div>
                    <div class="input-group" style="width:300px; margin-bottom:15px;">
                   
                  <input type="text" class="form-control"id="eAddress2" 
                 value="<c:forEach var="adrr2" items="${adrr}" varStatus="a"><c:if test="${a.count == 2}">${adrr2}</c:if></c:forEach> "/>
               

                  </div>
                <div class="form-group" style="width:250px;">
                <label>내선번호</label>

                <div class="input-group">
                  <div class="input-group-addon">
                    <i class="fa fa-phone"></i>
                  </div>
                  
                  <input type="text" class="form-control"  name="eExten"  data-inputmask='"mask": "999-9999-9999"'  value="${select.eExten}"  data-mask>

                </div>
                <!-- /.input group -->
              </div>
              <div class="form-group" style="width:250px;">
                <label>휴대폰 번호</label>

                <div class="input-group">
                  <div class="input-group-addon">
                    <i class="fa fa-phone"></i>
                  </div>
                  <input type="text" class="form-control"  name="ePhone"  data-inputmask='"mask": "999-9999-9999"'  value="${select.ePhone}"  data-mask>
                  
                </div>
                <!-- /.input group -->
              </div>
              
                  <label for="exampleInputEmail1">이메일 주소</label>
              <div class="input-group" style="margin-bottom:15px;">
                  <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
                  <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email" name="eEmail"  value="${select.eEmail}">
                </div>

                
                <div class="form-group" style="width:250px;">
                <label>생년월일</label>

                <div class="input-group date">
                  <div class="input-group-addon">
                    <i class="fa fa-calendar"></i>
                  </div>
                  <input type="text" class="form-control pull-right" id="datepicker" name="eBirth1" value="${select.eBirth}">
                  
                </div>
                <!-- /.input group -->
              </div>
              
              <div class="form-group" style="width:250px;">
                <label>입사일</label>

                <div class="input-group date">
                  <div class="input-group-addon">
                    <i class="fa fa-calendar"></i>
                  </div>
                  <input type="text" class="form-control pull-right" id="datepicker2" name="eHireDate1" value="${select.eHireDate}">
                </div>
                <!-- /.input group -->
              </div>
              <div class="form-group" style="width:250px;">
                <label>퇴사일</label>

                <div class="input-group date">
                  <div class="input-group-addon">
                    <i class="fa fa-calendar"></i>
                  </div>
                  <input type="text" class="form-control pull-right" id="datepicker3" name="eEntDate1"  value="${select.eEntDate}" >
                </div>
                <!-- /.input group -->
              </div>
              
                  
              
              
               </div>
              
              
              
              <!-- /.box-body -->

              <div class="box-footer" style="text-align:center;">
                <button class="btn btn-primary" id="joinBtn" onclick="memberUpdate();" >수정하기</button>
                
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

$('#datepicker2').datepicker({
 	format: 'yyyy-mm-dd',
 	language: "kr",
 	clearBtn :true,
 	maxViewMode : 2,
 	startDate: '1910-01-01',
 	endDate: 'today',
  autoclose: true
 })

 $('#datepicker3').datepicker({
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