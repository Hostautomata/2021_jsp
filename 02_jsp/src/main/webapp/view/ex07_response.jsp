<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP내장 객체 : response</title>
<script type="text/javascript">
	function go() {
		location.href="ex08.jsp";
	}
	function go2() {
		location.href="ex08.jsp?name=일지매&age=18";
	}
</script>
</head>
<body>
<!-- response(응답) : request와 반대 기능 수행
					request가 요청정보를 담고 있다면
					response는 웹 브라우저에 응답 정보를 담는 역할을 한다.
				-헤더정보 입력
				-쿠키정보 전송	
				-리다이렉트 : response.sendRedirect("이동할 주소);
				=================================================
				웹펭니지 이동
				1. a태그를 통한 페이지 이동
				<a href="이동할 주소">텍스트 주소</a>	
				<a href="이동할 주소?name=value&name=value...">텍스트 주소</a>	
				
				2. javascript를 통해 이동
				-location.href = "이동할 주소";
				-location.href = "이동할 주소?name=value&name=value...";
				-history.go(숫자)
				1,2번은 웹 페이지에서 이벤트 처리를 해야만 다른 페이지로 이동
				
				3. redirect : response.sendRedirect("이동할 주소");
							기존의 request와 response는 사라진다.
							새로운 request와 response가 만들어진다.
							파라미터가 사라진다. 주소창에 최종주소가 보인다.
							
				4. forward : request.getRequestDispatcher("이동할 주소").forward(request.response);
							기존의 request와 response는 유지된다.
							파라미터가 유지된다.
							주소창에 최초주소가 보인다.
							
				3,4번은 이벤트 없이 자동으로 다른페이지로 이동
					 -->
					 
			<%--1. a 링크 --%>
			<a href="ex08.jsp">ex08.jsp페이지로 이동</a>
			<a href="ex08.jsp?name=일지매&age=18">ex08.jsp페이지로 이동</a>
			<button onclick="go()">ex08.jsp로 이동(파라미터X)</button>
			<button onclick="go2()">ex08.jsp로 이동(파라미터O)</button>
			<hr>
			
			<%--리다이렉트 --%>
			<%--<%response.sendRedirect("ex08.jsp");--%>
			<%--<%response.sendRedirect("ex08.jsp?name=일지매&age=18");--%>
			
			<%--포워드 --%>
			<%-- <% request.getRequestDispatcher("ex08.jsp").forward(request, response); --%>
			<% request.getRequestDispatcher("ex08.jsp?name=고길동&age=38세").forward(request, response); %>
</body>
</html>