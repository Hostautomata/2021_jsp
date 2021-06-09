<%@page import="org.apache.jasper.tagplugins.jstl.core.Import"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.ArrayList;" %>
<% 
	request.setCharacterEncoding("utf-8");
	String fruits = request.getParameter("fruits");
	//장바구니 크기를 정할수 없으므로 컬렉션에 저장해야 한다.
	ArrayList<String> list = (ArrayList<String>)session.getAttribute("list");
	
	//맨처음 해당 페이지로 넘어오면 당연히 session에는 list가 없다.
	if(list == null){
		list = new ArrayList<String>();
		session.setAttribute("list", list);
	}
	//리스트에 정보추가
	list.add(fruits);
	
	//세션에 정보를 담았기 때문에 sendRedirect로 넘겨도 값이 초기화 되지 않는다.
	
%>    
<script>
	//1. sendRedirect
	<%--<%response.sendRedirect("ex17_session.jsp");%>--%>
	//2. 
	alert("<%=fruits%>가 추가 되었습니다.");
	history.go(-1);
	
</script>