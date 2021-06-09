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

</body>
</html>