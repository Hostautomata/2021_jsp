<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>ex13에서 넘어온 정보</h2>
	<%--mvc패턴에서 자바코드로 처리한 결과를
	setAttribute를 사용해 request나 세션으로 저장하고
	뷰파일(getAttribute로 값을 호출가능)을 서블릿에 반환 --%>
	<h2>
		이름 :
		<%=pageContext.getAttribute("name")%></h2>

	<h2>
		나이 :
		<%=pageContext.getAttribute("age")%></h2>
				<hr>
	<h2>
		이름 :
		<%=request.getAttribute("name")%></h2>
	<h2>
		나이 :
		<%=request.getAttribute("age")%></h2>
				<hr>
	<h2>
		이름 :
		<%=session.getAttribute("name")%></h2>
	<h2>
		나이 :
		<%=session.getAttribute("age")%></h2>
</body>
</html>