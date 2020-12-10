<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 글수정</title>

  <!-- Bootstrap / jQuery 라이브러리 등록 : CDN -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style type="text/css">
 div.text-center { 
       margin-top: 30px;
       margin-left: 60px;
       margin-right: 60px;
      }  
  div.container {
       margin-top: 30px;     
  }
  body {  background-color: white; }

  
.dataRow:hover {
	background: #ccc;
	cursor: pointer;
 
}
/* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 450px}
/* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color: #f1f1f1;
      height: 100%;
    }

 #footer {
      background-color: #555;
      color: white;
      padding: 1px;
    } 
</style>

<script type="text/javascript">
$(function(){
	$(".cancelBtn").click(function(){
		history.back();
	});
});
</script>

</head>
<body>

<div class=" text-center">
  
  <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="/">서경대 신문사</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar"> 
      <ul class="nav navbar-nav">
        <li class="active"><a href="/paper/list.do">보도</a></li>
        <li><a href="/papera/list.do">여론</a></li>
        <li><a href="/paperb/list.do">기획</a></li>
        <li><a href="#">르포</a></li>
        <li><a href="#">오피니언</a></li>
        <li><a href="#">문화</a></li>
        <li><a href="/board/list.do">게시판</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>


<div class="container">
<h1>게시판 글수정</h1>
  <form method="post">
    <div class="form-group">
      <label for="title">번호:</label>
      <input type="text" class="form-control" id="no"
       name="no" readonly="readonly" value="${vo.no }">
    </div>
    <div class="form-group">
      <label for="title">제목:</label>
      <input type="text" class="form-control" id="title"
       name="title" required="required" pattern=".{4,100}"
       maxlength="100" value="${vo.title }">
    </div>
    <div class="form-group">
	  <label for="content">내용:</label>
	  <textarea class="form-control" rows="5" id="content"
	   name="content">${vo.content }</textarea>
	</div>
    <div class="form-group">
      <label for="writer">작성자:</label>
      <input type="text" class="form-control" id="writer"
       name="writer" required="required" pattern="[가-힣a-zA-Z]{2,10}"
       maxlength="10" value="${vo.writer }">
    </div>
    <div class="form-group">
      <label for="pw">비밀번호(확인용):</label>
      <input type="password" class="form-control" id="pw"
       name="pw" required="required" pattern=".{3,50}"
       maxlength="50">
    </div>
    <button>수정</button>
    <button type="reset">새로입력</button>
    <button type="button" class="cancelBtn">취소</button>
  </form>
</div>
</div>
<h1> </h1>

<footer id="footer">
        <div class="container">
            <div class="row">
                <div class="footer">
                    <ul>
                        <li><a href="#">사이트 도움말</a></li>
                        <li><a href="#">사이트 이용약관</a></li>
                        <li><a href="#">사이트 운영원칙</a></li>
                        <li><a href="#">게시중단요청서비스</a></li>
                        <li><a href="#">고객센터</a></li>
                    </ul>
                    <P>The time on the server is ${serverTime}.</P>
                    <address>
                        Copyright © 서경대신문. All rights reserved. mail to skpress01@naver.com
                    </address>
                </div>
            </div>
        </div>
    </footer>

</body>
</html>