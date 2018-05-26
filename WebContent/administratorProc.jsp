<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	
		String pw = request.getParameter("pw");
		
		if(pw.equals("180107")){
			out.println("<script>");
			out.println("location.href='manager.jsp'");
			out.println("</script>");
		}
		else {
			out.println("<script>");
			out.println("alert('잘 못 입력하셨습니다.');");
			out.println("history.back();");
			out.println("</script>");
		}
	%>
</body>
</html>