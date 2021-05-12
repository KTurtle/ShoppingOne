<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--Header01 (기본으로 사용하는 홈페이지 헤더부분) -->
<html>
<head>
<meta charset="utf-8">
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
</head>

<body>
	<!-- Start Top Nav -->
	<nav
		class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block" id="templatemo_nav_top">
		<div class="container text-light">
			<div class="w-100 d-flex justify-content-between">
				<div>
					<i class="fa fa-envelope mx-2"></i> <a
						class="navbar-sm-brand text-light text-decoration-none">info@naver.com</a>
					<i class="fa fa-phone mx-2"></i> <a
						class="navbar-sm-brand text-light text-decoration-none">010-020-0340</a>
				</div>
                <div>
                    <a class="text-light" href="./login.jsp" rel="sponsored">로그인</a>
                    &nbsp;&nbsp;&nbsp;
                    <a class="text-light" href="./joinForm.jsp" rel="sponsored">회원가입</a>
                    &nbsp;&nbsp;&nbsp;
                    <a class="text-light" href="./q&a.jsp" rel="sponsored">Q&A</a>
                    &nbsp;&nbsp;&nbsp;
                    
                </div>
			</div>
		</div>
	</nav>
	<!-- Close Top Nav -->

	<div>
		<class class="carousel-inner">
			<div class="container">
						<a href="mainList.jsp">
							<div style="text-align : center;">
								<img class="img-fluid" src="./assets/img/ascom_logo02.png" width="w-auto" height="w-auto">
							</div>
						</a>
													
			</div>
		</class>
	</div>

	


	<!-- Close Header -->
</body>

<!--Header01끝-->

<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<title>회원가입</title>
</head>
<body>

	<div class="card-body">
		<h3 align="left"><b>회원가입</b></h3>
	</div>

	<div class="card-body">
		<form method="post" action="insertUserCtrl" novalidate>
			<table class="table">
				<tr>
					<td>아이디:</td>
					<td>
						<input type="text" name="userid" value="아이디 입력" size="50" onkeydown="inputIdChk()">&nbsp;&nbsp;
						<input type="button" value="중복확인" onclick="window.open('TestingView.jsp','중복확인','height=400,width=500,top=200,left=500')">
						<%-- onclick="location.href='TestingView.jsp'    idCheck(${id}) --%>
						<input type="hidden" name="inDuplication" value="idUncheck">
					</td>
					
				</tr>
				<tr>
					<td>패스워드:</td>
					<td>
						<input type="password" name="password">
					</td>
				</tr>
				<tr>
					<td>이름:</td>
					<td><input type="text" name="username" size="30" maxlength="10"></td>
				</tr>
				<tr>
					<td>전화번호:</td>
					<td><input type="text" name="tel"></td>
				</tr>
				<tr>
					<td>E-Mail:</td>
					<td><input type="email" name="email" required></td>
				</tr>
				<tr>
					<td>주소:</td>
					<td><input type="text" name="address" placeholder="서울시 "></td>
				</tr>
				
				<tr>
					<td colspan="2">
						<input type="submit" value="전송"> 
						<%-- <input type="reset" value="리셋"> --%>
					</td>
				</tr>
			</table>

		</form>
	</div>

</body>
</html>