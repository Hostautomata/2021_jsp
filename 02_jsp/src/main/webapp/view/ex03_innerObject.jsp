<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inner Object</title>
</head>
<body>
<%--
	JSP 내장 객체 : JSP에서 사용할 수 있도로 ㄱ자체 지원하는 객체를 말한다.
	request, response, out, pageContext, session, application, config, exception
 	
 	out은 화면(브라우저)에 출력할때 사용하는 객체
 	out에서는 태그사용이 가능하다.
 --%>
 <h2>Hello JSP</h2>
<hr>
<%out.println("<h2>Hello JSP</h2>"); %>
<hr>
<%String str = "Hello JSP"; %>
<h2><% out.println(str);%></h2>
<hr>
<h2><%=str %></h2>
</body>
</html>