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
	<script src="sweetalert2.all.min.js"></script>
	<script src="sweetalert2.min.js"></script>
	<link rel="stylesheet" href="sweetalert2.min.css">
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<title>EMS | Retrieve all</title>
<style>
#table1
{
	font-size: 20px;
}
</style>
<%
	try {
		boolean b = (boolean) session.getAttribute("deleted");
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
	session.removeAttribute("deleted");
	%>
<%@include file="Dashboard.jsp" %>
</head>
<body>
<br><br><br><br><br>
<table id="table1" class = "table">
 <legend style="color: blue; font-size:  30px;"><b><center>All Employees details </center></b></legend>
   <thead>
      <tr>
         <th scope="row">Employee ID</th>
         <th scope="row">Name</th>
         <th scope="row">Email</th>
         <th scope="row">Salary</th>
         <th scope="row">Update</th>
         <th scope="row">Delete</th>
      </tr>
   </thead>
   <%
   		Register r = (Register) session.getAttribute("User");
   		EmployeeDao edao = new EmployeeDao();
   		List<Employee> lst = edao.retrieveAll(r.getId());
   		for(Employee emp : lst)
   		{
   %>
   <tbody>
      <tr class = "active">
         <td><%=emp.getEmpId() %></td>
         <td><%=emp.geteName() %></td>
         <td><%=emp.getEmail() %></td>
         <td><%=emp.getSalary() %></td>
         <td><a href="Update.jsp?id=<%=emp.getEmpId()%>"><button class="btn btn-primary" style="font-size: 15px"><span class="glyphicon glyphicon-pencil"></span>&nbspUpdate</button></a>
         </td>
         <td><a href="DeleteServlet?id=<%=emp.getEmpId()%>"><button class="btn btn-danger" style="font-size: 15px"><span class="glyphicon glyphicon-trash"></span>&nbspDelete</button></a>
         </td>
      </tr>
   </tbody>
   <%
   		}
   %>
</table>
</body>
</html>