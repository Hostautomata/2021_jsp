<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	//원래는 DB검사를 해서 로그인 처리를 하지만
	//여기서는 id와 pw가 같으면 로그인 성공이라고 취급하자
	if(id.equalsIgnoreCase(pw)){
		//로그인 성공
		session.setAttribute("login", "ok");
		session.setAttribute("id", id);
	}else{
		//로그인 실패
		session.setAttribute("login", "no");
		
	}
	//forward, sendRedirect상관 없음
	response.sendRedirect("ex17_session.jsp");
%>  