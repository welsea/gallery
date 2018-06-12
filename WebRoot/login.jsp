 <%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%  
    String path = request.getContextPath();  
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%> 
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
		<li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
		<li class="breadcrumb-item"><a href="#">Login</a></li>
	</ol>

	<h1 class="text-center">Gallery</h1>
	
	
	<div align="center">
		<form action="LoginServlet" method="post" name="frmLogin">
			<div class="form-group" style="width: 35%" >
				<div align="left">
					<label for="inputID" >Username</label>
				</div>
				<div class=".col-xs-4">
					<input type="text" name="username" class="form-control" aria-describedby="idInfo" placeholder="Enter id" onfocus="if (this.value=='Your name')  this.value='';"  />
				</div>
				<div align="left">
					<small id="idInfo" class="form-text text-muted" >Please enter your username</small>    
				</div>	
			</div>
			<div class="form-group" style="width: 35%" >
				<div align="left">
					<label for="exampleInputPassword1">Password</label>
				</div>
				<input type="password" class="form-control"  name="password"  placeholder="Password" onfocus="if (this.value=='Your Password') this.value='';" />
				
				<!-- 
				<div style="text-align: left;margin: 5px">
					<input type="checkbox" name="autologin" >自动登录
				</div>
				-->
				
			</div>

				<button id="btnLogin" type="submit" class="btn btn-outline-primary" onclick="return validateLogin()" >登录</button>
				<button id="btnSign" type="button" class="btn btn-outline-primary" ><a href="signup.jsp">注册</a></button>
		</form>
	</div>
	</div>
	</div>

	 <script type="text/javascript">  
               function validateLogin(){  
                 var sUserName = document.frmLogin.username.value;  
                 var sPassword = document.frmLogin.psssword.value;  
                if (sUserName ==""){  
                 alert("请输入用户名!");  
                 return false ;  
                }  
                  
                if (sPassword ==""){  
                 alert("请输入密码!");  
                 return false ;  
                }  
        }  
    </script>  


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
