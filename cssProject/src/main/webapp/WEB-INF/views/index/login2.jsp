<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login V15</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" type="image/png" href="resources/loginCss/images/icons/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="resources/loginCss/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="resources/loginCss/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="resources/loginCss/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
	<link rel="stylesheet" type="text/css" href="resources/loginCss/vendor/animate/animate.css">
	<link rel="stylesheet" type="text/css" href="resources/loginCss/vendor/css-hamburgers/hamburgers.min.css">
	<link rel="stylesheet" type="text/css" href="resources/loginCss/vendor/animsition/css/animsition.min.css">
	<link rel="stylesheet" type="text/css" href="resources/loginCss/vendor/select2/select2.min.css">
	<link rel="stylesheet" type="text/css" href="resources/loginCss/vendor/daterangepicker/daterangepicker.css">
	<link rel="stylesheet" type="text/css" href="resources/loginCss/css/util.css">
	<link rel="stylesheet" type="text/css" href="resources/loginCss/css/main.css">
</head>




<script type="text/javascript">


function findPwd(){
	
var email = $("#email").val();
	
console.log(email);


 $.ajax({
    type      : 'POST',
    url         : 'findPwd.do',
    traditional : true,
    data        : { 'main' : email},
    success     : function(data) {
    	
    	console.log("yn : "+data)
    	
    	
    	if(data >= 1 ){
    		alert("입력하신 이메일로 아이디와 임시 비밀번호가 발송 되었습니다.");
    		
    	}
    	else{
    		alert("가입된 이메일 정보가 없습니다. 가입시 등록했던 이메일 정보를 다시 확인해주세요.");
    		
    	}
    	
    	
	    
	    
    },
    error       : function(request, status, error) {
        alert(error);
    }
}); 

}

</script>






<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title" style="background-image: url(resources/loginCss/images/bg-01.jpg);">
					<span class="login100-form-title-1">
						아이디/비밀번호 찾기
					</span>
				</div>

				<div class="login100-form validate-form" >
						<div class=" validate-input m-b-26" style="margin:0 0 40px -40px;">
							가입시 등록한 이메일 정보를 입력해 주시기 바랍니다.
						</div>
						

					<div class="wrap-input100 validate-input m-b-18" data-validate = "Password is required">
						<span class="label-input100" style=" left: -125px; width: 100px;" >E-mail 주소</span>
						<input class="input100" type="email"  id="email" placeholder="E-mail">
						<span class="focus-input100"></span>
					</div>

      <!-- 가입된 이메일 정보가 없습니다. 가입시 등록했던 이메일 정보를 다시 확인해주세요. -->
	  <!-- 입력하신 이메일로 아이디와 임시 비밀번호가 발송 되었습니다. -->
					<div class="container-login100-form-btn" style="padding: 0 70px;">
						<button class="login100-form-btn" onclick="findPwd();">
							확인
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<script src="resources/loginCss/vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="resources/loginCss/vendor/animsition/js/animsition.min.js"></script>
	<script src="resources/loginCss/vendor/bootstrap/js/popper.js"></script>
	<script src="resources/loginCss/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="resources/loginCss/vendor/select2/select2.min.js"></script>
	<script src="resources/loginCss/vendor/daterangepicker/moment.min.js"></script>
	<script src="resources/loginCss/vendor/daterangepicker/daterangepicker.js"></script>
	<script src="resources/loginCss/vendor/countdowntime/countdowntime.js"></script>
	<script src="resources/loginCss/js/main.js"></script>

</body>
</html>
