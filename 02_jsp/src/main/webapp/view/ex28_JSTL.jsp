<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL : JSP표준 태그 라이브러리</title>
</head>
<body>
<%--
	1.라이브러리 다운받아서 해당 프로젝트에 넣기(tomcat.apache.org)
	2.다운받은 라이브러리 WEB-INF안에 lib폴더를 만들어서 넣어주자.
	3. 지시어 중 <%@taglib%>에 선언하고 사용한다.
		core: <%taglib prfix="c" uri="http://java.sun.com/jsp/jstl/core"%>
		fmt : core: <%taglib prfix="c" uri="http://java.sun.com/jsp/jstl/fmt"%>
		**core라이브러리는 핵심, fmt라이브러리는 국제화(숫자와 날짜처리할 때 사용)
	4. 사용법 : core 사용<c:명령어></c:명령어>, fmt : <fmt:명령어>
 --%>
 <%--
 		변수생성(set)	:	<c:set var="변수이름" value="변수에 저장되는 데이터">
 		변수출력(out)	:	<c:out value="출력할 데이터 or ${변수이름}"/>또는 ${변수이름}
 		변수삭제(remove):	<c:remove var="변수이름"/>
  --%>
  <%--변수 생성 및 데이터 저장 --%>
  	<c:set var="str" value="Hello JSP"/>
  	
  <%--변수 데이터 출력 (EL사용)--%>
  <h2>
  	<li><c:out value="str"/></li>
  	<li><c:out value="${str}"/></li>
  	<li>${str}</li>
  	<hr>
  	
  	<%--변수 삭제 후 출력해 보기 (EL사용 X)--%>
  	<c:remove var="str"/>
  	<li>결과 : <c:out value="str"/></li>
  	<li><c:out value="${str}"/></li>
  	<li>결과 : ${str}</li>
  	<hr>
  	<%--if : else문이 없다. 즉 조건이 참일 때 만 실행한다.
  		<c:if var="변수명" test="조건식(관계연산, 비교연산=> EL방식으로 사용)">
  			조건식 참일 때 실행할 문장;
  		</c:if>
  	 --%>
  	 <c:if test="${4>3}">
  	 	<li>결과 : Hello JSTL_1</li>
  	 </c:if>
  	 
  	 <c:if test="${4<3}">
  	 	<li>결과 : Hello JSTL_2</li>
  	 </c:if>
  	 <%-- avg의 점수가 80이상이면 합격, 아니면 불합격 --%>
  	 <c:set var="avg" value="90"/>
  	 <c:if test="${avg>=80}">
  	 	<li>합격</li>
  	 </c:if>
  	 <c:if test="${avg<80}">
  	 	<li>불합격</li>
  	 </c:if>
  	 <%--if문은 else가 없는 불편함때문에 choose문을 사용함.
  	 	<c:choose>
  	 		<c:when test="조건식(관계연산, 비교연산=>EL방식으로 사용")>참일때 실행</c:when>
  	 		<c:when test="조건식(관계연산, 비교연산=>EL방식으로 사용")>참일때 실행</c:when>
  	 		<c:when test="조건식(관계연산, 비교연산=>EL방식으로 사용")>참일때 실행</c:when>
  	 		<c:otherwise>위 조건식이 모두 거짓일때, 즉 나머지</c:otherwise>
  	 	</c:choose>
  	 	
  	 
  	  --%>
  <c:choose>
  	<c:when test="${avg>=80}">
  		<li>합격</li>
  	</c:when>
  	<c:when test="${avg<80}">
  		<li>불합격</li>
  	</c:when>
  </c:choose>	  
  <%--avg의 점수가 90이상이면 A, 80이상이면 B, 70이상이면 C 나머지는 F --%>
  <%--정수는 정수로, 실수는 실수로 비교해야 한다.--%>
  	<c:set var="avg" value="85.5"/>
  	<c:choose>
  		<c:when test="${avg>=90.0}"><li>A학점</li></c:when>
  		<c:when test="${avg>=80.0}"><li>B학점</li></c:when>
  		<c:when test="${avg>=70.0}"><li>C학점</li></c:when>
  		<c:otherwise><li>F학점</li></c:otherwise>
  	</c:choose>
  	<hr>
  	<%--
  		반복문
  		1. 일반적인 for문
  		<c:forEach begin="시작값" end="끝값" step="증가값" var="사용변수">
  			반복내용(EL을 활용)
  		</c:forEach>
  		2. 개선된 for문
  		<c:forEach var="사용변수" items="${배열, 리스트(컬랙션)}">
  			반복내용(EL을 활용)
  		</c:forEach>
  		
  	 --%>
  	 <%--1~10까지 출력하기 --%>
  	 <h3>1~10까지 출력하기</h3>
  	 <c:forEach begin="1" end="10" step="1" var="k">
  	 	${k}&nbsp;&nbsp;
  	 </c:forEach>
  	 <hr>
  	 <h3>1~10까지 짝수만 출력하기</h3>
  	 
  	 <c:forEach begin="2" end="10" step="2" var="k">
  	 	${k}&nbsp;&nbsp;
  	 </c:forEach>
  	 
  	 <c:forEach begin="2" end="10" step="2" var="k">
  	 	<c:if test="${k%2==0}">
  	 		${k}&nbsp;&nbsp;
  	 	</c:if>
  	 </c:forEach>
  	 <hr>
  	  <h3>21~30까지 출력하기</h3>
  	  <%--varStatus; count, index, first, last --%>
  	 <c:forEach begin="21" end="30" step="1" var="k" varStatus="vs">
  	 	${k} / ${vs.count} / ${vs.index } / ${vs.first} / ${vs.last}<br>
  	 </c:forEach>
  	 <hr>
  	 <%--개선된 for문 --%>
  	 <%--배열생성--%>
  	 <c:set var="arr_1" value="홍길동, 임꺽정, 장길산, 일지매"/>
  	 <c:forEach var="k" items="${arr_1}">
  	 	${k}
  	 </c:forEach>
  	 <hr>
  	 <%-- 반복하며 나누기 --%>
<%--    	 <c:forTokens items="배열이나 컬렉션" delims="구분자" var="변수"></c:forTokens>--%>

	<%-- ,로 나누기 --%>
  	 <c:set var="arr_2" value="홍길동, 임꺽정, 장길산/ 일지매, 둘리, 희동이/ 고길동, 마이콜"/>
  	 <c:forTokens items="${ arr_2}" delims="," var="k">
  	 	<li>${k}</li>
  	 </c:forTokens>
  	  <hr>
  	  <%-- /로 나누기 --%>
  	  <c:set var="arr_3" value="홍길동, 임꺽정, 장길산/ 일지매, 둘리, 희동이/ 고길동, 마이콜"/>
  	 <c:forTokens items="${ arr_3}" delims="/" var="k">
  	 	<li>${k}</li>
  	 </c:forTokens>
  	  <hr>
  	  <%-- ,와/로 나누기 : 구분자를 여러개 사용할 수 있다.--%>
  	   <c:set var="arr_3" value="홍길동, 임꺽정, 장길산/ 일지매, 둘리, 희동이/ 고길동, 마이콜"/>
  	 <c:forTokens items="${ arr_3}" delims="/," var="k">
  	 	<li>${k}</li>
  	 </c:forTokens>
  	  <hr>
  	  <%-- 페이지 이동: forward, sendRedirect
  	  		JSP 액션 태그 : forward만 존재
  	  		JSTL		: sendRedirect만 존재
  	  		둘다 파라미터 값을 넘길 수 있다.
  	  		
  	   <jsp:forward page="이동할 장소">
  	   		<jsp:param value="" name=""/>
  	   </jsp:forward>
  	   
  	   
  	   <% request.setCharacterEncoding("utf-8"); %>
  	   <jsp:forward page="ex08.jsp">
  	   	<jsp:param value="도우너" name="name"/>
  	   	<jsp:param value="1004" name="age"/>
  	   </jsp:forward>
  	   --%>
  	   
  	   <%--html5는 <태그><태그/>가 반드시 있는데 XML은 가운데 값이 없으면 </>로 표현 할 수 있다.--%>
  	   <c:redirect url="ex08.jsp">
  	   		<c:param name="name" value="또치"/>
  	   		<c:param name="age" value="108"/>
  	   </c:redirect>
  </h2>	
</body>
</html>