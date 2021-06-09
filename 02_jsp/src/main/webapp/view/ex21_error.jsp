<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="ex22_jsp.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--페이지 지시어에 error페이지 속성은 해당페이지에서 에러가 발생하면 
	지시한 페이지로 이동시키는 속성이다.
 --%>
 <h2>에러처리</h2>
 <h3>
<%-- 	age: <%= Integer.parseInt(request.getParameter("age") ) %>--%> 
 	<%
 		try{%>
 			age: <%= Integer.parseInt(request.getParameter("age") ) %>;<%
 		}catch(Exception e){
 			out.println("age파라미터 값이 올바르지 않습니다.");
 		}
 	%>
 	</h3>
</body>
</html>