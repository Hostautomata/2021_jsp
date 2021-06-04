<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	//파라미터 값 한글처리
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String gender = request.getParameter("gender");
	String[] hobby = request.getParameterValues("hobby");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<h2><ul>
	<li>이름:<%=name %></li>
	<li>나이:<%=age %></li>
	<li>성별:<%=gender%></li>
	<li>취미:<%for(String k : hobby){
				out.println(k+"&nbsp;&nbsp");
			
			}
	
		%></li>
	
	</ul></h2>
</body>
</html>