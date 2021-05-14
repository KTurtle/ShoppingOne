<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!--  fdsssssssssssssssssssssssss -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세페이지</title> <!-- detailPageForm.jsp -->
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

<!--  TemplateMo 559 Zay Shop https://templatemo.com/tm-559-zay-shop -->
<link rel="stylesheet" type="text/css"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

</head>
<body>
	<!-- header -->
	<jsp:include page="Header.jsp" />
	<!-- header끝 -->

	<div class="container">
		<div class="row">

			<!-- 상품별 상세페이지 폼 -->

			<!-- 왼쪽 카테고리 폼 -->
			<div class="col-lg-3">
				<h1 class="h2 pb-4" onclick="location.href='shop${productvo.producttype}Page.jsp'" >${productvo.producttype}</h1>								
			
				<c:choose>

				<c:when test="${productvo.producttype eq 'Top'}">
				<ul class="list-unstyled templatemo-accordion"> 
					<li class="pb-3"><a
						class="collapsed d-flex justify-content-between h3 text-decoration-none"
						href="#" onclick="location.href='shopTshirt.jsp'">T-shirt</a></li>
					<li class="pb-3"><a
						class="collapsed d-flex justify-content-between h3 text-decoration-none"
						href="#" onclick="location.href='shopBlouse.jsp'">Blouse</a></li>
				</ul>	
				</c:when>
				</c:choose>
				 
				 <%-- 
				<!-- 2.Bottom -->			
				<ul class="list-unstyled templatemo-accordion"> 
					<li class="pb-3"><a
						class="collapsed d-flex justify-content-between h3 text-decoration-none"
						href="#" onclick="location.href='shopSkirt.jsp'"> <c:when test="${productvo.producttype}=Bottom">Skirt</c:when> </a></li>
					<li class="pb-3"><a
						class="collapsed d-flex justify-content-between h3 text-decoration-none"
						href="#"> <c:when test="${productvo.producttype}=Bottom">Pants</c:when> </a></li>
				</ul>
				<!-- 3.Dress -->				
				<ul class="list-unstyled templatemo-accordion"> 
					<li class="pb-3"><a
						class="collapsed d-flex justify-content-between h3 text-decoration-none"
						href="#" onclick="location.href='shopSkirt.jsp'"> <c:when test="${productvo.producttype}=Dress">Long</c:when> </a></li>
					<li class="pb-3"><a
						class="collapsed d-flex justify-content-between h3 text-decoration-none"
						href="#"> <c:when test="${productvo.producttype}=Dress">Midi</c:when> </a></li>
				</ul>
				<!-- 4.Outer -->				
				<ul class="list-unstyled templatemo-accordion"> 
					<li class="pb-3"><a
						class="collapsed d-flex justify-content-between h3 text-decoration-none"
						href="#" onclick="location.href='shopSkirt.jsp'"> <c:when test="${productvo.producttype}=Outer">Coat</c:when> </a></li>
					<li class="pb-3"><a
						class="collapsed d-flex justify-content-between h3 text-decoration-none"
						href="#"> <c:when test="${productvo.producttype}=Outer">Jacket</c:when> </a></li>
				</ul>	
				<!-- 5.Shoes -->			
				<ul class="list-unstyled templatemo-accordion"> 
					<li class="pb-3"><a
						class="collapsed d-flex justify-content-between h3 text-decoration-none"
						href="#" onclick="location.href='shopSkirt.jsp'"> <c:when test="${productvo.producttype}=Shoes">Heels</c:when> </a></li>
					<li class="pb-3"><a
						class="collapsed d-flex justify-content-between h3 text-decoration-none"
						href="#"> <c:when test="${productvo.producttype}=Shoes">Sneakers</c:when> </a></li>
				</ul>
				
				--%>
				
				
			</div>
		


			<div class="col-lg-5">
				<table border="1">
					<tr>
						<td><img src="${productvo.productURL}"
							width="340" height="300"></td>
						<td>
							<table border="1" style="height: 300px; width: 400px;">
								<tr align="center">
									<td>상품명</td>
									<td>${productvo.productName}</td>
								</tr>
								<tr align="center">
									<td>가격</td>
									<td><fmt:formatNumber value="${productvo.price}"
											pattern="###,###,###" /></td>
								</tr>
								<tr align="center">
									<td>상품소개</td>
									<td>${productvo.explanation}</td>
								</tr>
								<tr align="center">
									<td colspan="2">
										<form name="form1" method="post"
											action="assets/shop/cart/insert.do">
											<input type="hidden" name="productId"
												value="${productvo.productId}"> <select
												name="amount">
												<c:forEach begin="1" end="10" var="i">
													<option value="${i}">${i}</option>
												</c:forEach>
											</select>&nbsp;개 <input type="submit" value="장바구니에 담기">
										</form>
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<hr>


	<!--footer -->
	<jsp:include page="Footer.jsp" />
	<!--footer끝 -->
</body>
</html>