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
<title>EMS | Retrieve all</title>
<style>
#table1
{
	font-size: 20px;
}
</style>
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
      </tr>
   </tbody>
   <%
   		}
   %>
</table>
</body>
</html>