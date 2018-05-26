<%@page import="java.io.FileWriter"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.BufferedReader"%>
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
	
		String filePath = application.getRealPath("/WEB-INF/survey/list.txt");
		String filePath2 = application.getRealPath("/WEB-INF/survey/list2.txt");
		
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String q1 = request.getParameter("q1");
		String q2 = request.getParameter("q2");
		String q3 = request.getParameter("q3");
		String q4 = request.getParameter("q4");
		String q5 = request.getParameter("q5");
		
		BufferedReader br = null;
		BufferedWriter bw = null;
		PrintWriter writer = null;
		BufferedWriter bw2 = null;
		PrintWriter writer2 = null;
		
		String str = null;
		
		try {
			br = new BufferedReader(new FileReader(filePath));
			bw = new BufferedWriter(new FileWriter(filePath2));
			writer = new PrintWriter(bw);
			
			while(true){
				str = br.readLine();
				
				if(str == null) break;
				
				String[] info = str.split("\t");
				
				if(!(name.equals(info[0]) && password.equals(info[1]))){
					writer.println(str);
				}
				
			}
				
			writer.flush();
			writer.close();
				
			br = new BufferedReader(new FileReader(filePath2));
			bw2 = new BufferedWriter(new FileWriter(filePath));
			writer2 = new PrintWriter(bw2);
			
			while(true){
				str = br.readLine();
				if(str == null) break;
				writer2.println(str);
			}
				
			writer2.printf("%s\t%s\t%s\t%s\t%s\t%s\t%s", name, password, q1, q2, q3, q4, q5);
			writer2.println();
			
			writer2.flush();
			writer2.close();
		} catch(Exception e){
			e.printStackTrace();
		}
	
		out.println("<script>alert('업데이트가 완료하였습니다.');location.href='personalSurvey.jsp';</script>");
	%>

</body>
</html>