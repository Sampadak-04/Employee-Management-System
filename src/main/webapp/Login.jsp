<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EMS | Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="images/icons/favicon.ico" />
<link rel="stylesheet" type="text/css"
	href="assets/js/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="assets/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="assets/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<link rel="stylesheet" type="text/css"
	href="assets/js/vendor/animate/animate.css">
<link rel="stylesheet" type="text/css"
	href="assets/js/vendor/css-hamburgers/hamburgers.min.css">
<link rel="stylesheet" type="text/css"
	href="assets/js/vendor/animsition/css/animsition.min.css">
<link rel="stylesheet" type="text/css"
	href="assets/js/vendor/select2/select2.min.css">
<link rel="stylesheet" type="text/css"
	href="assets/js/vendor/daterangepicker/daterangepicker.css">
<link rel="stylesheet" type="text/css" href="assets/css/util.css">
<link rel="stylesheet" type="text/css" href="assets/css/main.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="sweetalert2.all.min.js"></script>
<script src="sweetalert2.min.js"></script>
<link rel="stylesheet" href="sweetalert2.min.css">
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script type="text/javascript">
	window.history.forward();
	function noBack() {
		window.history.forward();
	}
</script>
</head>
<body style="background-color: #666666;">
	<%
	try {
		boolean b = (boolean) session.getAttribute("login-success");
		if (!b) {
	%>
	<div>
		<script>
			Swal.fire({
				icon : 'error',
				title : 'Oops...',
				text : 'Invalid credentials..!',
			})
		</script>
	</div>
	<%
	}
	} catch (Exception e) {
	// e.printStackTrace();
	}
	session.removeAttribute("login-success");
	%>
	<%
	try {
		boolean b = (boolean) session.getAttribute("not-login");
		if (b) {
	%>
	<div class="alert alert-danger alert-dismissible fade in">
		<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
		<strong>Oops!</strong> Login here first...!
	</div>
	<%
	}
	} catch (Exception e) {
	// e.printStackTrace();
	}
	session.removeAttribute("login-success");
	session.invalidate();
	%>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form class="login100-form validate-form" action="LoginServlet"
					method="post">
					<span class="login100-form-title p-b-43"> Login to continue
					</span>
					<div class="wrap-input100 validate-input"
						data-validate="Valid email is required: ex@abc.xyz">
						<input class="input100" type="text" name="email"> <span
							class="focus-input100"></span> <span class="label-input100">Email</span>
					</div>


					<div class="wrap-input100 validate-input"
						data-validate="Password is required">
						<input class="input100" type="password" name="pass"> <span
							class="focus-input100"></span> <span class="label-input100">Password</span>
					</div>

					<div class="flex-sb-m w-full p-t-3 p-b-32">
						<div class="contact100-form-checkbox">
							<input class="input-checkbox100" id="ckb1" type="checkbox"
								name="remember-me"> <label class="label-checkbox100"
								for="ckb1"> Remember me </label>
						</div>

						<div>
							<a href="#" class="txt1"> Forgot Password? </a>
						</div>
					</div>


					<div class="container-login100-form-btn">
						<button class="login100-form-btn">Login</button>
					</div><br><br>
					<div align="center">
					<a href="Index.jsp"><button type="button" class="btn btn-info">Back
								to Home</button></a>
					</div>
					<div class="text-center p-t-46 p-b-20">
						<span class="txt2"> or sign up using </span>
					</div>

					<div class="login100-form-social flex-c-m">
						<a href="#" class="login100-form-social-item flex-c-m bg1 m-r-5">
							<i class="fa fa-facebook-f" aria-hidden="true"></i>
						</a> <a href="#" class="login100-form-social-item flex-c-m bg2 m-r-5">
							<i class="fa fa-twitter" aria-hidden="true"></i>
						</a>
					</div>
				</form>

				<div class="login100-more"
					style="background-image: url('images/bg-01.jpg');"></div>
			</div>
		</div>
	</div>
	<script src="assets/js/vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="assets/js/vendor/animsition/js/animsition.min.js"></script>
	<script src="assets/js/vendor/bootstrap/js/popper.js"></script>
	<script src="assets/js/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/js/vendor/select2/select2.min.js"></script>
	<script src="assets/js/vendor/daterangepicker/moment.min.js"></script>
	<script src="assets/js/vendor/daterangepicker/daterangepicker.js"></script>
	<script src="assets/js/vendor/countdowntime/countdowntime.js"></script>
	<script src="assets/js/main1.js"></script>
</body>

</html>