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
<<<<<<< HEAD
	
	<jsp:include page="HeaderSimple.jsp" />
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
=======

	<jsp:include page="HeaderSimple.jsp"></jsp:include>

	<div class="container py-5">
		<div class="row">

			<div class="col-lg-3">
				<ul class="list-unstyled templatemo-accordion">
					<li class="pb-3"><a class="collapsed d-flex justify-content-between text-decoration-none h3"
						href="./getUserCtrl?num=${number }"> 회원정보수정 </a></li>
					<li class="pb-3"><a class="collapsed d-flex justify-content-between text-decoration-none h3"
						href="#"> 장바구니 </a></li>
					<li class="pb-3"><a class="collapsed d-flex justify-content-between text-decoration-none h3"
						href="./getPaymentListCtrl?num=${number }"> 결제내역 </a></li>
					<li class="pb-3"><a class="collapsed d-flex justify-content-between text-decoration-none text-primary h3 pb-3 pt-3"
						href="getBoardListCtrl"><b> Q&A </b></a></li>
				</ul>
			</div>

>>>>>>> d4b689ec5f5e626d33926ed459f1217e235c4ebf

		<div class="col-lg-auto">
			<div>
			<h1>Q&A 게시판</h1>
			<!-- <h3>${username }님 환영합니다 <a href= "logoutCtrl">Logout</a></h3> -->
			</div> 
	
			<div class="mb-md-5 mt-md-5">
			<c:if test="${not empty boardList }">
				<table class="text-dark" style="width: 800px">
					<thead>
						<tr class="border">
							<th class="col-lg-auto border text-center p-2 mx-3">번호</th>
							<th class="col-lg-auto border text-center p-2 mx-3">타이틀</th>
							<th class="col-lg-auto border text-center p-2 mx-3">작성자</th>
							<th class="col-lg-auto border text-center p-2 mx-3">내용</th>
							<th class="col-lg-auto border text-center p-2 mx-3">작성일</th>
						</tr>
					</thead>
					
					<tbody>
						   
						<c:forEach var="board" items="${boardList }">
							<tr class="border">
								<td class="border text-center p-2 mx-3">${board.seq }</td>
								<td class="border text-center p-2 mx-3"><a href="getBoardCtrl?num=${board.seq }">${board.title }</a></td>
								<td class="border text-center p-2 mx-3">${board.username }</td>
								<td class="border text-center p-2 mx-3">${board.content }</td>
								<td class="border text-center p-2 mx-3">${board.regdate }</td>
							</tr>
						</c:forEach>

					</tbody>
				</table>
				</c:if>
				<button class="btn btn-primary mt-md-5" 
		        	onclick="location.href='quesAddBoard.jsp'">새 게시물 작성</button>
		        	
			</div>
		</div>

	</div>
</div>
</body>
<jsp:include page="Footer.jsp" />
</html>