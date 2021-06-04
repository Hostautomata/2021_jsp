<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
	request : 웹 프로그래밍에서 가장 많이 사용되는 클래스 중 하나
	   		  클라이언트가 요청한 정보를 담고있는 클래스(요청정보=>파라미터값도 가지고 있다.)
		**request의 생명주기는 response가 이루어지면 끝이난다.
		request가 가지고있는 정보들
		- 클라이언트의 정보 및 서버 정보를 얻을 수 있는 메서드 제공
		- form정보와 요청 파라미터 정보를 제공
		
		1) 클라이언트의 정보 및 서버 정보를 얻을 수 있는 메서드
		- getRemoteAddr()		-getContentlength()
		- getCharacterEncoding()-getContentType()
		- getProtocal()			-getContentPath()
		- getRequestURI()		-getContextPath()
		- getServerName()		-getServerPort()
		
		2) 파라미터의 정보 제공
		- getParameter(String name)	: String
		- getParameterValues(String name) : String[]
		- getParameterMap(String name) : Map<String, String[]>
		- getParameterNames()		: Enumeration<String>
		
		3) 요청 헤드 정보
		- getHeader(String name)	: 헤더 값 구하기
		- getHeader(Enumeration)	: 헤더 목록 구하기
		- getHeaderNames()			: 헤더 이름 궇기
		- getIntheader(String name) : 헤더값을 정수값으로 구하기
		- getDateheader(String name) : 헤더값을 시간값으로 구하기
		
		4) 다른 주요 메서드
		- 포워드 : request.getRequestDispacher("이동할 주소").forward(request.response)
		- 세션 호출 : request.getSession()
		- request 속성을 통해서 데이터 저장 : request.setAttribute("이름",데이터);
		- request 속성을 통해서 저장된 데이터 호출 : request.getAttribute("이름");
		
 -->
	<h2>클라이언트의 정보 및 서버 정보 보기</h2>
	<h3>
		<ul>
			<li>클라이언트 IP : <%=request.getRemoteAddr() %></li>
			<li>요청 정보 길이 : <%=request.getContentLength() %></li>
			<li>요청 정보 인코딩 : <%=request.getCharacterEncoding() %></li>
			<li>요청 정보 컨텐츠 타입 : <%=request.getContentType() %></li>
			<li>요청 정보 프로토콜 : <%=request.getProtocol() %></li>
			<li>요청 정보 전달 방식 : <%=request.getMethod() %></li>
			<li>요청 정보 URI : <%=request.getRequestURI() %></li>
			<li>컨텍스트 경로 : <%=request.getContextPath() %></li>
		</ul>
	</h3>
</body>

</html>