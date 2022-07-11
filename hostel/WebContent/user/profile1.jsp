<%@page import="java.sql.ResultSet"%>
<%@page import="hostel.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%UserDao user=(UserDao)session.getAttribute("user"); %>
<html>
<head>
<title>Profile</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>


<style>
body {
  background-color: #bdc3c7;
}
.content-wrapper{
margin-top:40px;
}
eku{
margin-top:300px;
margin-left:200px;
}
h1{
    font-size:40px;
    font-weight:100px;
}

</style>
  </head>

<jsp:useBean id="c1" class="hostel.operation.ProfileOperation"></jsp:useBean>
<body class="hold-transition sidebar-mini">
 <div class="wrapper">
 <div> <!-- Navbar -->
  <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <!-- Brand/logo -->
  <a class="navbar-brand" href="#">
    <img src="logo.png" alt="logo" style="width:40px;height:40px">
  </a></nav></div>
  <!-- /.navbar -->

 <!-- Main Sidebar Container -->
 <br>
 <center><h1> PROFILE</h1></center>
<div class="row">
<div class="col-md-2">
<h2>User</h2>
  <ul class="nav flex-column">
    <li class="nav-item active">
      <a class="nav-link" href="#">DASHBOARD</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">PROFILE</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">COMPLAINT</a>
    </li></ul></div></div>
     
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
   
 

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
      	<div class="row">
          <div class="col-md-10">
            
          <form>
            <center><table border=1px cellspacing="25" cellpadding="5"> 
             
             
             <% ResultSet rs=c1.showProfile(user.getUid());
                
                 if(rs.next()){
             %>
             
             <tr>
                <td><label>Name</label></td>
             	<td><input type="text" value="<%=rs.getString("first_name")+" "+rs.getString("last_name")%>" readonly></td>
             	</tr>
             	<tr><td><label>UID</label></td>
             	<td><input type="text" value="<%=rs.getString("uid")%>" readonly></td>
             	</tr>
             	<tr><td><label>Email</label></td>
             	<td><input type="text" value="<%=rs.getString("email")%>" readonly></td></tr>
             	<tr><td><label>Phone No.</label></td>
             	<td><input type="text" value="<%=rs.getString("phone_no")%>" readonly></td></tr>
             	<tr><td><label>Father's Name</label></td>
             	<td><input type="text" value="<%=rs.getString("father_name")%>" readonly></td></tr>
             	<tr>
             	<td><label>Mother's Name</label></td>
             	<td><input type="text" value="<%=rs.getString("mother_name")%>" readonly> </td></tr>          	
             	<tr
             	><td><label>Father's Phone No</label></td>
             	<td><input type="text" value="<%=rs.getString("father_phone_no")%>" readonly></td></tr>
             	<tr>
             	<td><label>Date Of Birth</label></td>
             	<td><input type="text" value="<%=rs.getString("dob")%>" readonly></td></tr>
             	<tr>
             	<td><label>Address</label></td>
             	<td><input type="text" value="<%=rs.getString("address")%>" readonly></td></tr>
             	<%} %>
             </form>
             </table></center>
          </div>
                
      </div><!-- /.container-fluid -->
      </div>
    </section>    <!-- /.content -->
  </div>

</div> <!-- /.content-wrapper -->
</body>
</html>