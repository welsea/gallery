<%@ page language="java"  import="java.util.*,java.sql.DriverManager" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>

	<meta charset="UTF-8">
		<!-- Required meta tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">

	<title>Gallery</title>
	<style type="text/css">
		h6 {
			color: white;
		}
		h1 {
			font-family: Georgia,'Time New Roman',Times;
			font-size:80px;
			text-align: center;
			margin-top:  50px;
			margin-bottom: 10px;
			color: white;

		}
		form {
			position:absolute; 
			left:70%; 
			transform:translate(-50%,-50%);
			margin-top: 10px
		}
		nav {
			margin-top: 5px;
		    margin-right: 10px;
		    text-align: right;
		}
		a {
   	 		font-size: 15px;
    		margin-left: 5px;
    		color: white;
		}
		html,body {
			margin: 0px;
			height: 100%;
			background-color: GREY;
		}
		#bcg {
			width: 100%;
			height:100%;
			margin:0px auto;
			background-image: url(http://localhost:8080/Ggllery/images/2.jpg);
			background-size:100% 100%;
    		background-repeat:no-repeat;
		}	
		.row{
            display: flex;
        }

        .left {
            flex: 2;
        }
        .right {
            flex:3;
        }
	</style>
</head>
<body>
	<div id="bcg">
	<%
	String message=(String)session.getAttribute("message");
	String username=(String)session.getAttribute("username");
	if(message=="success"){
        	out.println("<div style='margin: 10px'>");
				out.println("<ul class='nav justify-content-end'>");
					out.println("<li class='nev-item'>");
					out.println(" <a href='myInfo.jsp?id="+username+"'>"+username+"</a>");
					out.println("</li>&nbsp;&nbsp;");
					out.println("<li class='nav-item'>");
					out.println("	<a href='login.jsp'>Log out</a>");
					out.println("</li>");
				out.println("</ul>");
			out.println("</div>");
	}else{
			out.println("<div style='margin: 5px'>");
				out.println("<ul class='nav justify-content-end'>");
					out.println("<li class='nev-item'>");
						out.println("<a href='login.jsp'>Log In</a>");
					out.println("</li>&nbsp;&nbsp;");
					out.println("<li class='nav-item'>");
					out.println("<a href='signup.jsp'>Sign Up</a>");
					out.println("</li>");
				out.println("</ul>");
			out.println("</div>");
	}
	 %>
	 
		<br>
		<br>
		<br>
		<br>
		<br>
		<div class="row">
			<div class="left"></div>
			<div class="container-fluid right" style="width:60%;text-align: center; ">
				
				<h1 >GALLERY</h1>
				<h6 style="margin-bottom: 10px;font-size: 20px">Art is for everyone.</h6>
				<br>
					<form class="form-horizontal" style="width:440px;" action="findServlet">
				  	<div class="form-group" >
				   		<div class="input-group" style="margin:0px auto;">
			     			<input name="usr_input" type="text" class="form-control" placeholder="搜索作品...">
			      			<span class="input-group-btn">
			        		<button class="btn btn-secondary" type="submit" >搜索</button>
			      			</span>
			    		</div>
			   	 	</div>
				</form>
				<div style="margin: 20px">
					<nav class="nav nav-pills justify-content-center">
						<li class="nav-item">
					      <a class="nav-link" href="sortOfA.jsp">所有艺术家</a>
					    </li>
					    <li class="nav-item">
					      <a class="nav-link" href="sortOfW.jsp">所有作品</a>
					    </li>
					</nav>
				</div>
			</div>
		</div>
	</div>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
</body>
</html>
