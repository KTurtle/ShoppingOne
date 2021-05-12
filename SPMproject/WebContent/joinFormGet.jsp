<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보조회</title>
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
	<div id="header" class="card-body">
      <h1>${User.username }님 회원 정보</h1>
   </div>

   <div id="content" class="card-body">
      <table class="table">
         <tbody>
            <tr>
               <td>아이디</td>
               <td>${User.userid }</td>
            </tr>
            <tr>
               <td>비밀번호</td>
               <td>${User.password }</td>
            </tr>
            <tr>
               <td>전화번호</td>
               <td>${User.tel }</td>
            </tr>
            <tr>
               <td>email</td>
               <td>${User.email }</td>
            </tr>
            <tr>
               <td>address</td>
               <td>${User.address }</td>
            </tr>
      
            <tr>
               <td colspan="2"><button class="btn btn-primary" 
                 onclick="location.href='updateUserBeforeCtrl?num=${User.number }'">수정</button>
               </td>
            </tr>
         </tbody>
      </table>
   </div>

</body>
</html>