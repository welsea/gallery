<%@page import="util.*"%>
<%@ page language="java"  import="java.util.*,java.sql.DriverManager" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%
request.getSession().removeAttribute("username");
response.sendRedirect("login.jsp");
%> 
<!DOCTYPE html>
<html>
<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">


	<title>Gallery</title>
</head>
<body>

	<ol class="breadcrumb">
		<li class="breadcrumb-item"><a href="index.jsp">主页</a></li>
		<li class="breadcrumb-item"><a href="#">退出</a></li>
	</ol>

	<h1 class="text-center">Gallery</h1>

	<div align="center">
		<form >
			<%
				out.println("<ul class='list-group'>");
			    out.println("<div style='width=35%' align='center'><li class='list-group-item' >您已成功登出。</li>");
			    out.println("<br/><br/><li class='list-group-item' >五秒后返回登录页。</li></div>");
			    response.setHeader("Refresh", "5;URL=login.jsp");
			    out.println("</ul>");
			 %>
		</form>
	</div>




<br>
      <br>
      <br>
      <br>
      <br>
      <br>
  
    <div class="panel-footer" style="text-align: center;background-color: #f0f8ff">
      <br>
      <br>
      <br>
      <p style="color: #696969">@sxy_2015020800111 & @sxy_2015020800111</p>
      <br>

    </div>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
</body>
</html>