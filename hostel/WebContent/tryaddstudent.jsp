<%@page import="hostel.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%UserDao user=(UserDao)session.getAttribute("user"); %>
<html><head>
<title>Dashboard</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
</head>
<style>
body {
  background-color: #bdc3c7;
}
.sidebar {
	width: 300px;
	float: left;
	min-height: 470px;
	
}
h1{
    font-size:20px;
    font-weight:80px;

}
h2{

    font-size:20px;
    font-weight:80px;
    color:white;

}
</style>
<body>
<div class="wrapper">
<div class="header">
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <!-- Brand/logo -->
  <a class="navbar-brand" href="#">
    <img src="assets/img/logo.png" alt="logo" style="width:40px;height:40px">
  </a>
  </nav>
  <div class="sidebar">
  <h1>USER</h1>
  <ul class="nav flex-column">
    <li class="nav-item">
      <a  href="tryadmin.jsp"><h1>DASHBOARD</h1></a>
    </li>
      <li class="nav-item">
    <a href="user/profile1.jsp"><h1>PROFILE</h1></a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#"><h1>COMPLAINT</h1></a>
    </li>
</div></div>
 <h3 class="card-title">Add Student</h3>
            
              <form role="form" action="addstudent" method="post">
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">First Name</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" name="first_name" placeholder="Enter First Name">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">Last Name</label>
                    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Enter Last Name" name="last_name">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">UID</label>
                    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Enter UID" name="uid">
                  </div>
                  
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Submit</button>
                </div>
              </form>
            </div>
</div>
</body>
</html>