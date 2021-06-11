<%@page import="com.ict.guestbook.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String idx = request.getParameter("idx");
	int result = DAO.getInstance().getDelete(idx);
	out.println(result);
	if(result>0){
		//실제 그림파일도 삭제하기(숙제) 다른폴더로 이동시켜서 해당파일을 삭제를 하던 바로 삭제를 하던
			
		response.sendRedirect("list.jsp");
		}

%>