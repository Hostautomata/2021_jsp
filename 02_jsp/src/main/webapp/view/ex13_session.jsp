<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
//데이터 저장
pageContext.setAttribute("name", "홍길동");
pageContext.setAttribute("age", "24");
request.setAttribute("name", "둘리");
request.setAttribute("age", "32");
session.setAttribute("name", "마루치");
session.setAttribute("age", "18");
%>
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
		
		
<%--ex11_result.jsp로 이동하자
		이동방법 : redirect와 forward이다.
		request와 redirect는 request정보도 사라진다.
		forward는 request정보가 사라지지 않는다.
		session은 redirect, forward 둘 다 정보가 살아있다.
	 --%>	
<%--<%response.sendRedirect("ex14_result.jsp"); --%>
<%request.getRequestDispatcher("ex14_result.jsp").forward(request, response); %>
</body>
	
</html>