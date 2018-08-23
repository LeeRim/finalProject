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

  width: 80%;
  height: 100%;
  margin: 0px auto;

}

.box-body{
display:inline-block;
height:800px;
width:100%;
text-align: center;
}

.my-ficture{
display:inline-block;
border: 1px solid #D8D8D8;
width:150px;
height:150px;
text-align:center;
vertical-align: middle;
border-top-left-radius: 1.5em;
border-top-right-radius: 1.5em;
border-bottom-left-radius: 1.5em;
border-bottom-right-radius: 1.5em;
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
		
		<div class="box box-primary" style="margin-top:50px; width:700px;">
		<div class="box-header with-border">
              <h3 class="box-title">내 정보</h3>
            </div>
		            <form role="form" action="updateEmployee.do"  onsubmit="return validate();" method="post" enctype="multipart/form-data">
		<div class="box-body">
		<div class="my-ficture">
		<p class="my-ficture2" >사&emsp;진</p>
		
		</div>
		<div><b>ID: yoo1</b></div>
		
		
		
		
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










</script>




<c:import url="../include/footer.jsp"/>
<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. -->
</body>
</html>