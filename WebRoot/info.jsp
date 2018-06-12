<%@page import="util.A_work"%>
<%@page import="util.DataConverter"%>
<%@page import="util.Artist"%>
<%@page import="util.Gallery"%>
<%@ page language="java"  import="java.util.*,java.sql.DriverManager" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags always come first -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <style type="text/css">
        .row{
            display: flex;
        }

        .left {
            flex: 2;
        }
        .right {
            padding: 10px;
            flex:4;
        }
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
    <!-- Bootstrap CSS -->
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
  </head>
  <body>
  <div class="wrap">
	<div class="main">
  <%
  int id=DataConverter.toInt(request.getParameter("id"));
  Gallery gallery=new Gallery();
  Artist artist=gallery.getArtist(id);
  List<A_work> list=gallery.getWList();
   %>

    <!--nav-->
    <%
    String message=(String)session.getAttribute("message");
	String username=(String)session.getAttribute("username");
	if(message=="success"){
	   out.println("<div style='text-align: right;margin: 5px'>");
	      out.println(" <a href='myInfo.jsp?id="+username+"'>"+username+"</a>");
	       out.println(" <a href='logout.jsp'>Log Out</a>");
	   out.println(" </div>");
	   }else{
	 	  	out.println("<div style='text-align: right;margin: 5px'>");
	       out.println(" <a href='login.jsp'>Log In</a>");
	       out.println(" <a href='signup.jsp'>Sign Up</a>");
	   		out.println(" </div>");
	   }
	   %>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark" style="margin-bottom:10px;" >

      <a class="navbar-brand" href="index.jsp" style="font-family: Georgia,'Time New Roman',Times; ">Gallery</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarColor01">
        <ul class="navbar-nav mr-auto">
         <li class="nav-item">
            <a class="nav-link" href="sortOfA.jsp">所有艺术家</a>
          </li>
            <a class="nav-link" href="sortOfW.jsp">所有作品</a>
          </li>

        </ul>
       <form class="form-inline my-2 my-lg-0" action="findServlet">
          <input name="usr_input" class="form-control mr-sm-2" type="text" placeholder="Search">
          <button class="btn btn-secondary my-2 my-sm-0" type="submit">搜索</button>
        </form>
      </div>
    </nav>


    <!--info-->
    <div style="margin:30px">
        <div style="margin: auto;width:90%">
            <h2 style="font-size:20px;font-family: Georgia;margin-left: 10px "><%=artist.getName_cn() %></h2>
            <hr>
        </div>
        <div  class="row" style="margin: auto;width: 80%;">
            <div class="left" style="">
                <div class="card" style="" >
                  <a class="thumbnail"><img src="http://localhost:8080/Ggllery/images/<%=artist.getImg()%>" class="card-img-top" data-src="holder.js/100%x180/?text=Image cap" alt="Card image cap">
                 </a>
                </div>
            </div>
            <div class="right">
                <table class="table">
                  <tbody>
                    <tr>
                      <th scope="row">全名</th>
                      <td><%=artist.getName_cn() %></td>
                    </tr>
                    <tr>
                      <th scope="row">Full-name</th>
                      <td><%=artist.getName_en() %></td>
                    </tr>
                    <tr>
                      <th scope="row">出生</th>
                      <td><%=artist.getBorn() %></td>
                    </tr>
                    <tr>
                        <th scope="row">逝世</th>
                        <td><%=artist.getDied() %></td>
                    </tr>
                    <tr>
                        <th scope="row">国籍</th>
                        <td><%=artist.getNationality() %></td>
                    </tr>
                    <tr>
                        <th scope="row">代表作</th>
                        <td><%=artist.getNotableWork() %></td>
                    </tr>
                  </tbody>
                </table> 
            </div>
        </div>

    </div>
    
    <!--detail-->
    <div style="margin:auto;width: 80%">
        <ul class="nav nav-tabs">
          <li class="nav-item">
            <a class="nav-link active" data-toggle="tab" href="#home">作品列表</a>
          </li>
        </ul>
        <div id="myTabContent" class="tab-content">
          <div class="tab-pane fade show active" id="home">
<% 
    for(A_work work:list){
	   if(work.getId()==artist.getId()){
 %>
			<a class="margin:10px" href="work_info.jsp?id=<%=work.getWId() %>" >《<%= work.getName_cn() %>》</a>
<%
	    }else{
	    	continue;
	    	}
	    }
%>
          </div>
        </div>
    </div>
 </div>
 </div>   
    
    

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