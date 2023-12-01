<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz01</title>
</head>
<body>	
<%!
  //jsp의 선언문 <%! 문법을 사용해서 1부터 N까지의 합을 구하는 함수를 만드세요.
	// input : 끝수(n)   output : 결과값
	public int getSum() {
		int sum = 0;
		for(int i = 1; i <= 50; i++) {
			sum += i;
		}
		return sum;
	}
%>

<%
	// 스크립틀릿(scriptlet) <%  문법을 사용해서 주어진 점수들의 평균을 구하세요.
	int[] scores = {80, 90, 100, 95, 80};
	int total = 0;
	for (int i =0; i < scores.length; i++) {
		total += scores[i];
	}
	double avg = (double)total / scores.length;
%>

<%
List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
int score = 0;
for (int i = 0; i < scoreList.size() ;i++) {
	if (scoreList.get(i).equals("O")) {
		score += 10;
	}
}

%>

<%
	String birthDay = "20010820";
	int birth = Integer.parseInt(birthDay.substring(0,4));
	int age = 2023- birth;
%>

<b>1부터 50까지의 합은 </b> <%= getSum() %> <b>입니다.</b> <br>
<b>평균점수는 </b> <%= avg %> <b>입니다.</b> <br>
<b>채점결과는 </b> <%= score %> <b>입니다.</b> <br>
<b>나이는</b> <%= age %> <b>입니다.</b>
</body>
</html>