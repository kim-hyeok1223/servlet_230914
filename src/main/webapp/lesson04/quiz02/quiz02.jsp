<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기 추가</title>
<style>
	.btn{background-color: green;}
</style>
</head>
<body>
	<!-- 입력하기  -->
	<form method="post" action = "/lesson04/quiz02_insert">
		<h1>즐겨찾기 추가</h1>
		<p>사이트명:</p>
		<input type="text" name="name">
		<p>사이트주소 : </p>
		<input type="text" name="url"> <br>
		<input class ="btn" type="submit" value="추가">
	</form>
</body>
</html>