<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
			
			<div class="col-lg-auto">
				<div>
      				<h3 class="mb-md-5">결제내역확인</h3>
    			</div>
			
				<form action="Newfile.jsp" method="post">
				<div class="mb-md-5">
		      	<table class="text-dark col-lg-auto">
		      	
		      		<thead>
						<tr class="border">
							<th class="col-lg-auto border text-center p-2 mx-3">선택</th>
							<th class="col-lg-auto border text-center p-2 mx-3">결제번호</th>
							<th class="col-lg-auto border text-center p-2 mx-3">회원번호</th>
							<th class="col-lg-auto border text-center p-2 mx-3">상품번호</th>
							<th class="col-lg-auto border text-center p-2 mx-3">주문수량</th>
							<th class="col-lg-auto border text-center p-2 mx-3">배송지</th>
							<th class="col-lg-auto border text-center p-2 mx-3">전화번호</th>
							<th class="col-lg-auto border text-center p-2 mx-3">신용카드번호</th>
						</tr>
					</thead>
		      	
			        <tbody>
			        
			        <c:forEach var="payment" items="${paymentList }">
			        
						<tr class="border">
						<td class="border text-center p-2 mx-3">
							<input type="radio" name="test" value="test">
						</td>
							<td class="border text-center p-2 mx-3">${payment.paymentid }</td>
							<td class="border text-center p-2 mx-3">${payment.usernumber }</td>
							<td class="border text-center p-2 mx-3">${payment.productid }</td>
							<td class="border text-center p-2 mx-3">${payment.cnt }</td>
							<td class="border text-center p-2 mx-3">${payment.address }</td>
							<td class="border text-center p-2 mx-3">${payment.tel }</td>
							<td class="border text-center p-2 mx-3">${payment.CCnumber }</td>
							 
						</tr>
					</c:forEach>

		            <tr>
		               <td colspan="2"><button class="btn btn-success mt-md-5" 
		                 onclick="location.href='#'">결제취소</button>
		               </td>
		            </tr>
		            
		         	</tbody>
		      	</table>
		   		</div>
		   		</form>
			</div>
			
		</div>
	</div>
<jsp:include page="Footer.jsp" />
</body>
</html>