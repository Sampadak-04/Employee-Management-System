<%@page import="model.Register"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EMS | Manager</title>
<%
try {
	Register r = (Register) session.getAttribute("User");
	if (r == null) {
		session.setAttribute("not-login", true);
		response.sendRedirect("Login.jsp");
	}
} catch (Exception e) {
	// e.printStackTrace();
}
%>
<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

  <script src="sweetalert2.all.min.js"></script>
	<script src="sweetalert2.min.js"></script>
	<link rel="stylesheet" href="sweetalert2.min.css">
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<style>
body
{
    background-image: url("images/dash2.jpeg");
	background-repeat: no-repeat;
	background-size: cover;
	
}
</style>
<script type="text/javascript">
        window.history.forward();
        function noBack() {
            window.history.forward();
        }
</script>
</head>
<body>
<%
	try {
		boolean b = (boolean) session.getAttribute("login-success");
		if (b==true) {
	%>
	<div>
	<script>
		Swal.fire({
			icon : 'success',
			title : 'Congrats..!!',
			text : 'Logged in successfully..',
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
		boolean b = (boolean) session.getAttribute("add-success");
		if (b==true) {
	%>
	<div>
	<script>
		Swal.fire({
			icon : 'success',
			title : 'Congrats..!!',
			text : 'Employee added successfully...!',
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
	<%
	try {
		boolean b = (boolean) session.getAttribute("update-success");
		if (b==true) {
	%>
	<div>
	<script>
		Swal.fire({
			icon : 'success',
			title : 'Congrats..!!',
			text : 'Employee updated successfully...!',
		})
	</script>
	</div>
	<%
	}
	} catch (Exception e) {
	// e.printStackTrace();
	}
	session.removeAttribute("update-success");
	%>
	<%
	try {
		boolean b = (boolean) session.getAttribute("deleted");
		if (b==true) {
	%>
	<div>
	<script>
		Swal.fire({
			icon : 'success',
			title : 'Congrats..!!',
			text : 'Employee deleted successfully...!',
		})
	</script>
	</div>
	<%
	}
	} catch (Exception e) {
	// e.printStackTrace();
	}
	session.removeAttribute("deleted");
	%>

    <style>
    
 </style>
</head>
<body onload="noBack();" onpageshow="if (event.persisted) noBack();"
	onunload="">
    <style>
    
 </style>
</head>
<body onload="noBack();" onpageshow="if (event.persisted) noBack();"
	onunload="">
<%@include file="DashNav.jsp" %>
</body>
</html>