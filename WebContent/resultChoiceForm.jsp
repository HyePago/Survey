<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.BufferedWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="Nwagon.css" type="text/css">
<script src="Nwagon.js"></script>
</head>
<body>
	<div class="choice_div">
		<table class="choice_table">
			<tr>
				<td><div onclick="location.href='personalSurvey.jsp'" class="choice_btn_div"><h3>내가 한 설문 보기</h3></div></td>
				<td><div onclick="location.href='resultView.jsp'" class="choice_btn_div"><h3>전체 결과 보기</h3></div></td>
			</tr>
		</table>
	</div>
</body>
</html>