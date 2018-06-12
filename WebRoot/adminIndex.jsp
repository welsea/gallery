<%@page import="util.*"%>
<%@ page language="java"  import="java.util.*,java.sql.DriverManager" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags always come first -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <!-- Bootstrap CSS -->
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
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
    <!--nav-->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark" style="margin-bottom:10px;" >
      <a class="navbar-brand" href="index.jsp" style="font-family: Georgia,'Time New Roman',Times; ">Gallery</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarColor01">
        
        <form class="form-inline my-2 my-lg-0" ac>
        </form>
      </div>
    </nav>

        <!--info-->
    <div style="margin:auto">
    	<div style="margin: 20px;width:90%">
            <h2 style="font-size:20px;font-family: Georgia;margin-left: 10px ">已进入管理员界面,请选择您要进行的操作：</h2>
            <hr>
        </div>


	     <div class="container">
		  <div class="card">
		    <div class="card-body">
		      <h4 class="card-title"><a href="manager_user.jsp">修改用户</a></h4>
		      <p class="card-text">可选择删除用户</p>
		    </div>
		  </div>
		</div>

		<div class="container">
		  <div class="card">
		    <div class="card-body">
		      <h4 class="card-title"><a href="manager_usrshare.jsp">修改用户分享内容</a></h4>
		      <p class="card-text">删除用户分享</p>
		    </div>
		  </div>
		</div>

		<div class="container">
		  <div class="card">
		    <div class="card-body">
		      <h4 class="card-title"><a href="manager_artist.jsp">修改艺术家信息</a></h4>
		      <p class="card-text">修改或删除艺术家的出生/逝世日期、作品列表等。</p>
		    </div>
		  </div>
		</div>

		<div class="container">
		  <div class="card">
		    <div class="card-body">
		      <h4 class="card-title"><a href="manager_work.jsp">修改作品信息</a></h4>
		      <p class="card-text">修改或删除作品的年份、馆藏等</p>
		    </div>
		  </div>
		</div>
    </div>
    
  	</div>
	</div>  
 
    
    

  
    <div class="panel-footer" style="text-align: center;background-color: #f0f8ff">
      <br>
      <br>
      <br>
      <p style="color: #696969">@sxy_2015020800111 & @sxy_2015020800111</p>
      <br>

    </div>
   
    
    <!-- jQuery first, then Bootstrap JS. -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
    </body>
</html>