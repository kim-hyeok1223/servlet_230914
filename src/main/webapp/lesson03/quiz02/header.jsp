<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header class="d-flex align-items-center">
	<div class="col-2">
		<h3>
			<a href="#" class="text-success">Melong</a>
		</h3>
	</div>
	<form action="/lesson03/quiz03/content.layout.jsp" method="get">
		<div class="col-10">
			<div class="input-group">
				<input type="text" class="form-control col-6" name="search">
				<div class="input-group-append">
					<input type="submit" class="btn btn-info" value="검색">
				</div>
			</div>
		</div>
	</form>
</header>