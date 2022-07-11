<%@page import="hostel.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%UserDao user=(UserDao)session.getAttribute("user");
%>
<html>
<head>
<title>Dashboard</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../asset/plugins/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../asset/dist/css/adminlte.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="../asset/plugins/iCheck/flat/blue.css">
  <!-- Morris chart -->
  <link rel="stylesheet" href="../asset/plugins/morris/morris.css">
  <!-- jvectormap -->
  <link rel="stylesheet" href="../asset/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
  <!-- Date Picker -->
  <link rel="stylesheet" href="../asset/plugins/datepicker/datepicker3.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="../asset/plugins/daterangepicker/daterangepicker-bs3.css">
  <!-- bootstrap wysihtml5 - text editor -->
  <link rel="stylesheet" href="../asset/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
  <!-- Datatables -->
  <link href="https://cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css" rel="stylesheet" />
  <!-- logo -->
  <link rel="shortcut icon" href="images/logo02.png" type="image/x-icon">
<style>
.content-wrapper{
margin-top:40px;
}
</style>
</head>
<jsp:useBean id="c1" class="hostel.operation.MyFunctions"></jsp:useBean>
<body class="hold-transition sidebar-mini">
 <div class="wrapper">
  <!-- Navbar -->
  	<nav class="main-header navbar navbar-expand bg-white navbar-light border-bottom fixed-top">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#"><i class="fa fa-bars"></i></a>
      </li>
     
    </ul>
    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">  
     <a href="logoutservlet" ><button class="btn-sm btn btn-block btn-outline-danger type="button" style="font-family:verdana;">LOGOUT</button> </a>
    </ul>
  </nav>
  <!-- /.navbar -->

<!-- Main Sidebar Container -->


<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="welcome.jsp" class="brand-link">
      <img src="../asset/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-light">Chitkara</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="../asset/dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
          <span style="color:white"><Strong><%=user.getFirst_name()+" "+user.getLast_name()%></strong></span>
        </div>
        <div class="info">
          <a href="#" class="d-block"></a>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item has-treeview">
            <a id="dashboard" href="dashboard.jsp" class="nav-link">
              <i class="nav-icon fa fa-home"></i>
              <p>
                Dashboard                
              </p>
            </a>            
          </li>
          <li class="nav-item has-treeview">
            <a  href="profile.jsp" id="profile" class="nav-link">
              <i class="nav-icon fa fa-user"></i>
              <p>
                Profile                
              </p>
            </a>            
          </li>
          <li class="nav-item has-treeview">
           <a  href="homework.jsp" id="homework" class="nav-link">
              <i class="nav-icon fa fa-tasks"></i>
              <p>
                Complaint          
              </p>
            </a>
          </li>
            <li class="nav-item has-treeview">
           <a  href="addStudent.jsp" id="student" class="nav-link">
              <i class="nav-icon fa fa-user"></i>
              <p>
                Add Student         
              </p>
            </a>
          </li>
        <!--  <li class="nav-item has-treeview">
           <a  href="listAttendance.jsp" id="attendance" class="nav-link">
              <i class="nav-icon fa fa-tasks"></i>
              <p>
                Attendance           
              </p>
            </a>
          </li>                                         
           <li class="nav-item has-treeview">
           <a  href="result.jsp" id="result" class="nav-link">
              <i class="nav-icon fa fa-tasks"></i>
              <p>
                Result           
              </p>
            </a>
          </li>     -->                                                                                              
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>
  

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
        <div class="col-sm-6">
            <h1 class="m-0 text-dark"></h1>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
        <section class="content">
      <div class="container-fluid">
      <% if(session.getAttribute("message")!=null){ %>
       <div class="alert alert-info alert-dismissible">
                  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                  <h5><i class="icon fa fa-info"></i> Info!</h5>
                  <%=session.getAttribute("message") %>
         </div>
         <%} %>
       <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Add Student</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
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
            <!-- /.card -->
      </div> <!-- Container fluid -->
    </section>    <!-- /.content -->
  </div>
  <footer class="main-footer">
    <strong>Copyright &copy; 2018 <a href="http://kunalindoliya.com" target="_blank">Kunal Indoliya</a>.</strong>
    All rights reserved.
    <div class="float-right d-none d-sm-inline-block">
      <b>Version</b> 1.0.0-alpha
    </div>
  </footer>
</div> <!-- /.content-wrapper -->
<!-- Jquery , Jquery UI, Datatables -->
 <script src="../asset/plugins/jquery/jquery.min.js"></script>
  <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.2/jquery-ui.min.js"></script>
  <script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
 
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="../asset/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- Morris.js charts -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
<script src="../asset/plugins/morris/morris.min.js"></script>
<!-- Sparkline -->
<script src="../asset/plugins/sparkline/jquery.sparkline.min.js"></script>
<!-- jvectormap -->
<script src="../asset/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="../asset/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- jQuery Knob Chart -->
<script src="../asset/plugins/knob/jquery.knob.js"></script>
<!-- daterangepicker -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.2/moment.min.js"></script>
<script src="../asset/plugins/daterangepicker/daterangepicker.js"></script>
<!-- datepicker -->
<script src="../asset/plugins/datepicker/bootstrap-datepicker.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="../asset/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<!-- Slimscroll -->
<script src="../asset/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="../asset/plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="../asset/dist/js/adminlte.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="../asset/dist/js/pages/dashboard.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../asset/dist/js/demo.js"></script>
<script>
$("#dashboard").addClass("active");
</script>
</body>
</html>