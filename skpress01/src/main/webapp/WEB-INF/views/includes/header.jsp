<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>서경대신문</title>

  <link href="/resources/vendor/fontawesome-free/resources/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
  <link href="/resources/css/sb-admin-2.min.css" rel="stylesheet">
  <link href="/resources/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

</head>

<body id="page-top">

  <div id="wrapper">
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/">
        <div class="sidebar-brand-icon rotate-n-15">
          <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3">서경대신문</div>
      </a>

      <hr class="sidebar-divider my-0">
      <hr class="sidebar-divider">

      <li class="nav-item">
        <a class="nav-link" href="/board/list?type=T&keyword=%EB%B3%B4%EB%8F%84&pageNum=1&amount=10">
          <i class="fas fa-fw fa-chart-area"></i>
          <span>보도</span></a>
      </li>

      <li class="nav-item">
        <a class="nav-link" href="/board/list?type=T&keyword=여론&pageNum=1&amount=10">
          <i class="fas fa-fw fa-chart-area"></i>
          <span>여론</span></a>
      </li>

      <li class="nav-item">
        <a class="nav-link" href="/board/list?type=T&keyword=%EB%8C%80%ED%95%99&pageNum=1&amount=10">
          <i class="fas fa-fw fa-chart-area"></i>
          <span>대학</span></a>
      </li>

      <li class="nav-item">
        <a class="nav-link" href="/board/list?type=T&keyword=르포&pageNum=1&amount=10">
          <i class="fas fa-fw fa-chart-area"></i>
          <span>르포</span></a>
      </li>

      <li class="nav-item">
        <a class="nav-link" href="/board/list?type=T&keyword=오피니언&pageNum=1&amount=10">
          <i class="fas fa-fw fa-chart-area"></i>
          <span>오피니언</span></a>
      </li>

      <li class="nav-item">
        <a class="nav-link" href="/board/list?type=T&keyword=문화&pageNum=1&amount=10">
          <i class="fas fa-fw fa-chart-area"></i>
          <span>문화</span></a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link" href="/board/list">
          <i class="fas fa-fw fa-chart-area"></i>
          <span>전체기사보기</span></a>
      </li>

      <hr class="sidebar-divider d-none d-md-block">

      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>
    </ul>

    <div id="content-wrapper" class="d-flex flex-column">
      <div id="content">
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

          <form class="form-inline">
            <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
              <i class="fa fa-bars"></i>
            </button>
          </form>

  
          <ul class="navbar-nav ml-auto">
            <li class="nav-item dropdown no-arrow d-sm-none">
              <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-search fa-fw"></i>
              </a>
            </li>           
            
            <div class="topbar-divider d-none d-sm-block"></div>

            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small">이윤기</span>
                <img class="img-profile rounded-circle" src="https://source.unsplash.com/QAB-WJcbgJk/60x60">
              </a>
              
					<div class="dropdown-menu dropdown-user dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
						
						<div class="dropdown-divider"></div>
											
						<sec:authorize access="isAuthenticated()">
						 <a class="dropdown-item" href="/customLogout">
						   <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
						   로그아웃
						 </a>                
						</sec:authorize>
						
						<sec:authorize access="isAnonymous()">
						 <a class="dropdown-item" href="/customLogin">
						   <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
						   로그인
						 </a>                 	
						</sec:authorize>
					    <div class="dropdown-divider"></div>
					</div>
            </li>
          </ul>
        </nav>