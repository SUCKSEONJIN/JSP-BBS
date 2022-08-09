<%@page import="user.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-Type" content="text/html;charset=UTF-8">
<title>JSP 웹 게시판</title>
</head>
<body>
	<%
		session.invalidate();//session을 회수하는 메서드				
	%>
	<script>
		location.href = 'main.jsp';
	</script>
</body>
</html>