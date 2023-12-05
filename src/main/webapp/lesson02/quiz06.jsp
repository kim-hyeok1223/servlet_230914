<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장보기 목록</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<body>
	<%
		List<String> goodsList = Arrays.asList(new String[]{ 
		 	   "저지방 우유", "요플레 4개", "딸기 1팩", "삼겹살 300g", "생수 6개", "주방 세제"
		});
	
			
	%>
	<div class="container text-center">
	<h1>장보기 목록</h1>
	<table class = "table text-center table-bordered">
		<tr>
			<th><b>번호</b></th>
			<th><b>품목</b></th>
		</tr>
		
		<%
				for(int i = 1; i < goodsList.size();i++){
					
	
		%>
		<tr>
			<th>
			<%
					out.print(i);
				
			%>	
			
			</th>
			<td>
				<%
					out.print(goodsList.get(i));
				}
				%>			
			</td>
			
		</tr>
		
	</table>
	</div>
</body>
</html>