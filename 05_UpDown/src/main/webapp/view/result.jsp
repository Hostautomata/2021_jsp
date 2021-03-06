<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//<form action="result.jsp" method="post" enctype="multipart/form-data">를 사용하면
	//request를 사용할 수 없다. -파라미터값이 null이다.
	//반드시 cos.jar안에 있는 MultipartRequest 클래스를 사용해야 한다.
	//String name = request.getParameter("name");
	//out.println("name: "+name);
	//cos.jar안에 있는 MultipartRequest 클래스의 주요 메서드
	// -getParameter(String) : String
	// -getParameterValues(String) : String[]
			
	// String인자는 input type="file" name = "name" 중 "name"을 의미함		
	// -getOriginalFileName(String) : 업로드 당시 파일이름
	// -getFilesystemName(String) : 저장당시 파일이름
	// -getContentType(String) : 해당 문서의 종류 표시
	// -getFile(String) : 업로드된 파일을 FileClass객체로 변경해서 처리하자
	//		- .getName() : 파일의 이름
	//		- .length() : 파일의 크기를 byte처리
	//		- .lastModified : 최근 수정날짜
	//	1. 실제 파일이 저장될 위치를 구하자. 
	String path = getServletContext().getRealPath("/upload");
	//	2. MultipartRequest 객체 생성
	MultipartRequest mr = 
	new MultipartRequest(
				request, //요청정보
				path,	//저장위치
				100*1024*1024,//업로드 용량(100MB)
				"utf-8",	//	인코딩
				new DefaultFileRenamePolicy()//파일 이름 중복처리
			);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>업로드된 정보 보기</h1>
	<h2>
		<li>올린사람 : <%=mr.getParameter("name") %></li>
		<li>올린사람 : ${param.name }</li>
		<li>파일 원본 이름 : <%=mr.getOriginalFileName("f_name") %></li>
		<li>파일 저장 이름 : <%=mr.getFilesystemName("f_name")%></li>
		<li>파일 타입 : <%=mr.getContentType("f_name")%></li>
		<hr>
		<%File file = mr.getFile("f_name"); %>
		<li>파일 원본 이름 : <%=file.getName() %></li>
		<li>파일 크기 : <%=file.length()/1024%>KB</li>
		<li>파일 수정 날짜 : <%=file.lastModified()%></li>
		<%--위에 숫자는 1970.01.01.0.0.0~현재시간까지 날짜를 수치화 한 것 --%>
		<%
			SimpleDateFormat format =
				new SimpleDateFormat("yyyy-MM-dd HH:mm:ss EE");
		%>
		<li>수정 날짜 : <%= format.format(file.lastModified()) %></li>
		<img src="../upload/<%=file.getName()%>" style="width:100px;">
		<hr>
		
		<li>다운로드 : <a href="download.jsp?path=upload&f_name=<%=file.getName()%>"><%=file.getName() %></a></li>
	</h2>
		
</body>
</html>