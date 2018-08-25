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
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title" style="background-image: url(resources/loginCss/images/bg-01.jpg);">
					<span class="login100-form-title-1">
						Login
					</span>
				</div>

				<form class="login100-form validate-form" action="login.do" method="post">
					<div class="wrap-input100 validate-input m-b-26" data-validate="Username is required">
						<span class="label-input100">ID</span>
						<input class="input100" type="text" name="eId" placeholder="ID">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-18" data-validate = "Password is required">
						<span class="label-input100">Password</span>
						<input class="input100" type="password" name="ePwd" placeholder="PASSWORD">
						<span class="focus-input100"></span>
					</div>

					<div class="flex-sb-m w-full p-b-30">
						<div>
							<a href="login2.do" class="txt1">
								Forgot Account?
							</a>
						</div>
					</div>

					<div class="container-login100-form-btn">
						<button class="login100-form-btn" type="submit">
							Login
						</button>
						<button class="login100-form-btn" type="submit" style="margin-left:10px;">
							메인으로
						</button>
					</div>
				</form>
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
