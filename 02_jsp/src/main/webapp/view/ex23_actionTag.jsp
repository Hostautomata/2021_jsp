<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>액션태그 : include, forward</title>
</head>
<body>
<%-- 
	액션태그 : jsp 페이지간에 흐름제어, 자바빈즈 컴포넌트 지원
	사용법 :	<jsp:액션태그/>
			<jsp:액션태그1><jsp:액션태그2><jsp:액션태그2><jsp:액션태그1 />
	
	1. include : 현재페이지에서 다른 페이지를 보여주는 것
	- 지시어 include: 다른페이지의 소스 전체를 가져와서 현재 페이지에서 한번에 처리
						파라미터값을 전달할 수 없다.
						잘 변경되지 않는 정적인 페이지에 많이 사용한다.
						(원본 내용이 수정되면 자동으로 다시 컴파일 되지만 사본 페이지는
							
						<%include file = "가져올페이지"%>
	- 액션태그 include:  다른페이지의 소스가 아닌 결과값을 현재 페이지에 포함시킨다.
						파라미터 값을 전달 할 수 있다.
						자주 변경되는 동적인 페이지에 많이 사용된다.
						<jsp: include page="가져올 페이지">
							<jsp:param value=""name=""/>
						</jsp: include>
 --%>
<%--ex08.jsp include하기 --%>

<h2>include지시어 사용</h2>

<%@ include file = "ex08.jsp"%>
<hr>
<h2>include액션태그 사용</h2>
<%--만약 한글이 깨지면 --%>
<%request.setCharacterEncoding("utf-8"); %>
<jsp:include page="ex08.jsp">
	<jsp:param value="마이콜" name="name"/>
	<jsp:param value="21" name="age"/>
</jsp:include>
<%--jsp 액션태그에는 forward가 있고 sendRedirect는 없다. --%>
<%--<jsp:forward page="이동할 페이지">
	<jsp:param value="" name=""/>
</jsp:forward> --%>


<jsp:forward page="ex08.jsp">
	<jsp:param value="도우너" name="name"/>
	<jsp:param value="1004" name="age"/>
</jsp:forward>

</body>
</html>