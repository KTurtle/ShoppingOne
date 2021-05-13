<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- header -->
<jsp:include page="Header.jsp" />
<!-- header끝 -->

<!-- 상품별 상세페이지 폼 -->
<div class="col-lg-3">
    <h1 class="h2 pb-4">Bottom</h1>
    <ul class="list-unstyled templatemo-accordion">
        <li class="pb-3">
            <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="#" onclick="location.href='shopSkirt.jsp'">
                Skirt
            </a>
        </li>
        <li class="pb-3">
            <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="#">
                Pants
            </a>
        </li>
    </ul>
</div>
<table border="1">
    <tr>
        <td>
            <img src="${path}/images/${vo.productUrl}" width="340" height="300">
        </td>
        <td>
            <table border="1" style="height: 300px; width: 400px;">
                <tr align="center">
                    <td>상품명</td>
                    <td>${vo.productName}</td>
                </tr>
                <tr align="center">
                    <td>가격</td>
                    <td><fmt:formatNumber value="${vo.productPrice}" pattern="###,###,###"/></td>
                </tr>
                <tr align="center">
                    <td>상품소개</td>
                    <td>${vo.productDesc}</td>
                </tr>
                <tr align="center">
                    <td colspan="2">
                        <form name="form1" method="post" action="${path}/shop/cart/insert.do">
                            <input type="hidden" name="productId" value="${vo.productId}">
                            <select name="amount">
                                <c:forEach begin="1" end="10" var="i">
                                    <option value="${i}">${i}</option>
                                </c:forEach>
                            </select>&nbsp;개
                            <input type="submit" value="장바구니에 담기">
                        </form>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>



<!--footer -->
<jsp:include page="Footer.jsp" />
<!--footer끝 -->
</body>
</html>