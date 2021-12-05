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
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="path/to/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%
	ServletContext sc2=request.getServletContext();
    Register r = (Register) session.getAttribute("User");
	if(r==null){
		session.setAttribute("pls-login", "Please Login Here...");
		response.sendRedirect("Login.jsp");
	}
	%>
</head>
<body>
	<a href="LogoutServlet" class="btn btn-light my-2 my-sm-0"
		type="submit" data-toggle="modal" data-target="#userModal"><i
		class="fa fa-user" aria-hidden="true"></i></a>&nbsp&nbsp&nbsp

	<div class="modal fade" id="userModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">

					<h5 class="modal-title" id="exampleModalLabel">Profile</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="container text-center">
						<div class="text-danger">
							<i class="fa fa-user-circle-o fa-4x" aria-hidden="true"></i>
						</div>
						<br> <a href="LogoutServlet"
							class="btn btn-light my-2 my-sm-0" type="submit"
							data-toggle="modal" data-target="#userModal"><i
							class="fa fa-user" aria-hidden="true"></i> </a>&nbsp&nbsp&nbsp <a
							href="LogoutServlet" class="btn btn-light my-2 my-sm-0"
							type="submit"><i class="fa fa-sign-out" aria-hidden="true"></i>Logout</a>


						<div class="modal fade" id="userModal" tabindex="-1" role="dialog"
							aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">

										<h5 class="modal-title" id="exampleModalLabel">Profile</h5>
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<%
									//try{
									Register u = (Register) session.getAttribute("User");
									//}catch(Exception e)
									//{
									// e.printStackTrace();	
									//}
									%>
									<div class="modal-body">
										<div class="container text-center">
											<div class="text-danger">
												<i class="fa fa-user-circle-o fa-4x" aria-hidden="true"></i>
											</div>
											<br>

											<table class="table">
												<tbody>
													<tr>
														<th>ID</th>
														<td><%=u.getId()%></td>
													</tr>
													<tr>
														<th>Name</th>
														<td><%=u.getName()%></td>
													</tr>
													<tr>
														<th>Email Id</th>
														<td><%=u.getEmail()%></td>
													</tr>
													<tr>
														<th>Contact no.</th>
														<td><%=u.getPhoneNo()%></td>
													</tr>
													<tr>
														<th>Name of organization</th>
														<td><%=u.getOrgName()%></td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<div class="modal-footer">
										<a href="editUserProfile.jsp?user_id="
											" class="btn btn-primary" data-toggle="modal"
											data-target="#editUserProfileModal"><i class="fa fa-edit"></i>
											Edit</a>&nbsp&nbsp
										<button type="button" class="btn btn-secondary"
											data-dismiss="modal">
											<i class="fa fa-close"></i> Close
										</button>

									</div>
								</div>
							</div>
						</div>

						<div class="modal-footer">
							<a href="editUserProfile.jsp?" class="btn btn-primary"
								data-toggle="modal" data-target="#editUserProfileModal"><i
								class="fa fa-edit"></i> Edit</a>&nbsp&nbsp
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">
								<i class="fa fa-close"></i> Close
							</button>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>