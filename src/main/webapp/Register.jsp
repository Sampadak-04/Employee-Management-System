<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EMS | Sign Up</title>
<link rel="stylesheet" 
 href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
 integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" 
 crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" 
integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" 
crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" 
integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" 
crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" 
integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" 
crossorigin="anonymous"></script>
<style>
#div1
{
	background-color: white;
	opacity: 100%;
}
</style>
</head>
<body background="images/bg_reg.jpg">
<form action="RegisterServlet" method="post">
<section >
    <div class="container" id="div1">
      <br>
      <div class="alert alert-warning text-center my-4">
        REGISTER HERE!!
      </div>
      
      <div class="row justify-content-center">
        <div class="col-12 col-md-8 col-lg-8 col-xl-6">
          <div class="row">
            
          </div>
          <div class="row align-items-center">
            <div class="col mt-4">
              <input type="text" name="mname" class="form-control" placeholder="Manager Name" required>
            </div>
          </div>
          <div class="row align-items-center mt-4">
            <div class="col">
              <input type="email" name="email" class="form-control" placeholder="Email" required>
            </div>
          </div>
          <div class="row align-items-center">
            <div class="col mt-4" >
              <input type="text" name="phone" class="form-control" placeholder="Contact No" maxlength="10" min="10" required>
            </div>
            </div>
            <div class="row align-items-center">
            <div class="col mt-4">
              <input type="text" name="org" class="form-control" placeholder="Orgnization Name" required>
            </div>
            </div>
          <div class="row align-items-center mt-4">
            <div class="col">
              <input type="password" name="pass" class="form-control" placeholder="Password" required>
            </div>
           </div> 
          <div class="row justify-content-start mt-4">
            <div class="col">
              <div class="form-check">
                <label class="form-check-label">
                  <input type="checkbox" class="form-check-input" required>
                  I Read and Accept <a href="https://www.froala.com">Terms and Conditions</a>
                </label>
              </div>
              <button type="submit" class="btn btn-primary mt-4" style="margin-left:200px;">Sign Up</button>
              <br><br>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  </form>
</body>
</html>