<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
<title>서경대신문</title>
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

    
  #main2 {
    width: 200px;
    height: 100px;
    }
  #main1 {
    width: 100px;
    height: 70px;
  }
  #main {
    width: 500px;
    height: 100px;
  }
  
  #footer {
      background-color: #555;
      color: white;
      padding: 1px;
    }  
</style>
<style>
div.gallery {
  border: 1px solid #ccc;
}

div.gallery:hover {
  border: 1px solid #777;
}

div.gallery img {
  width: 100%;
  height: 50%;
}

div.desc {
  padding: 15px;
  text-align: center;
}

* {
  box-sizing: border-box;
}

.responsive {
  padding: 0 6px;
  float: left;
  width: 24.99999%;
  height: 40.99999%;
}

@media only screen and (max-width: 700px) {
  .responsive {
    width: 49.99999%;
    margin: 6px 0;
  }
}

@media only screen and (max-width: 500px) {
  .responsive {
    width: 100%;
  }
}

.clearfix:after {
  content: "";
  display: table;
  clear: both;



}

</style>

</head>





<body> 
 
<div class=" text-center">

  <img id="main1" src="resources/logo1.gif" class="" alt=" 사진 ">
  <img width="120" >
  <img id="main" src="resources/logo.gif" class="" alt=" 사진 ">
  <img width="120" > 
  <img id="main2" src="resources/logo2.gif" class="" alt=" 사진 ">
  <h1> </h1>
  <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="https://www.facebook.com/skpress01">서경대 신문사</a>
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

<h1> </h1> 
<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="paper/list.do">
      <img alt="보도" width="600" height="400">
    </a>
    <div class="desc">Add a description of the image here</div>
  </div>
</div>


<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="papera/list.do">
      <img src="papera/list.do" alt="여론" width="600" height="400">
    </a>
    <div class="desc">Add a description of the image here</div>
  </div>
</div>

<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="paperb/list.do">
      <img src="paperb/list.do" alt="기획" width="600" height="400">
    </a>
    <div class="desc">Add a description of the image here</div>
  </div>
</div>


<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="">
      <img src="" alt="르포" width="600" height="400">
    </a>
    <div class="desc">Add a description of the image here</div>
  </div>
</div>



<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="">
      <img src="" alt="오피니언" width="600" height="400">
    </a>
    <div class="desc">Add a description of the image here</div>
  </div>
</div>

<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="">
      <img src="" alt="문화" width="600" height="400">
    </a>
    <div class="desc">Add a description of the image here</div>
  </div>
</div>


<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="board/list.do">
      <img src="board/list.do" alt="게시판" width="600" height="400">
    </a>
    <div class="desc">Add a description of the image here</div>
  </div>
</div>

<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="">
      <img src="" alt="신문 지면보기" width="600" height="400">
    </a>
    <div class="desc">Add a description of the image here</div>
  </div>
</div>
<div class="clearfix"></div>	
</div>  

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
