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
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<title>로그인</title>
</head>
<body>
   <div align="center" style="margin: auto auto" class="card-body">
      <h2><b>로그인</b></h2>
      <hr>
      <form method="post" action="loginCtrl">
         <table class="table" style="width:700px">
            <tr>
               <td>아이디</td>
               <td><input type="text" class="form-control" name="userid" value="admin" /></td>
            </tr>
            <tr>
               <td>비밀번호</td>
               <td><input type="password" class="form-control" name="password" value="1234"/></td>
            </tr>
            <tr>
            
            
             
               <td width="30%">
                  <input type="submit" value="로그인" class="btn btn-outline-secondary" />    
				<td>
				&nbsp;&nbsp;
               <button type="button" class="btn btn-outline-primary" onclick="location='joinForm.jsp'">회원가입</button>              	
      			<%-- 누르면 다른 페이지 가서 입력 -> 물고 db 저장 --%>
              
               
            </tr>
         </table>
      </form>
      
      <hr>
   </div>
</body>
</html>