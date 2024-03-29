<%@page import="model.Register"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
<!--====== Required meta tags ======-->
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link rel="shortcut icon" href="assets/images/favicon.png" type="image/png">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/LineIcons.css">
    <link rel="stylesheet" href="assets/css/magnific-popup.css">
    <link rel="stylesheet" href="assets/css/default.css">
    <link rel="stylesheet" href="assets/css/style.css">
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
<style>
   
 </style>
</head>
<body onload="noBack();" onpageshow="if (event.persisted) noBack();"
	onunload="">
 <!--====== HEADER PART START ======-->

    <header class="header-area">
        <div class="navgition navgition-transparent">
            <div class="container">
                <div class="row">
                    <div class="col-lg-13">
                        <nav class="navbar navbar-expand-lg">
                        	<h4>Employee Management System</h4>
                            <a class="navbar-brand" href="#">
                                <img src="assets/images/logo.svg" alt="Logo">
                            </a>
							
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarOne" aria-controls="navbarOne" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="toggler-icon"></span>
                                <span class="toggler-icon"></span>
                                <span class="toggler-icon"></span>
                            </button>

                            <div class="collapse navbar-collapse sub-menu-bar" id="navbarOne">
                                <ul class="navbar-nav m-auto">
                                    <li class="nav-item active">
                                        <a class="page-scroll" href="AddEmployee.jsp"><span class="glyphicon glyphicon-plus"></span>&nbspCREATE RECORD</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="page-scroll" href="RetrieveAll.jsp"><span class="glyphicon glyphicon-print"></span>&nbspRETRIEVE DATA</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="page-scroll" href="Profile.jsp"><button class="btn btn-primary"><span class="glyphicon glyphicon-user">&nbspPROFILE</span></button></a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="page=scroll"><button class="btn btn-danger" onclick="logout()"><span class="glyphicon glyphicon-off">&nbspLOGOUT</span></button>
                                    </a></li>
                                </ul>
                            </div>
                            <script>
                            	function logout()
                            	{
                            		swal.fire({
                            			title: "Are you sure to logout?",
                            			text: "Yes or no?",
                            			type: "info",
                            			focusConfirm: true,
                            			confirmButtonColor: "#DD6B55",
                            			confirmButtonText: "Yes",
                            			showCloseButton: true,
                            		}).then((result)=> {
                            			if(result.isConfirmed)
                            		    window.location = "http://localhost:8283/Employee_Management_System/Login.jsp";
                            		});
                            	}
                            </script>
                        </nav> 
                    </div>
                </div> <!-- row -->
            </div> <!-- container -->
        </div> <!-- navigation -->
</body>
</html>