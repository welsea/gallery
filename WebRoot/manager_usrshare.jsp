<%@ page language="java"  import="java.util.*,java.sql.DriverManager" pageEncoding="utf-8"%>
<%@ page import="java.sql.*,util.*" %>
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
<%
User user=new User();
Gallery gallery=new Gallery();
List<usrShare> list=user.getShareList();
 %>
    <!--nav-->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark" style="margin-bottom:10px;" >
      <a class="navbar-brand" href="index.jsp" style="font-family: Georgia,'Time New Roman',Times; ">Gallery</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarColor01">
        
        <form class="form-inline my-2 my-lg-0" action="findServlet">
        </form>
      </div>
    </nav>

<!--return-->
	<div style="margin: 30px">
		<div style="margin: auto;width:90%">
	        <h2 style="font-size:20px;font-family: Georgia;margin-left: 10px ">修改用户分享内容</h2>
	        <hr>
	        <a href="adminIndex.jsp">返回管理员主页</a>
	    </div>	
	</div>

	
	<div style="margin: auto;width: 80%">
		<div class="container" style="margin: auto;">         
			  <table class="table table-hover">
			    <thead>
			      <tr>
			        <th>用户</th>
			        <th>拍摄作品</th>
			        <th>介绍</th>
			        <th>照片</th>
			        <th>删除</th>
			      </tr>
			    </thead>
		
<%
for(usrShare usrshare:list){
	A_work w=gallery.getWork(usrshare.getWId());

 %>
		  
			    <tbody>
			      <tr>
			        <td><%=usrshare.getUsername() %></td>
			        <td><%=w.getName_cn() %></td>
			        <td><%=usrshare.getIntro() %></td>
			        <td style="width:200px"><img class="card-img-top" data-src="holder.js/100%x160/" alt="Card image cap" src="http://localhost:8080/Ggllery/images/<%=usrshare.getImg()%>"></td>
			        <td><a href="DeleteRUServlet?id=<%=usrshare.getShareId() %>">删除</a></td>
			      </tr>
			    </tbody>

		  
		  <%
		  } %>
		  	 </table>
			</div>
		</div>
</div>
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

    

	
	    <!-- jQuery first, then Bootstrap JS. -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
</body>
</html>