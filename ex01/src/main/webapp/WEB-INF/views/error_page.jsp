<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- core의 약자 c -->
<%@ page session="false" import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>예외 처리 페이지</h1>
<h4><c:out value="${exception.message }"></c:out></h4>
<h4>${exception.message }</h4>
<h4>${exception.getMessage }</h4>
</body>
</html>