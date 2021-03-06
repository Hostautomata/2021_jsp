<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.ict.guestbook.DAO"%>
<%@page import="com.ict.guestbook.VO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 

//실제 저장위치
String path = request.getServletContext().getRealPath("/upload");
MultipartRequest mr = new MultipartRequest(request,path,100*1024*1024,"utf-8",new DefaultFileRenamePolicy());
VO vo = new VO();
vo.setIdx(mr.getParameter("idx"));
vo.setName(mr.getParameter("name"));
vo.setSubject(mr.getParameter("subject"));
vo.setEmail(mr.getParameter("email"));
vo.setMain(mr.getParameter("main"));
vo.setPw(mr.getParameter("pw"));
String f_name2 = mr.getParameter("f_name2");

//첨부파일이 있을 때와 없을 때를 구분
if(mr.getFile("f_name")!=null){
	vo.setF_name(f_name2);
}else{
	//첨부파일이 있으면 첨부파일을 사용한다.
	vo.setF_name(mr.getFilesystemName("f_name"));
}

int result = DAO.getInstance().getUpdate(vo);
if(result>0){
	response.sendRedirect("onelist.jsp?idx="+vo.getIdx());
}

%>
