<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL & JSTL</title>
</head>
<body>
	<h2>EL과 JSTL을 이용해서 파라미터 받기</h2>
	<h3>
		
			<li>이름: ${param.name}</li>
			<li>나이: ${param.age}</li>
			<li>성별: ${param.gender}</li>
		<c:forEach items ="${paramValues.hobby}" var="k">
			<li>${k}&nbsp;&nbsp;</li>
		</c:forEach>
	</h3>
</body>
</html>