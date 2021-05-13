<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!-- EL Expression Language는 request, session, application, page에 
	xxxSetAttribute("name",value) 형태로 등록된 데이터를 ${name} 형태로 
	꺼내 출력할 수 있다.
-->

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>GetBoard</title>
	
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



   <div id="header" class="card-body">
      <h1>게시물 확인</h1>
   </div>

   <div id="content" class="card-body">
      <table class="table">
         <tbody>
            <tr>
               <td>번호</td>
               <td>${board.seq }</td>
            </tr>
            <tr>
               <td>제목</td>
               <td>${board.title }</td>
            </tr>
            <tr>
               <td>내용</td>
               <td>${board.content }</td>
            </tr>
            <tr>
               <td>작성일</td>
               <td>${board.regdate }</td>
            </tr>
      
            <tr>
               <td colspan="2">
                  <button class="btn btn-primary"
                    	 	onclick="location.href='getBoardListCtrl'">목록</button>
                  <button class="btn btn-primary" 
                  			onclick="location.href='updateBoardBeforeCtrl?num=${board.seq }'">수정</button>
                  <button class="btn btn-danger" 
                  			onclick="location.href='deleteBoardCtrl?num=${board.seq }'">삭제</button>
               </td>
            </tr>
         </tbody>
      </table>
   </div>

   <div id="footer" class="card-body"></div>
</body>
</html>
