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
	
	<section class="main_section">
		<jsp:include page="<%= contentPage %>" flush="false" />
	</section>
	
</body>
</html>