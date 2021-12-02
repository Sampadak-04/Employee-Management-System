<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="org.apache.catalina.User"%>
<%@page import="DAO.EmployeeDao"%>
<%@page import="model.Employee"%>
<%@page import="java.util.List"%>
<%@page import="model.Register"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <script src="js/secure.js"></script>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<title>EMS | Update</title>
<style>
#table1
{
	font-size: 20px;
}
.card {
	margin-right: 300px;
	margin-left: 300px;
	margin-top: 200px;
}

h3 {
	font-size: 30px;
	color: blue;
}
</style>
<%@include file="Dashboard.jsp" %>	
</head>
<body>

<body class="hold-transition sidebar-mini layout-fixed">
		
		<div class="container" align="center">
			<div class="card">
				<div class="card-header">
					<h3 style="color: blue;">Update Employee</h3>
				</div>
				<div class="card-body">
					<form action="UpdateEmployeeServlet" method="post">
					<input type="hidden"  name="courseCode">
						<div class="form-outline mb-4">
							<label class="form-label" for="form1Example1">Employee ID
								: &nbsp&nbsp</label> <input type="text" id="form1Example1"  name="eid" readonly
								required />
						</div>

						<!-- Password input -->
						<div class="form-outline mb-4">
							<label class="form-label" for="form1Example2">Employee Name
								: &nbsp&nbsp</label> <input type="text" id="form1Example2" name="ename" readonly
								required />
						</div>
						<div class="form-outline mb-4">
							<label class="form-label" for="form1Example2">Employee Email
								: &nbsp&nbsp</label> <input type="text" id="form1Example2" name="eemail"
								required />
						</div>
						<div class="form-outline mb-4">
							<label class="form-label" for="form1Example2">Employee Salary
								: &nbsp&nbsp</label> <input type="text" id="form1Example2" name="esal"
								required />
						</div>
						<!-- Submit button -->
						<button type="submit" class="btn btn-primary">Save
							Changes</button>
					</form>
				</div>
			</div>
		</div>
		<script src="plugins/jquery/jquery.min.js"></script>
		<script src="plugins/jquery-ui/jquery-ui.min.js"></script>
<script src="js/secure.js"></script>
		<script>
			$.widget.bridge('uibutton', $.ui.button)
		</script>
</body>

</html>