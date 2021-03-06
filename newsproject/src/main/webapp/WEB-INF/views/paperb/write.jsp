<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 글쓰기</title>

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
       margin-left: 350px;      
  }
  body {  background-color: white; }

  h1 {  color: white;
        text-align: center;
     }

  p { 
      font-family: verdana;
      font-size: 20px;
    }
  

.dataRow:hover {
	background: #ccc;
	cursor: pointer;
 
}
 #footer {
      background-color: #555;
      color: white;
      padding: 1px;
    } 
</style>


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
</div>

<div class="container">

  <form method="post">
    <div class="form-group"> 
      <label for="title">제목:</label>
      <input type="text" class="form-control" id="title"
       name="title" required="required" pattern=".{4,100}"
       maxlength="100">
    </div>
    <div class="form-group">
	  <label for="content">내용:</label>
	  <textarea class="form-control" rows="5" id="content"
	   name="content"></textarea>
	</div>
    <div class="form-group">
      <label for="writer">작성자:</label>
      <input type="text" class="form-control" id="writer"
       name="writer" required="required" pattern="[가-힣a-zA-Z]{2,10}"
       maxlength="10">
    </div>
    <div class="form-group">
      <label for="pw">비밀번호:</label>
      <input type="text" class="form-control" id="pw"
       name="pw" required="required" pattern=".{3,50}"
       maxlength="50">
    </div>
    <button>등록</button>
  </form>
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