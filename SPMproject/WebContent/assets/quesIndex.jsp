<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<title>Index Page</title>
</head>
<body>
	<div align="center" style="margin: auto auto; height: 100%" class="card-body">
		<h1>게시판 제작 예제</h1>
		<br>
		<br>

	<%--<c:if test="${empty name }">
		<div style="width: 800px;">
			<a href="login.jsp">로그인</a>
		</div>
		
	</c:if>  --%>

	<c:if test="${!empty name }">
		<div style="width: 800px">
			<a href="logoutCtrl">로그아웃</a> | 
			<a href="getBoardListCtrl">글 목록</a> | 
			<a href="quesAddBoard.jsp">글 쓰기</a>
		</div>
	</c:if>
	
	
	</div>
</body>
</html>