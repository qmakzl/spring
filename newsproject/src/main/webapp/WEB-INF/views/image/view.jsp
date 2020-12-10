<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이미지 게시판 글보기</title>

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
	$("#deleteBtn").click(function(){
		var pw = prompt("비밀번호 입력 :");
// 		alert(pw);
		if(pw.length >= 4){
			$("#deletePw").val(pw);
// 			alert($("#deletePw").val());
			$("#deleteForm").submit();
			return;
		}
		alert("비밀번호는 4자 이상 50자 이내로 입력하셔야 합니다.");
		// 화면 이동을 막는다.
		return false;
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
<h1>이미지 게시판 글보기</h1>
<table class="table">
<tr>
	<th>번호</th>
	<td>${vo.no }</td>
</tr>
<tr>
	<th>제목</th>
	<td>${vo.title }</td>
</tr>
<tr>
	<th>이미지</th>
	<td>${vo.fileName }</td>
</tr>
<tr>
	<th>내용</th>
	<td><pre style="border: none;">${vo.content }</pre></td>
</tr>
<tr>
	<th>작성자</th>
	<td>${vo.writer }</td>
</tr>
<tr>
	<th>작성일</th>
	<td>
		<fmt:formatDate value="${vo.writeDate }"
		 pattern="yyyy.MM.dd"/>
	</td>
</tr>

<tr>
	<td colspan="2">
		<a href="update.do?no=${vo.no }" class="btn btn-defualt">수정</a>
		<a href="#" class="btn btn-defualt" id="deleteBtn">삭제</a>
		<a href="list.do" class="btn btn-defualt">리스트</a>
	</td>
</tr>
</table>
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

<!-- 삭제를 위한 form tag : 보이지 않는다.-->
<form action="delete.do" method="post" id="deleteForm">
	<input type="hidden" name="no" value="${vo.no }" />
	<input type="hidden" name="fileName" id="fileName"/>
</form>

</body>
</html>