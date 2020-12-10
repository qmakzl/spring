<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>서경대신문 - 로그인</title>

  <link href="/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <link href="/resources/css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">

  <div class="container">
  <div class="row justify-content-center">
      <div class="col-xl-10 col-lg-12 col-md-9">
        <div class="card o-hidden border-0 shadow-lg my-5">
          <div class="card-body p-0">
            <div class="row">
              <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
              <div class="col-lg-6">
                <div class="p-5">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">로그인!</h1>
                  </div>
                  
                  <form class="user" action="/login" method='post'>
                  	<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
                   	<div>
				            <c:out value="${error}"/>
				            <c:out value="${logout}"/>                  
	                  </div>
	                  <hr>
	                  <div class="form-group">
	                    <input name='username' type="text" class="form-control form-control-user" id="exampleInputEmail" placeholder="Userid" autofocus>
	                  </div>
	                  <div class="form-group">
	                    <input name='password' value='' type="password" class="form-control form-control-user" id="exampleInputPassword" placeholder="Password">
	                  </div>
	                  <div class="form-group">
	                    <div class="custom-control custom-checkbox small">
	                      <input type="checkbox" name='remember-me' class="custom-control-input" id="customCheck">
	                      <label class="custom-control-label" for="customCheck">로그인 기억하기</label>
	                    </div>
	                  </div>
	                  <input type='submit' class="btn btn-primary btn-user btn-block" value="로그인">
	                  <a href="/" class="btn btn-primary btn-user btn-block">메인화면</a>
                  </form>
                  <hr>    
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <script src="/resources/vendor/jquery/jquery.min.js"></script>
  <script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <script src="/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

  <script src="/resources/js/sb-admin-2.min.js"></script>


<c:if test="${param.logout != null }">
	<script>
		$(document).ready(function(){
			if (history.state) {
				return;
			}
			alert("로그아웃 되었습니다.");
			
			history.replaceState({},null,null);
		});
	</script>
</c:if>

</body>
</html>