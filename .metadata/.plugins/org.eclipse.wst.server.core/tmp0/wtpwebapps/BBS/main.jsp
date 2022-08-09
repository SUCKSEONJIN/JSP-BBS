<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-Type" content="text/html;charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.min.css">
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


	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>