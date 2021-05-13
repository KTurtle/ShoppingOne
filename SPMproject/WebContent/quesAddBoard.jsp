<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<c:if test ="${empty name}">
	<c:redirect url="login.jsp" />
</c:if>  --%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>새글등록</title>
	
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="apple-touch-icon" href="assets/img/apple-icon.png">
	<link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">
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

	<jsp:include page="HeaderSimple.jsp"></jsp:include>

	<div class="container py-5">
		<div class="row">

			<div class="col-lg-3">
				
				<ul class="list-unstyled templatemo-accordion">
					<li class="pb-3"><a class="collapsed d-flex justify-content-between text-decoration-none h3"
						href="./getUserCtrl?num=${number }"> 회원정보수정 </a></li>
					<li class="pb-3"><a class="collapsed d-flex justify-content-between text-decoration-none h3"
						href="#"> 장바구니 </a></li>
					<li class="pb-3"><a class="collapsed d-flex justify-content-between text-decoration-none text-primary h3 pb-3 pt-3 "
						href="./getPaymentListCtrl?num=${number }"><b> 결제내역 </b></a></li>
					<li class="pb-3"><a class="collapsed d-flex justify-content-between text-decoration-none h3"
						href="./q&a.jsp"> Q&A </a></li>
				</ul>
				
			</div>
			
			<div class="col-lg-auto">
			
			
			<!-- 여기에 내용 -->
			
			</div>
		</div>
	</div>
	
	<!-- </body>뒤부터는 이쪽 뒤에 이어진다. -->
	
			

	<div align="center" style="margin: auto auto" class="card-body">
		<h3>
			${name }님. 새글 등록하기..<a href="loginCtrl">LOG-OUT</a>
		</h3>
		<hr>
		<form action="addBoardCtrl" method="post">
			<table class="table" style="width: 800px">
				<tr>
					<td>제목</td>
					<td align="left">
						<input type="text" name="title" class="form-control"/>
					</td>
				</tr>
				<tr>
					<td>작성자</td>
					<td align="left">
						<input type="text" name="username" size="10" class="form-control"/>
					</td>
				</tr>
				
				<tr>
					<td>내용</td>
					<td align="left">
						<textarea name="content" cols="40" rows="10" class="form-control"></textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value=" 새글 등록 " class="btn btn-primary"/>
					</td>
				</tr>
			</table>
		</form>
		<hr>
	</div>
</body>
</html>