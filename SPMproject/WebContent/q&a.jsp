<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%----<c:if test ="${empty name}">
	<c:redirect url="login.jsp" />
</c:if> --%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Q&A </title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<link rel="apple-touch-icon" href="assets/img/apple-icon.png">
	<link rel="shortcut icon" type="image/x-icon"
		href="assets/img/favicon.ico">
	
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/css/templatemo.css">
	<link rel="stylesheet" href="assets/css/custom.css">
	
	<!-- Load fonts style after rendering the layout styles -->
	<link rel="stylesheet"
		href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
	<link rel="stylesheet" href="assets/css/fontawesome.min.css">
	<!--
	    
	TemplateMo 559 Zay Shop
	
	https://templatemo.com/tm-559-zay-shop
	
	-->
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
	
	<jsp:include page="HeaderSimple.jsp" />
	
	<div class="container lg-8">
    	<div class="row">
      
		<!-- <a href ="/WebClientTest/ex01.htm"> -->
        <div class="col-lg-3">
			<ul class="list-unstyled">
				<li class="pb-3"><a class="collapsed d-flex justify-content-between text-decoration-none text-primary h3 pb-3 pt-3"
					href="./getUserCtrl?num=${number }"><b> 회원정보수정 </b></a></li>
				<li class="pb-3"><a class="collapsed d-flex justify-content-between text-decoration-none h3"
					href="#"> 장바구니 </a></li>
				<li class="pb-3"><a class="collapsed d-flex justify-content-between text-decoration-none h3"
					href="./getPaymentListCtrl?num=${number }"> 결제내역 </a></li>
				<li class="pb-3"><a class="collapsed d-flex justify-content-between text-decoration-none h3"
					href="getBoardListCtrl"> Q&A </a></li>
			</ul>
		</div>
         
	<div class="col-lg-9">
	<div id="header" class="card-body">
		<h1>Q&A 게시판</h1>
		<!-- <h3>${username }님 환영합니다 <a href= "logoutCtrl">Logout</a></h3> -->   
	</div>

	
	<div id="content" class="card-body">
	
		<table class="table">
			<thead class="table-dark">
				<tr>
					<th>번호</th>
					<th>타이틀</th>
					<th>작성자</th>
					<!-- <th>내용</th> -->
					<th>작성일</th>
				</tr>
			</thead>
			<tbody>
			
			<!-- EL로는 for문을 대체할수없다. -->

	<c:forEach var = "board" items="${boardList }">
				<tr>
					<td>${board.seq }</td>
					<td><a href="getBoardCtrl?num=${board.seq }">${board.title }</a></td>
					<td>${board.username }</td>
					<!-- <td>${board.content }</td> -->
					<td>${board.regdate }</td>
				</tr>
				</c:forEach>
		
			<tr>
				<td colspan="5">
				
					<!-- <a href="quesAddBoard.jsp">새 게시물 작성</a>  -->
					
					<a class="btn btn-success" href="quesAddBoard.jsp" role="button">새 게시물 작성</a>
				</td>
			</tr>
			</tbody>
		</table>
	</div>
</div>
	</div>
</div>
</body>
<jsp:include page="Footer.jsp" />
</html>