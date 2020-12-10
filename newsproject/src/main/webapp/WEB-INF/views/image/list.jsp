<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서경대신문</title>

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
	$(".dataRow").click(function(){
		// 글번호 찾기
		var no = $(this).find(".no").text();
		location = "view.do?no="+ no + "&inc=1";
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
</div>

<div class="container">
<h1>이미지 게시판</h1>

<table class="table">
<tr>
	<th>번호</th>
	<th>이미지</th>
	<th>제목</th>
	<th>작성자</th>
	<th>작성일</th>
</tr>
<c:if test="${empty list }">
	<!-- 만약에 데이터가 없으면 데이터 없음을 표시한다 -->
	<tr>
		<td colspan="5">데이터가 존재하지 않습니다.</td>
	</tr> 
</c:if>
<c:if test="${!empty list }">
	<!-- 데이터가 존재하면 데이터의 갯수 만큼 반복되어 지는 부분 -->
	<c:forEach items="${list }" var="vo">
	<tr class="dataRow">
		<td class="no">${vo.no }</td>
		<td>${vo.fileName }</td>
		<td>${vo.title }</td>
		<td>${vo.writer }</td>
		<td>
			<fmt:formatDate value="${vo.writeDate }"
			 pattern="yyyy.MM.dd"/>
		</td>
	</tr>
	</c:forEach>
</c:if>
<tr>
	<td>
		<a href="write.do" class="btn btn-default">글쓰기</a>
	</td>
</tr>
</table>
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