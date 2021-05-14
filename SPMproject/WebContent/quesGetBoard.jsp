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
<link rel="stylesheet" type="text/css"
   href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<jsp:include page="HeaderSimple.jsp" />
   <div id="header" class="card-body">
      <h1>Q&A 게시글</h1>
   </div>

   <div id="content" class="card-body">
      <table class="table">
         <tbody class="">
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
      
            <tr> <!-- <a class="btn btn-success" href="quesAddBoard.jsp" role="button">새 게시물 작성</a> -->
               <td colspan="2">
                  <button class="btn btn-dark"
                    	 	onclick="location.href='getBoardListCtrl'">목록</button>
                  <button class="btn btn-secondary" 
                  			onclick="location.href='updateBoardBeforeCtrl?num=${board.seq }'">수정</button>
                  <button class="btn btn-success" 
                  			onclick="location.href='deleteBoardCtrl?num=${board.seq }'">삭제</button>
               </td>
            </tr>
         </tbody>
      </table>
   </div>

   <div id="footer" class="card-body"></div>
</body>
<jsp:include page="Footer.jsp" />
</html>
