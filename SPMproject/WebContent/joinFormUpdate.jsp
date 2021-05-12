<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<title>회원정보수정</title>
</head>
<body>

	<div class="card-body">
		<h3 align="center">회원정보수정</h3>
	</div>

	<div class="card-body">
		<form method="post" action="InsertUserCtrl" novalidate>
			<table class="table">
				<tr>
					<td>아이디:</td>
					<td>
						<input type="text" name="userid" size="50">${userid }
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