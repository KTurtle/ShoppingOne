<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<!-- Start Top Nav -->
<nav
	class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block"
	id="templatemo_nav_top">
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
				&nbsp;&nbsp;&nbsp; <a class="text-light" href="./joinForm.jsp"
					rel="sponsored">회원가입</a> &nbsp;&nbsp;&nbsp; <a class="text-light"
					href="./q&a.jsp" rel="sponsored">Q&A</a> &nbsp;&nbsp;&nbsp;

			</div>
		</div>
	</div>
</nav>
<!-- Close Top Nav -->


<!-- Header -->
<nav class="navbar navbar-expand-lg navbar-light shadow">
	<div
		class="container d-flex justify-content-between align-items-center">

		<a class="navbar-brand text-success logo h1 align-self-center"
			href="mainList.jsp"> 쇼핑몰이름 </a>

		<button class="navbar-toggler border-0" type="button"
			data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div
			class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between"
			id="templatemo_main_nav">
			<div class="flex-fill">
				<ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
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
				<div class="d-lg-none flex-sm-fill mt-3 mb-4 col-7 col-sm-auto pr-3">
					<div class="input-group">
						<input type="text" class="form-control" id="inputMobileSearch"
							placeholder="Search ...">
						<div class="input-group-text">
							<i class="fa fa-fw fa-search"></i>
						</div>
					</div>
				</div>
				<a class="nav-icon d-none d-lg-inline" href="#"
					data-bs-toggle="modal" data-bs-target="#templatemo_search"> <i
					class="fa fa-fw fa-search text-dark mr-2"></i>
				</a> <a class="nav-icon position-relative text-decoration-none" href="#">
					<i class="fa fa-fw fa-cart-arrow-down text-dark mr-1"></i> <span
					class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">7</span>
				</a> <a class="nav-icon position-relative text-decoration-none" href="#">
					<i class="fa fa-fw fa-user text-dark mr-3"></i> <span
					class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">+99</span>
				</a>
			</div>
		</div>

	</div>
</nav>
<!-- Close Header -->
</html>