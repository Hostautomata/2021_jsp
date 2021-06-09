<% %>><%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.Date" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
	세션 : 서버와클라이언트 간의 접속을 유지시켜 주기 위한 객체
	(http는 요청을하고 응답을 안하면 끊어진다.)
	
	서비스를 요청하면 서버측에서 클라이언트에게 클라이언트를 구분 가능한 세션 id를 부여.서버측에서 세션ID부여, 해당IP이전 접속 여부 구함
	
	쿠키는 클라이언트에서 저장하는 저장공간(클라이언트에더ㅗ 있고, 서비스에도 있음)
	--주요 메서드
	*데이터 저장 : session.setAttribute("이름",데이터);	
	*데이터 호출 : session.getAttribute("이름",데이터);	
	*데이터 삭제 : session.removeAttribute("이름",데이터);
	
	
	getID() :고유ID반환
	getCreation() : 세션이 생성된 시간 반환
	getLastAccessedTime() : 마지막 시간 반환
	invalidate() : 세션 전체 초기화
	setmaxInativeInterval() : 세션 시간 제한
	세션 생명주기 : 시간을 지정하지 않으면 브라우저가 종료되면 세션데이터도 사라짐	
 --%>
 	<h1>세션연습</h1>
	<%Date time = new Date(); %>
	<h2>
		<p>세션 ID : <%=session.getId() %></p>
		<p>현재시간 : <%= time %></p>
		<hr>
		<%time.setTime(session.getCreationTime()); %>
		<p>생성된 시간 : <%=time %></p>
		<hr>
		<%time.setTime(session.getLastAccessedTime()); %>
		<p>최근 접근 시간 : <%=time %></p>
		
	</h2>
</body>
</html>