<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Join</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="resources/joinCss/images/icons/favicon.ico"/>
<link rel="stylesheet" type="text/css" href="resources/joinCss/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="resources/joinCss/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="resources/joinCss/fonts/iconic/css/material-design-iconic-font.min.css">
<link rel="stylesheet" type="text/css" href="resources/joinCss/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<link rel="stylesheet" type="text/css" href="resources/joinCss/vendor/animate/animate.css">
<link rel="stylesheet" type="text/css" href="resources/joinCss/vendor/css-hamburgers/hamburgers.min.css">
<link rel="stylesheet" type="text/css" href="resources/joinCss/vendor/animsition/css/animsition.min.css">
<link rel="stylesheet" type="text/css" href="resources/joinCss/vendor/select2/select2.min.css">
<link rel="stylesheet" type="text/css" href="resources/joinCss/vendor/daterangepicker/daterangepicker.css">
<link rel="stylesheet" type="text/css" href="resources/joinCss/css/util.css">
<link rel="stylesheet" type="text/css" href="resources/joinCss/css/main.css">
	<script src="resources/joinCss/vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
<style>
	.zipBtn{
		text-align:center;
		vertical-align:middle;
		color:white;
		margin-top:16px;
	}
	.search{
		background:#846add; 
		cursor:pointer;
		transition: all 0.4s;
	}
	.search:hover{
		background:#333333
	}
	.checkDiv{
		margin-left:auto;
		margin-right:auto;
		margin-bottom:5px;
		color:red;
	}
	.contact100-form-btn{
		font-size:20px;
	}
</style>
<script>
	$(function(){
		var idChk= /^[A-Za-z]{1}[A-Za-z0-9]{4,12}$/;

		 $("#eId").on('keyup', function() {
			 var id = $(this).val();
			 var chk = idChk.test(id);
	            if(chk) {
	               $("#checkDiv").html("");
	            } else {
	            	$("#checkDiv").html("5~13자의 영문 소문자+숫자만 가능합니다.");
	            	return;
	            }
	            
	          $.ajax({
	        	 url:"companyIdCheck.do",
	        	 type:"post",
	        	 data:{id:$("#eId").val()},
	        	 success:function(data){
	        		 $("#checkDiv").html(data);
	        	 }
	          });  
	            
	       });
		 
		 $("#ePwd").on('keyup', function() {
			 var id = $(this).val();
			 var chk = idChk.test(id);
	            if(chk) {
	               $("#checkDiv").html("");
	            } else {
	            	$("#checkDiv").html("4~13자의 영문 소문자, 숫자만 가능합니다.");
	            }
	         });	 
	});
	function validate(){
		var address = $("#zipcode").val() + ", " + $("#address1").val() + ", " + $("#address2").val();
		$("#cAddress").val(address);
		
		return true;
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
                //alert(fullAddr.substring(0, 2));
				switch(fullAddr.substring(0, 2)){
				case '서울': 
				case '세종': 					
				case '부산': 
				case '인천': 
				case '대구': 
				case '대전': 
				case '광주': 					
				case '울산':
					console.log("test1 : " +  fullAddr.split(" ")[0]);
					$("#city").val(fullAddr.split(" ")[0]);
					break;				
				default:
					console.log("test2 : " +  fullAddr.split(" ")[1]);
					$("#city").val(fullAddr.split(" ")[1]);
					break;
				};
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                //data.zonecode; //5자리 새우편번호 사용
                $("#zipcode").val(data.zonecode);
                $("#address1").val(fullAddr);
                // 커서를 상세주소 필드로 이동한다.
                $("#address2").focus();
            }
        }).open();
	}
	
	function companyJoin(){
		if($("#checkDiv") == ""){
			$("#joinForm").submit();	
		}
	}
	
	function indexMain(){
		location.href="index.do";
	}
</script>

</head>
<body>

	<div class="bg-container-contact100" style="background-image: url(resources/joinCss/images/bg-01.jpg);">
		<div class="contact100-header flex-sb-m">
			<a href="index.do" class="contact100-header-logo">
				<img src="resources/joinCss/images/icons/logo.png" alt="LOGO" >
			</a>
			<div>
				<button class="btn-show-contact100">
					Join Us
				</button>
			</div>
		</div>
	</div>

	<div class="container-contact100">
		<div class="wrap-contact100">
			

			<div class="contact100-form-title" style="background-image: url(resources/joinCss/images/bg-02.jpg);">
				<span>Join Us</span>
			</div>

			<form class="contact100-form validate-form" id="joinForm" action="companyJoin.do" method="post" onsubmit="return validate();" >
				<input type="hidden" name="cAddress" id="cAddress"/>
				<input type="hidden" name="city" id="city"/>
			
				<div class="checkDiv" id="checkDiv"></div>
				<div class="wrap-input100 validate-input">
					<input id="eId" class="input100" type="text"  name="eId" placeholder="아이디">
					<span class="focus-input100"></span>
					<label class="label-input100" for="name">
						<span class="lnr lnr-user m-b-2"></span>
					</label>
				</div>


				<div class="wrap-input100 validate-input">
					<input id="ePwd" class="input100" type="password" name="ePwd" placeholder="비밀번호">
					<span class="focus-input100"></span>
					<label class="label-input100" for="email">
						<span class="lnr lnr-lock m-b-5"></span>
					</label>
				</div>


				<div class="wrap-input100 validate-input">
					<input id="cName" class="input100" type="text" name="cName" placeholder="회사 명">
					<span class="focus-input100"></span>
					<label class="label-input100" for="phone">
						<span class="lnr lnr-license m-b-2"></span>
					</label>
				</div>
				
				<div class="wrap-input100 validate-input">
					<input id="cOwner" class="input100" type="text" name="cOwner" placeholder="대표명">
					<span class="focus-input100"></span>
					<label class="label-input100" for="phone">
						<span class="lnr lnr-license m-b-2"></span>
					</label>
				</div>


				<div class="wrap-input100 validate-input" style="width:78%;">
					<input id="zipcode" class="input100" type="text" name="zipcode" placeholder="우편번호" readonly>
					<span class="focus-input100"></span>
					<label class="label-input100 rs1" for="message">
						<span class="lnr lnr-map-marker m-b-2"></span>
					</label>
				</div>
				<div class="wrap-input100 validate-input search" style="width:20%">
					<div class="zipBtn" id="searchAddressBtn" onclick="openAddressPopup();">검색</div>
				</div>
				
				<div class="wrap-input100 validate-input">
					<input id="address1" class="input100" type="text" name="address1" placeholder="주소" >
					<span class="focus-input100"></span>
					<label class="label-input100 rs1" for="message">
						<span class="lnr lnr-map m-b-2"></span>
					</label>
				</div>
				
				<div class="wrap-input100 validate-input">
					<input id="address2" class="input100" type="text" name="address2" placeholder="상세주소" >	
					<span class="focus-input100"></span>
					<label class="label-input100 rs1" for="message">
						<span class="lnr lnr-map m-b-2"></span>
					</label>
				</div>

				<div class="container-contact100-form-btn">
					<button class="contact100-form-btn" onclick="companyJoin();">
						신청하기
					</button>
					<button class="contact100-form-btn" onclick="indexMain();" style="margin-left:10px;">
						메인으로
					</button>
				</div>
				
			</form>
		</div>
	</div>
<script src="resources/joinCss/vendor/animsition/js/animsition.min.js"></script>
<script src="resources/joinCss/vendor/bootstrap/js/popper.js"></script>
<script src="resources/joinCss/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="resources/joinCss/vendor/select2/select2.min.js"></script>
<script src="resources/joinCss/vendor/daterangepicker/moment.min.js"></script>
<script src="resources/joinCss/vendor/daterangepicker/daterangepicker.js"></script>
<script src="resources/joinCss/vendor/countdowntime/countdowntime.js"></script>
<script src="resources/joinCss/js/main.js"></script>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-23581568-13');
</script>
</body>
</html>
