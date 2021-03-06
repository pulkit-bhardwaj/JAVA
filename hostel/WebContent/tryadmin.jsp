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
  <h2><%=user.getFirst_name()+" "+user.getLast_name()%></h2></nav>
  </div>  
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
</div>
<canvas id="canvas" width="150" height="150"
style="background-color:#d35400">
</canvas>
<script>
var canvas = document.getElementById("canvas");
var ctx = canvas.getContext("2d");
var radius = canvas.height / 2;
ctx.translate(radius, radius);
radius = radius * 0.90
setInterval(drawClock, 1000);

function drawClock() {
  drawFace(ctx, radius);
  drawNumbers(ctx, radius);
  drawTime(ctx, radius);
}

function drawFace(ctx, radius) {
  var grad;
  ctx.beginPath();
  ctx.arc(0, 0, radius, 0, 2*Math.PI);
  ctx.fillStyle = 'white';
  ctx.fill();
  grad = ctx.createRadialGradient(0,0,radius*0.95, 0,0,radius*1.05);
  grad.addColorStop(0, '#333');
  grad.addColorStop(0.5, 'white');
  grad.addColorStop(1, '#333');
  ctx.strokeStyle = grad;
  ctx.lineWidth = radius*0.1;
  ctx.stroke();
  ctx.beginPath();
  ctx.arc(0, 0, radius*0.1, 0, 2*Math.PI);
  ctx.fillStyle = '#333';
  ctx.fill();
}

function drawNumbers(ctx, radius) {
  var ang;
  var num;
  ctx.font = radius*0.15 + "px arial";
  ctx.textBaseline="middle";
  ctx.textAlign="center";
  for(num = 1; num < 13; num++){
    ang = num * Math.PI / 6;
    ctx.rotate(ang);
    ctx.translate(0, -radius*0.85);
    ctx.rotate(-ang);
    ctx.fillText(num.toString(), 0, 0);
    ctx.rotate(ang);
    ctx.translate(0, radius*0.85);
    ctx.rotate(-ang);
  }
}

function drawTime(ctx, radius){
    var now = new Date();
    var hour = now.getHours();
    var minute = now.getMinutes();
    var second = now.getSeconds();
    //hour
    hour=hour%12;
    hour=(hour*Math.PI/6)+
    (minute*Math.PI/(6*60))+
    (second*Math.PI/(360*60));
    drawHand(ctx, hour, radius*0.5, radius*0.07);
    //minute
    minute=(minute*Math.PI/30)+(second*Math.PI/(30*60));
    drawHand(ctx, minute, radius*0.8, radius*0.07);
    // second
    second=(second*Math.PI/30);
    drawHand(ctx, second, radius*0.9, radius*0.02);
}

function drawHand(ctx, pos, length, width) {
    ctx.beginPath();
    ctx.lineWidth = width;
    ctx.lineCap = "round";
    ctx.moveTo(0,0);
    ctx.rotate(pos);
    ctx.lineTo(0, -length);
    ctx.stroke();
    ctx.rotate(-pos);
}
</script>
<div class="col-md-6">
  <div class="card img-fluid" style="width:400px;height:500px">
    <img class="card-img-top" src="assets/img/notice2.jpg" alt="Card image" style="width:100%;height:100%">
    <div class="card-img-overlay">
      <h1 class="card-title"><b>NOTICES</b></h1><br><br><br><br>
      <p class="card-text"><marquee behavior="scroll" bgcolor="black"><font size="4" color="white" face="Latin">Some example text some example text. Some example text some example text.</font></marquee></p><br><br><br><br>
      
<a href="#" class="btn btn-primary">NEXT</a>
    </div>
</div>
</div>
</div>
</body>
</html>