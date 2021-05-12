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
		<form action="updateUserCtrl" method="post">
	
		<input type="hidden" name="number" class="form-control" value="${User.number }"/>
		
			<table class="table" style="width: 800px">
				<tr>
					<td>아이디 : </td>
					<td align="left">${User.userid }
					</td>
				</tr>
				<tr>
					<td>패스워드 : </td>
					<td align="left">
						<input type="text" name="password" class="form-control" value="${User.password }"/>
					</td>
				</tr>
				<tr>
					<td>이름 : </td>
					<td align="left">
						<input type="text" name="username" class="form-control" value="${User.username }"/>
					</td>
				</tr>
				<tr>
					<td>전화번호 : </td>
					<td align="left">
						<input type="text" name="tel" class="form-control" value="${User.tel }"/>
					</td>
				</tr>
				<tr>
					<td>E-Mail : </td>
					<td align="left">
						<input type="text" name="email" class="form-control" value="${User.email }"/>
					</td>
				</tr>
				<tr>
					<td>주소 : </td>
					<td align="left">
						<input type="text" name="address" class="form-control" value="${User.address }"/>
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value=" 글 수정" class="btn btn-primary"/>
					</td>
				</tr>
			</table>
		</form>
	</div>

</body>
</html>