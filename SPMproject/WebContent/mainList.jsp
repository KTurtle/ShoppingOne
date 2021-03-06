<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<head>
    <title>ASCOMshopping</title> <!-- 메인홈화면 -->

	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="apple-touch-icon" href="assets/img/apple-icon.png">
	<link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/css/templatemo.css">
	<link rel="stylesheet" href="assets/css/custom.css">

	<!-- Load fonts style after rendering the layout styles -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
	<link rel="stylesheet" href="assets/css/fontawesome.min.css">
	<!-- TemplateMo 559 Zay Shop https://templatemo.com/tm-559-zay-shop -->
	
</head>

<body>
    <!-- Start Top Nav -->
    <nav class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block" id="templatemo_nav_top">
        <div class="container text-light">
            <div class="w-100 d-flex justify-content-between">
                <div>
                    <i class="fa fa-envelope mx-2"></i>
                    <a class="navbar-sm-brand text-light text-decoration-none">info@naver.com</a>
                    <i class="fa fa-phone mx-2"></i>
                    <a class="navbar-sm-brand text-light text-decoration-none">010-020-0340</a>
                </div>
                <div>
                    <!-- login 안 된 상태 -->
                    <c:if test = "${username == null}">
                        <a class="text-light" href="./login.jsp" rel="sponsored">로그인</a>
                        &nbsp;&nbsp;&nbsp;
                        <a class="text-light" href="./joinForm.jsp" rel="sponsored">회원가입</a>
                        &nbsp;&nbsp;&nbsp;
                    </c:if>


                    <!-- login 된 상태 -->

                    <c:if test = "${username != null}">
                        <a class="text-light" href="logoutCtrl" rel="sponsored">로그아웃</a>
                        &nbsp;&nbsp;&nbsp;
                        <a class="text-light" href="mypage.jsp" rel="sponsored">마이페이지</a>
                        &nbsp;&nbsp;&nbsp;
                    </c:if>
                </div>
            </div>
        </div>
    </nav>
    <!-- Close Top Nav --> 
    
    <!-- Start ASCOM.com 배너이미지+홈링크 --> 
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
    <!-- Close ASCOM.com 배너이미지+홈링크 --> 

    <!-- Header -->   
    <div class="navbar navbar-expand-lg navbar-light d-none d-lg-block">           

        <button class="navbar-toggler border-0" type="button"
            data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav"
            aria-controls="navbarSupportedContent" aria-expanded="false"
            aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
    <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav">

    <div class="flex-fill">
    
        <ul 
        class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
        
        	
                
            <li class="nav-item"><a class="nav-link"
                href="shopTopPage.jsp">Top</a></li>
                
            <li class="nav-item"><a class="nav-link"
                href="shopBottomPage.jsp">Bottom</a></li>
                
            <li class="nav-item"><a class="nav-link"
                href="shopDressPage.jsp">Dress</a></li>
                
            <li class="nav-item"><a class="nav-link"
                href="shopOuterPage.jsp">Outer</a></li>    
                
            <li class="nav-item"><a class="nav-link"
                href="shopShoesPage.jsp">Shoes</a></li>
            
        </ul>

    
	</div>

<div class="navbar align-self-center d-flex">
    <div
        class="d-lg-none flex-sm-fill mt-3 mb-4 col-7 col-sm-auto pr-3">
        <div class="input-group">
            <input type="text" class="form-control" id="inputMobileSearch"
                placeholder="Search ...">
            <div class="input-group-text">
                <i class="fa fa-fw fa-search"></i>
            </div>
        </div>
    </div>


</div>
</div>
    </div>     
</body>
<!-- Close Header -->   

    <!-- Modal -->
    <div class="modal fade bg-white" id="templatemo_search" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="w-100 pt-1 mb-5 text-right">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="" method="get" class="modal-content modal-body border-0 p-0">
                <div class="input-group mb-2">
                    <input type="text" class="form-control" id="inputModalSearch" name="q" placeholder="Search ...">
                    <button type="submit" class="input-group-text bg-success text-light">
                        <i class="fa fa-fw fa-search text-white"></i>
                    </button>
                </div>
            </form>
        </div>
    </div>



    <!-- 좌우이동배너01 -->
    <div id="template-mo-zay-hero-carousel" class="carousel slide" data-bs-ride="carousel">
        <ol class="carousel-indicators">
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="0" class="active"></li>
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="1"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="container">
                    <div class="row p-5">
                        <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                            <img class="img-fluid" src="./assets/img/banner_img_01.jpg" alt="">
                        </div>
                        <div class="col-lg-6 mb-0 d-flex align-items-center">
                            <div class="text-align-left align-self-center">
                                <h1 class="h1 text-success"><b>ASCOM</b> <hr> NEW PRODUCT</h1>
                                <h3 class="h2">White Sneakers</h3>
                                <p>
                                    편안한 착화감과 가벼운 White Sneakers가<br> 새로 입고 되었습니다.
                                    <br>입고된 White Sneakers는  <a rel="sponsored" class="text-success" href="shopShoesPage.jsp" target="_blank">이 링크</a> 에서 구매가능합니다.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            
         
            <div class="carousel-item">
                <div class="container">
                    <div class="row p-5">
                        <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                            <img class="img-fluid" src="./assets/img/deli.png" alt=""><!-- assets잘찾기...ㅜ -->
                        </div>
                        <div class="col-lg-6 mb-0 d-flex align-items-center">
                            <div class="text-align-left">
                                <h1 class="h1 text-success"><b>ASCOM은</b> </h1>
                                	<h3 class="h2">빠른 배송, 높은 품질 제공을 <br>약속드립니다.</h3>
                                <p>
                                   <Strong>Our ASCOM,</Strong> which was newly established in 2020, has many customers so far, has grown based on good quality and fast delivery. 
                                   We started shipping overseas in 2021, and we are currently with many global customers.
                                </p>
                            </div>
                        </div>  
                    </div>
                </div>
            </div>
           
        </div>
        <a class="carousel-control-prev text-decoration-none w-auto ps-3" href="#template-mo-zay-hero-carousel" role="button" data-bs-slide="prev">
            <i class="fas fa-chevron-left"></i>
        </a>
        <a class="carousel-control-next text-decoration-none w-auto pe-3" href="#template-mo-zay-hero-carousel" role="button" data-bs-slide="next">
            <i class="fas fa-chevron-right"></i>
        </a>
    </div>  
    <!-- 좌우이동배너01 -->


    
    <!-- Start Featured Product -->
    <section class="bg-light">
        <div class="container py-5">
            <div class="row text-center py-3">
                <div class="col-lg-6 m-auto">
                    <h1 class="h1">Best Seller</h1>
                    <p>
                        
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-md-4 mb-4">
                    <div class="card h-100">
                        <a href="viewDetailProductBefore?productURL=assets/img/shop_03.jpg">
                            <img src="assets/img/shop_03.jpg" class="card-img-top" alt="...">
                        </a>
                        <div class="card-body">
                            <ul class="list-unstyled d-flex justify-content-between">
                                <li>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                </li>
                                <li class="text-muted text-right">65000</li>
                            </ul>
                            <a href="viewDetailProductBefore?productURL=assets/img/shop_03.jpg" class="h2 text-decoration-none text-dark">네이비드레스</a>
                            <p class="card-text">
                                네이비색상의 주름디테일 드레스
                            </p>
                            
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-4 mb-4">
                    <div class="card h-100">
                        <a href="viewDetailProductBefore?productURL=assets/img/shop_16.jpg">
                            <img src="./assets/img/shop_16.jpg" class="card-img-top" alt="...">
                        </a>
                        <div class="card-body">
                            <ul class="list-unstyled d-flex justify-content-between">
                                <li>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-muted fa fa-star"></i>
                                </li>
                                <li class="text-muted text-right">40000</li>
                            </ul>
                            <a href="shop-single.jsp" class="h2 text-decoration-none text-dark">매듭반팔블라우스</a>
                            <p class="card-text">
                                실크소재를 혼합해 부드러운 감촉의 리본디테일이 살아있는 블라우스
                            </p>
                            
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-4 mb-4">
                    <div class="card h-100">
                        <a href="viewDetailProductBefore?productURL=assets/img/shop_05.jpg">
                            <img src="./assets/img/shop_05.jpg" class="card-img-top" alt="...">
                        </a>
                        <div class="card-body">
                            <ul class="list-unstyled d-flex justify-content-between">
                                <li>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                </li>
                                <li class="text-muted text-right">105000</li>
                            </ul>
                            <a href="shop-single.jsp" class="h2 text-decoration-none text-dark">블랙자켓</a>
                            <p class="card-text">
                               심플한 기본 자켓
                            </p>
                           
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Featured Product -->

	<jsp:include page="Footer.jsp" />
</body>
</html>
