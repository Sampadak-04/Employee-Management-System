<%@page import="model.Register"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>EMS | Add Employee</title>
<%
	ServletContext sc2=request.getServletContext();
    Register r = (Register) session.getAttribute("User");
	if(r==null){
		session.setAttribute("pls-login", "Please Login Here...");
		response.sendRedirect("Login.jsp");
	}
	%>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<script src="sweetalert2.all.min.js"></script>
<script src="sweetalert2.min.js"></script>
<link rel="stylesheet" href="sweetalert2.min.css">
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<style>
#success_message {
	display: none;
}

.card {
	background-color: tomato;
	margin-top:200px;
	width:500px;

}
.form-label
{
   width:100px;
   height:30px;
}
body
{
	background-image: url("images/dashBg.png");
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
<%@ include file="DashNav.jsp"%>
</head>
<body>
<%
	try {
		boolean b = (boolean) session.getAttribute("add-success");
		if (!b) {
	%>
	<div>
	<script>
		Swal.fire({
			icon : 'error',
			title : 'Oops...',
			text : 'Something went wrong..Please try again..!',
		})
	</script>
	</div>
	<%
	}
	} catch (Exception e) {
	// e.printStackTrace();
	}
	session.removeAttribute("add-success");
	%>
<body class="hold-transition sidebar-mini layout-fixed">
	<div class="container" align="center">
		<div class="card">
			<div class="card-header">
				<h3 style="color: blue;">Add Employee</h3>
			</div>
			<div class="card-body">
				<form action="AddEmployeeServlet" method="post">
					<!-- Password input -->
					<div class="form-outline mb-4">
						<label class="form-label" for="form1Example2">Employee
							Name : &nbsp&nbsp </label> <input type="text" id="form1Example2"
							name="ename"  required  style="height:25px;width:200px;"/>
					</div>
					<div class="form-outline mb-4">
						<label class="form-label" for="form1Example2">Employee
							Email : &nbsp&nbsp</label> <input type="text" id="form1Example2"
							name="email"  required  style="height:25px;width:200px;" />
					</div>
					<div class="form-outline mb-4">
						<label class="form-label" for="form1Example2">Employee
							Salary : &nbsp&nbsp</label> <input type="number" id="form1Example2"
							name="salary" required  style="height:25px;width:200px;"/>
					</div>
					<!-- Submit button -->
					<button type="submit" class="btn btn-primary" style="height:35px;width:100px;">Add</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>