<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">

<head>
	<title>Mypage</title>

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

	<jsp:include page="Header.jsp" />

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

            
    <!--  ------------------------------------------------------ -->
    <section class="container py-5">
        <div class="row text-center pt-3">
            <div class="col-lg-6 m-auto">
                <h1 class="h1">My page</h1>
                <button class="btn btn-primary"
							onclick="location.href='getUserCtrl?num=${number }'">회원정보수정버튼</button>
				<button class="btn btn-primary"
							onclick="location.href='getPaymentListCtrl?num=${number }'">결제내역조회</button>
            </div>
        </div>
        <div class="row">
            <div class="col-10 col-md-3 p-3 mt-3">
                <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="userinfoed.jsp"><img src="./assets/img/category_img_01.jpg" class="rounded-circle img-fluid border"></a>
                <!-- <h5 class="text-center mt-3 mb-3">회원정보수정</h5> -->
            </div>
            <div class="col-10 col-md-3 p-3 mt-3">
                <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="basket.jsp"><img src="./assets/img/category_img_01.jpg" class="rounded-circle img-fluid border"></a>
                <!-- <h5 class="text-center mt-3 mb-3">장바구니</h5> -->
            </div>
            <div class="col-10 col-md-3 p-3 mt-3">
                <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="payment.jsp"><img src="./assets/img/category_img_01.jpg" class="rounded-circle img-fluid border"></a>
                <!-- <h5 class="text-center mt-3 mb-3">결제내역</h5> -->
            </div>
            <div class="col-10 col-md-3 p-3 mt-3">
                <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="getBoardListCtrl"><img src="./assets/img/category_img_01.jpg" class="rounded-circle img-fluid border"></a>
                <!-- <h5 class="text-center mt-3 mb-3">Q&A</h5> -->
            </div>
        </div>
    </section>
    <!-- End Categories of The Month -->


   

	<jsp:include page="Footer.jsp" />
</body>
</html>