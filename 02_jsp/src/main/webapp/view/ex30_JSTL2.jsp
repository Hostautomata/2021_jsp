<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL2 숫자와 날짜 포맷팅</title>
</head>
<body>
	<h3>천 단위 숫자 처리</h3>
	<li><fmt:formatNumber value="1234.567"/></li>
	
<%--오류발생
 	<li><fmt:formatNumber value="aaaa1234.567"/></li>
	<li><fmt:formatNumber value="12aaaaaa34.567"/></li>--%>
	<h3>숫자 처리</h3>
	<li><fmt:parseNumber value="1234.567"/></li>
	<li><fmt:parseNumber value="12aaaaaa34.567"/></li>
	<%-- <li><fmt:parseNumber value="aaaa1234.567"></fmt:parseNumber></li>--%>
	<hr>
	<h3>반올림 처리(정수만 구하기)</h3>
	<li><fmt:formatNumber value="1234.467" pattern="#,###"/></li>
	<li><fmt:formatNumber value="1234.567" pattern="#,###"/></li>
	<hr>
	
	<h3>반올림 처리(소수점 첫째 자리까지)</h3>
	<li><fmt:formatNumber value="1234.467" pattern="#,###.#"/></li>
	<li><fmt:formatNumber value="1234.567" pattern="#,###.#"/></li>
	<li><fmt:formatNumber value="12345" pattern="#,###.#"/></li>
	<li><fmt:formatNumber value="12345" pattern="#,###.0"/></li>
	<hr>
	
	<h3>0과 #의 차이(0은 반드시 채워야 한다.)</h3>
	<li><fmt:formatNumber value="127" pattern="#,###"/></li>
	<li><fmt:formatNumber value="127" pattern="#,###.#"/></li>
	<li><fmt:formatNumber value="127" pattern="0,000"/></li>
	<li><fmt:formatNumber value="127" pattern="0,000.0"/></li>
	<hr>
	
	<h3>현재 시스템에 맞는 화폐단위 사용(정수만 사용)</h3>
	<li><fmt:formatNumber value="12345.447" type="currency"/></li>
	<li><fmt:formatNumber value="1245.557" type="currency"/></li>
	<li><fmt:formatNumber value="12345" type="currency"/></li>
	<hr>
	
	<h3>퍼센트(value * 100 + "%")</h3>
	<li><fmt:formatNumber value="12" type="percent"/></li>
	<li><fmt:formatNumber value="0.12" type="percent"/></li>
	<hr>
	
	<h3>오늘 날짜 구하기</h3>
		<c:set var="now" value="<%=new Date() %>"></c:set>
		<li>오늘 날짜 : ${now}</li>
	<hr>
	<h3>오늘 날짜 구하기</h3>
		<%--jsp 액션태그에서 객체 생성(Date now2 = new Date();) --%>
		<jsp:useBean id="now2" class ="java.util.Date"/>
		<li>오늘 날짜 : ${now}</li>
		<li><fmt:formatDate value="${now2}"/></li>
		<li><fmt:formatDate value="${now2}" dateStyle="short"/></li>
		<li><fmt:formatDate value="${now2}" dateStyle="medium"/></li>
		<li><fmt:formatDate value="${now2}" dateStyle="long"/></li>
		<li><fmt:formatDate value="${now2}" dateStyle="full"/></li>
	<hr>
	
		<li><fmt:formatDate value="${now2}" type="time" timeStyle="short"/></li>
		<li><fmt:formatDate value="${now2}" type="time" timeStyle="medium"/></li>
		<li><fmt:formatDate value="${now2}" type="time" timeStyle="long"/></li>
		<li><fmt:formatDate value="${now2}" type="time" timeStyle="full"/></li>
	<hr>
	
	<hr>
	
		<li><fmt:formatDate value="${now2}" type="both" dateStyle="short" timeStyle="short"/></li>
		<li><fmt:formatDate value="${now2}" type="both" dateStyle="medium" timeStyle="medium"/></li>
		<li><fmt:formatDate value="${now2}" type="both" dateStyle="long" timeStyle="long"/></li>
		<li><fmt:formatDate value="${now2}" type="both" dateStyle="full" timeStyle="full"/></li>
	<hr>
	
	
</body>
</html>