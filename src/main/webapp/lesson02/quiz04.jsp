<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이변환</title>
<!-- 부트스트랩 cdn 주소 공식홈페이지에서 CSS한줄, bundle 두 줄 복사해오기--> 
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<body>
	<form method = "post" action = "/lesson02/quiz04_1.jsp">
		<div class="container mt-2">
			<h1> 길이 변환 </h1>
			<div class = "d-flex">
			<input type="text" name = "length">
			<div>cm</div>
			</div>
			<label for="inch">인치</label>
			<input type="checkbox" id="inch" name="size" value="인치">
			<label for="yard">야드</label>
			<input type="checkbox" id="yard" name="size" value="야드">
			<label for="feet">피트</label>
			<input type="checkbox" id="feet" name="size" value="피트">
			<label for="meter">미터</label>
			<input type="checkbox" id="meter" name="size" value="미터"> <br>
			
			<button type="submit" class = "btn btn-success">변환하기</button>
		</div>
	</form>
</body>
</html>