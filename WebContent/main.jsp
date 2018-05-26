<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>설문조사</title>
<link href="css/mystyle.css" rel="stylesheet">
</head>
<body bgcolor="#FF7E7E">
<%
	request.setCharacterEncoding("UTF-8");
	String contentPage = request.getParameter("CONTENTPAGE");
%>	
	<header class="main_header">
		<nav class="main_nav">
			<ul>
				<li><a href="vote_servey.jsp">투표하기</a></li>
				<li><a href="personalSurvey.jsp">내가 한 설문 보기</a></li>
				<li><a href="resultView.jsp">전체 결과 보기</a></li>
				<li><a href="administrator.jsp">관리자 페이지 가기</a></li>
			</ul>
		</nav>
	</header>
	
	<section class="main_section">
		<jsp:include page="<%= contentPage %>" flush="false" />
	</section>
	
</body>
</html>