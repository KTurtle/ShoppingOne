<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>결제내역조회</title>
	
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
				<h1 class="h2 pb-4">회원정보수정</h1>
				<ul class="list-unstyled templatemo-accordion">
					<li class="pb-3"><a class="collapsed d-flex justify-content-between h3 text-decoration-none"
						href="#"> 장바구니 </a></li>
					<li class="pb-3"><a class="collapsed d-flex justify-content-between h3 text-decoration-none"
						href="#"> 결제내역 </a></li>
					<li class="pb-3"><a class="collapsed d-flex justify-content-between h3 text-decoration-none"
						href="./q&a.jsp"> Q&A </a></li>
				</ul>
			</div>
			
			<div class="col-lg-9">
				<div>
      				<h1 class="ms-md-2 mb-md-5">결제내역확인</h1>
    			</div>
			
				<div class="ms-md-2 mb-md-5">
		      	<table class="text-dark col-lg-9">
			         <tbody>
			            <tr class="border-bottom">
			               <td>결제번호</td>
			               <td>${payment.paymentid }</td>
			            </tr>
			            <tr class="border-bottom">
			               <td>회원번호</td>
			               <td>${payment.usernumber }</td>
			            </tr>
			            <tr class="border-bottom">
			               <td>상품번호</td>
			               <td>${payment.productid }</td>
			            </tr>
			            <tr class="border-bottom">
			               <td>주문수량</td>
			               <td>${payment.cnt }</td>
			            </tr>
			            <tr class="border-bottom">
			               <td>배송지</td>
			               <td>${payment.address }</td>
			            </tr>
			            <tr class="border-bottom">
			               <td>전화번호</td>
			               <td>${payment.tel }</td>
			            </tr>
			            <tr class="border-bottom">
			               <td>신용카드번호</td>
			               <td>${payment.CCnumber }</td>
			            </tr>
			      
			            <tr>
			               <td colspan="2"><button class="btn btn-primary mt-md-5" 
			                 onclick="location.href='#'">결제취소</button>
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