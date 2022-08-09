<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<title>JSP 웹 게시판</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="main.jsp">JSP 게시판 웹사이트</a>
		<div class="navbar-header">
			<button type="button" class="navbar-toggler"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-controls=bs-example-navbar-collapse-1
				aria-expanded="false" aria-label="Toggle navigation">			
				<span class="navbar-toggler-icon"></span>				
			</button> 					
		</div>
		
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="navbar-nav mr-auto">
			 <li class="nav-item active">
			  <a class="nav-link" href="#">메인<span class="sr-only"></span></a>
			 </li>
			 <li class="nav-item">
			 <a class="nav-link" href="#">게시판</a>
			 </li>
			 </ul> 
				<ul class=" dropdown">
		        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		          접속하기
		        </a>
		        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
		          <a class="dropdown-item" href="login.jsp">로그인</a>
		          <a class="dropdown-item active" href="join.jsp">회원가입</a>		          		          
		        </div>
		      	</ul>						
		</div>					
	</nav>
	
	<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top: 20px;">
			<form method="post" action="joinAction.jsp">
				<h3 style="text-align: center;">회원가입 화면</h3>
				<div class="form-group">
					<input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20">					
				</div>
				<div class="form-group">
					<input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20">					
				</div>
				<div class="form-group">
					<input type="text" class="form-control" placeholder="이름"  name="userName" maxlength="20">					
				</div>
				<div class="form-group" style="text-align: center;">
					<div class="btn-group" data-toggle="buttons">
					<label class="btn btn-primary active">					
						<input type="radio" name="userGender" autocomplete="off" value="남자" checked>남자
					</label>						
					<label class="btn btn-primary">
							<input type="radio" name="userGender" autocomplete="off" value="여자" checked>여자
					</label>					
					</div>								
				</div>				
				<div class="form-group">
					<input type="email" class="form-control" placeholder="이메일" name="userEmail" maxlength="20">
				</div>				
				<input type="submit" class="btn btn-primary form-control" value="회원가입">
			</form>			
		</div>
	</div>
	<div class="col-lg-4"></div>
</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>