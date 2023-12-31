<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 부트스트랩 cdn 주소 공식홈페이지에서 CSS한줄, bundle 두 줄 복사해오기--> 
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<body>
	<%
		int length = Integer.parseInt(request.getParameter("length"));
		String[] sizeArr = request.getParameterValues("size");
		
		double inch = length * 0.393701;
		double feet = length * 0.0328084;
		double meter = length / 0.01;
		double yard = length * 0.0109361;
		
		String result = "";
		for(String size : sizeArr) {
			result += size;
		}
		
		out.print(result);
	
	%>
	<div class = "display-3">길이 변환 결과</div>
	<h3><%= length %>cm</h3>
	<hr>
	<%
		for(String size : sizeArr) {
			if (size.equals("inch<br>")) {
				out.print(inch + "inch");
			}else if (size.equals("yard")){
				out.print(yard + "yard<br>");
			}else if (size.equals("feet")){
				out.print(feet + "feet<br>");
			}else if (size.equals("meter")){
				out.print(meter + "meter<br>");
			}
		}
	
	%>
	
</body>
</html>