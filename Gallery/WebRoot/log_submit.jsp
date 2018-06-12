<%@ page language="java" import="java.util.*,java.sql.DriverManager" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">

	<title>Gallery</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style>
	* {  
            margin: 0px;  
            padding: 0px;  
        }  
  
        html, body {  
            height: 100%;  
        }  
  
        .footer {  
            margin-top: -50px;  
            height: 50px;  
            background-color: #eee;  
            z-index: 9999;  
        }  
  
        .wrap {  
            min-height: 100%;  
        }  
  
        .main {  
            padding-bottom: 50px;  
        } 
	</style>
  </head>
  
  <body>
  <div class="wrap">
	<div class="main">
  <ol class="breadcrumb">
		<li class="breadcrumb-item"><a href="index.jsp">主页</a></li>
		<li class="breadcrumb-item"><a href="login.jsp">登录</a></li>
		<li class="breadcrumb-item"><a href="#">登录确认</a></li>
	</ol>

  
<%
	String message=(String)session.getAttribute("message");
	String username=(String)session.getAttribute("username");
    if(message=="success"){
%>
	<%
	out.println("<ul class='list-group'>");
    out.println("<div style='width=35%' align='center'><li class='list-group-item' >欢迎回来：" + username +"。</li>");
	    if(username.equals("admin")){
		    out.println("<br/><br/><li class='list-group-item' >五秒后进入管理员界面。</li></div>");
		    response.setHeader("Refresh", "5;URL=adminIndex.jsp");
	    }else{
	    	 out.println("<br/><br/><li class='list-group-item' >五秒后返回主页。</li></div>");
	    	 response.setHeader("Refresh", "5;URL=index.jsp");
	    }
    
    out.println("</ul>");
 	%>
<%
    }else{

%>
<% 
	out.println("<div class='alert alert-danger' role='alert'>用户名或密码输入错误，请重新输入。<br/><br />五秒后返回登录页。</div>");
	response.setHeader("Refresh", "5;URL=login.jsp");  
%>
<%
    }
%>


</div>
</div>
  
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
