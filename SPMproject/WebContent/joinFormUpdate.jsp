<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<title>회원정보수정</title>
	
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
			
				<ul class="list-unstyled ">
					<li class="pb-3"><span class="templatemo-accordion">
					<a class="collapsed d-flex justify-content-between text-decoration-none text-primary h3 pb-3 pt-3"
						href="./getUserCtrl?num=${User.number }"><b> 회원정보수정 </b></a></span></li>
					<li class="pb-3"><span class="templatemo-accordion">
					<a class="collapsed d-flex justify-content-between text-decoration-none h3"
						href="#"> 장바구니 </a></span></li>
					<li class="pb-3"><span class="templatemo-accordion">
					<a class="collapsed d-flex justify-content-between text-decoration-none h3"
						href="./getPaymentListCtrl?num=${User.number }"> 결제내역 </a></span></li>
					<li class="pb-3"><span class="templatemo-accordion">
					<a class="collapsed d-flex justify-content-between text-decoration-none h3"
						href="getBoardListCtrl"> Q&A </a></span></li>
				</ul>
			</div>
		
			<div class="col-lg-9">
				<h3 class="mb-md-5">회원정보수정</h3>			
		
			<div class="mb-md-5">
				<form class="col-lg-9" action="updateUserCtrl" method="post">
			
				<input type="hidden" name="number" class="form-control" value="${User.number }"/>
				
					<table class="table" style="width: 800px">
						<tr>
							<td class="align-middle">아이디 : </td>
							<td align="left">${User.userid }
							</td>
						</tr>
						<tr>
							<td class="align-middle">패스워드 : </td>
							<td align="left">
								<input type="text" name="password" class="form-control" value="${User.password }"/>
							</td>
						</tr>
						<tr>
							<td class="align-middle">이름 : </td>
							<td align="left">
								<input type="text" name="username" class="form-control" value="${User.username }"/>
							</td>
						</tr>
						<tr>
							<td class="align-middle">전화번호 : </td>
							<td align="left">
								<input type="text" name="tel" class="form-control" value="${User.tel }"/>
							</td>
						</tr>
						<tr>
							<td class="align-middle">E-Mail : </td>
							<td align="left">
								<input type="text" name="email" class="form-control" value="${User.email }"/>
							</td>
						</tr>
						<tr>
							<td class="align-middle">주소 : </td>
							<td align="left">
								<input type="text" name="address" class="form-control" value="${User.address }"/>
							</td>
						</tr>
						<tr>
							<td colspan="2" align="center">
								<input type="submit" value="정보 수정" class="btn btn-primary"/>
							</td>
						</tr>
					</table>
				</form>
			</div>
			</div>
			</div>
	</div>

</body>
</html>