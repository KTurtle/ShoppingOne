<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원정보조회</title>
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
	
	<jsp:include page="HeaderSimple.jsp"></jsp:include>
	
	
	<div class="container py-5">
		<div class="row">

			<div class="col-lg-3">
				<ul class="list-unstyled templatemo-accordion">
					<li class="pb-3"><a class="collapsed d-flex justify-content-between text-decoration-none text-primary h3 pb-3 pt-3"
						href="./getUserCtrl?num=${User.number }"><b> 회원정보수정 </b></a></li>
					<li class="pb-3"><a class="collapsed d-flex justify-content-between text-decoration-none h3"
						href="#"> 장바구니 </a></li>
					<li class="pb-3"><a class="collapsed d-flex justify-content-between text-decoration-none h3"
						href="./getPaymentListCtrl?num=${User.number }"> 결제내역 </a></li>
					<li class="pb-3"><a class="collapsed d-flex justify-content-between text-decoration-none h3"
						href="getBoardListCtrl"> Q&A </a></li>
				</ul>
			</div>
			
			<div class="col-lg-9">
				<div>
      				<h3 class="mb-md-5">${User.username }님 회원 정보</h3>
    			</div>
			
				<div class="mb-md-5">
		      	<table class="text-dark col-lg-9">
			         <tbody>
			            <tr class="border-bottom">
			               <td>아이디</td>
			               <td>${User.userid }</td>
			            </tr>
			            <tr class="border-bottom">
			               <td>비밀번호</td>
			               <td>${User.password }</td>
			            </tr>
			            <tr class="border-bottom">
			               <td>전화번호</td>
			               <td>${User.tel }</td>
			            </tr>
			            <tr class="border-bottom">
			               <td>email</td>
			               <td>${User.email }</td>
			            </tr>
			            <tr class="border-bottom">
			               <td>address</td>
			               <td>${User.address }</td>
			            </tr>
			      
			            <tr>
			               <td colspan="2"><button class="btn btn-primary mt-md-5" 
			                 onclick="location.href='updateUserBeforeCtrl?num=${User.number }'">수정</button>
			               </td>
			            </tr>
		         	</tbody>
		      	</table>
		   		</div>
			</div>

		</div>
	</div>
	

</body>
</html>