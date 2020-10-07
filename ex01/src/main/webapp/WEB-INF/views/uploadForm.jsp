<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>uploadForm</h1>
<!-- file upload를 하려면
	1. 반드시 post방식이어야만 한다.
	2. enctype = "multipart/form-data" 선언되어 있어야 한다.
	3. input tag에서는 type = "file"
	4. name = "controller의 변수 이름으로 사용한다" -->
<form action="upload" method="post" enctype="multipart/form-data">
<div>
	<label >첨부파일 : </label>
	<input type="file" name="files">
</div>

<div>
	<label >첨부파일 : </label>
	<input type="file" name="files">
</div>

<div>
	<label >첨부파일 : </label>
	<input type="file" name="files">
</div>

<div>
	<label >첨부파일 : </label>
	<input type="file" name="files">
</div>

<div>
	<label >첨부파일 : </label>
	<input type="file" name="files">
</div>

<button>파일올리기</button>
</form>
</body>
</html>