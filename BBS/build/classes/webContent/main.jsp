<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-Type" content="text/html;charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/custom.css">

<title>JSP 웹 게시판</title>
</head>
<body>

<%
	String userID = null;
	if(session.getAttribute("userID") != null){
		userID = (String)session.getAttribute("userID");
	}					
%>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="main.jsp">JSP 게시판 웹사이트</a>
		<div class="navbar-header">
			<button type="button" class="navbar-toggler"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-controls="bs-example-navbar-collapse-1"
				aria-expanded="false" aria-label="Toggle navigation">			
				<span class="navbar-toggler-icon"></span>				
			</button> 					
		</div>
		
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="navbar-nav mr-auto">
			 <li class="nav-item active">
			  <a class="nav-link active" href="main.jsp">메인<span class="sr-only"></span></a>
			 </li>			 			
			 <li class="nav-item">
			 <a class="nav-link" href="bbs.jsp">게시판</a>
			 </li>
			 </ul>
				 <%
				 	if(userID == null){
				 %>
				<ul class="dropdown">
		        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		          접속하기
		        </a>
		        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
		          <li><a class="dropdown-item" href="login.jsp">로그인</a></li>
		          <li><a class="dropdown-item" href="join.jsp">회원가입</a></li>		          		          
		        </div>
		      	</ul>
		      	<%
				 	}else{
		      	%>			
		      	<ul class="nav navbar-nav">
		      		<li class="dropdown">
		      			<a href="#" class="dropdown-toggle"
		      			data-toggle="dropdown" role="button" aria-haspopup="true"
		      			aria-expanded="false">회원관리</a>
		      			<ul class="dropdown-menu">
		      				<li><a href="logoutAction.jsp">로그아웃</a></li>
		      			</ul>
		      		</li>		      				
		      	</ul>
		      	<%
				 	}
		      	%>			
		</div>					
	</nav>
	<div class= "container mt-3">
		<div class="jumbotron">
			<h1>웹 사이트 소개</h1>
			<p>이 웹 사이트는 부트스트랩으로 만든 jsp 웺 사이트 입니다. 최소한의 간단한 로직을 이용해서 개발했습니다.</p>
			<h2><a class="btn btn-primary" href="#" role="button">자세히 알아보기</a></h2>
		</div>
	</div>
	<div class="container">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>				
		
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="images/cat1.jpg">				
			</div> 
			<div class="carousel-item">
				<img src="images/Persian.jpg">				
			</div>
			<div class="carousel-item">
				<img src="images/Siamese cat.jpg">
			</div>
		</div>
		<a class="carousel-control-prev" href="#myCarousel" data-slide="prev">
			<span class="carousel-control-prev-icon"></span>
		</a>
		<a class="carousel-control-next" href="#myCarousel" data-slide="next">
		<span class="carousel-control-next-icon"></span>
		</a>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>