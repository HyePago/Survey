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
	<form action="personalSurveyProcForm.jsp" method="post">
		<div class="choice_div">
			<table class="choice_table">
				<tr>
					<td><label for="name">입력하였던 자신의 이름 <br>혹은 상징하는 단어를 입력해주세요.</label></td>
					<td><input type="text" name="name" required></td>
				</tr>
				<tr>
					<td><label for="password">비밀번호를 입력해주세요</label></td>
					<td><input type="password" name="password" required></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="검색">
					</td>
				</tr>
			</table>
		</div>
	</form>
</body>
</html>