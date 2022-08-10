<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="bbs.Bbs" %>
<%@ page import="bbs.BbsDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-Type" content="text/html;charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/bootstrap.min.css">
<title>JSP 웹 게시판</title>
<style type="text/css">
	a ,a:hover {
	color: #000000;
	text-decoration: none;
}
</style>
</head>
<body>

<%
	String userID = null;
	if(session.getAttribute("userID") != null){
		userID = (String)session.getAttribute("userID");
	}					
	
	int bbsID = 0;
	if(request.getParameter("bbsID") != null){
		bbsID = Integer.parseInt(request.getParameter("bbsID"));
	}
	if(bbsID == 0){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('유효하지 않은 글입니다.')");
		script.println("location.href= 'bbs.jsp'");
		script.println("</script>");		
	}
	
	Bbs bbs = new BbsDAO().getBbs(bbsID);
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
			 <a class="nav-link active" href="bbs.jsp">게시판</a>
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
	<div class="container">
		<div class="row">		 
			<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th colspan="3" style="background-color: #eeeeee; text-align: center;">게시판 글보기</th>
					</tr>
			</thead>
			<tbody>
				<tr>
					<td style="width: 20%;">글 제목</td>
					<td colspan="2"><%= bbs.getBbsTitle().replaceAll(" ", "&nbsp;").replaceAll("<","&lt;").replaceAll(">","&gt;").replaceAll("\n","<br>") %></td>
				</tr>
				<tr>									
					<td>작성자</td>
					<td colspan="2"><%=bbs.getUserID() %></td>									
				</tr>
				<tr>
					<td>작성일자</td>
					<td colspan="2"><%= bbs.getBbsDate().substring(0,11) + bbs.getBbsDate().substring(11, 13)+ "시" + bbs.getBbsDate().substring(14,16) + "분" %></td>	
				</tr>
				<tr>
					<td>내용</td>
					<td colspan="2" style="min-height: 200px; text-align: left;"><%= bbs.getBbsContent().replaceAll(" ", "&nbsp;").replaceAll("<","&lt;").replaceAll(">","&gt;").replaceAll("\n","<br>") %></td>
				</tr>				
			</tbody>			
		</table>
		<a href="bbs.jsp" class="btn btn-primary">목록</a>
		<%
			if(userID != null && userID.equals(bbs.getUserID())){
		%>				
				<a href= "update.jsp?bbsID=<%= bbsID %>"></a>
				<a href="deleteAction.jsp?bbsID=<%= bbsID %>" class="btn btn-primary">삭제</a>		
		<%
			}
		%>
			<div class= "col-12">
				<div class="float-right"><input type="submit" class="btn btn-primary" value="글쓰기"></button></div>
			</div>
		</div>	
</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>