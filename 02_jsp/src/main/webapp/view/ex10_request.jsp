<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--
	pageContext속성을 이용해 데이터 저장 및 호출
	
	** request속성을 사용해 데이터 저장 및 호출
	저장방법 : request.setAttribute("이름",객체);
	호출방법 : request.getAttribute("이름",객체);
	생명주기 : response하기 전까지의 데이터를 가지고 있음
 --%>
</body>
<%
//데이터 저장
pageContext.setAttribute("addr", "서울");
pageContext.setAttribute("age", "24");
pageContext.setAttribute("gender", "true");
request.setAttribute("addr", "서울");
request.setAttribute("age", "24");
request.setAttribute("gender", "true");
%>
<h2>
	주소 :
	<%=pageContext.getAttribute("addr")%></h2>
<h2>
	나이 :
	<%=pageContext.getAttribute("age")%></h2>
<hr>

<h2>
	주소 :
	<%=request.getAttribute("addr")%></h2>
<h2>
	나이 :
	<%=request.getAttribute("age")%></h2>

<%--ex11_result.jsp로 이동하자
		이동방법 : redirect와 forward이다.
		redirect는 request정보도 사라진다.
		forward는 request정보는 사라지지 않는다.
	
	 --%>
<%--<%
response.sendRedirect("ex11_result.jsp");
--%>

<%
	request.getRequestDispatcher("ex11_result.jsp").forward(request,response);
%>
</html>