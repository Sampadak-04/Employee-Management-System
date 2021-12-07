<%@page import="model.Register"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<SCRIPT type="text/javascript">
	window.history.forward();
	function noBack() {
		window.history.forward();
	}
</SCRIPT>
<%
response.setHeader("Cache-Control", "no-cache");
response.setHeader("Cache-Control", "no-store");
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expires", 0);
if (session.getAttribute("token") == null) {
	//response.sendRedirect(request.getContextPath() + "/LogOut.jsp");

}
%>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script src="sweetalert2.all.min.js"></script>
<script src="sweetalert2.min.js"></script>
<link rel="stylesheet" href="sweetalert2.min.css">
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<style>
#table1 {
	font-size: 20px;
}
#tableDiv
{
	margin-left: 200px;
	margin-right: 200px;
}
</style>
<title>EMS | Profile</title>
<%@include file="Dashboard.jsp"%>
</head>
<body>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div id="tableDiv">
	<table id="table1" class="table">
		<legend style="color: blue; font-size: 20px;">
			<b><center>Profile</center></b>
		</legend>
		<%
        Register rg = (Register) session.getAttribute("User");
   		if(rg!=null)
   		{
   %>
		<thead>
			<tr>
				<th scope="row">User ID</th>
				<td class="active"><%=rg.getId() %></td>
			</tr>
			<tr>
				<th scope="row">Name</th>
				<td class="active"><%=rg.getName() %></td>
			</tr>
			<tr>
				<th scope="row">Email</th>
				<td class="active"><%=rg.getEmail() %></td>
			</tr>
			<tr>
				<th scope="row">Phone no.</th>
				<td class="active"><%=rg.getPhoneNo() %></td>
			</tr>
			<tr>
				<th scope="row">Organization Name</th>
				<td class="active"><%=rg.getOrgName() %></td>
			</tr>
		</thead>
			<%
   		}
   %>
	</table>
	</div>
</body>
</html>