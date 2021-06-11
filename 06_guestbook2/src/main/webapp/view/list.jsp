
<%@page import="com.ict.guestbook.DAO"%>
<%@page import="com.ict.guestbook.VO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
//테이블 전체 정보 가져오기
	List<VO> list = DAO.getInstance().getSelectAll();
	pageContext.setAttribute("list", list);
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
div {
	text-align: center;
	margin: 0px 100px auto;
}
table{
	width:600px;
	border-collapse: collapse;
	text-align: center;
	margin: auto;
}
table th, td {
	padding: 5px;
	border: 1px solid black;
	
}
th {background-color: skyblue;
	width: 30%;
}
</style>
</head>
<body>
	<div>
		<h2>방명록</h2>
		<hr>
		<div><p>[<a href="write.jsp">방명록 쓰기</a>]</p></div>
		<form method="post" enctype="multipart/form-data">
			<table>
				<thead>
					<tr style="background-color: #99ccff;">
						<th style= "width:20%;">번호</th><th>작성자</th><th>제목</th><th>첨부파일</th><th>작성일</th>
					</tr>
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${empty list }">
							<tr><td colspan="4"><h2>원하는 정보가 존재하지 않습니다.</h2></td></tr>
						</c:when>
						<c:otherwise>
							<c:forEach var = "k" items="${list}" varStatus="vs">
								<tr>
									<td>${vs.count}</td>
									<td>${k.name}</td>
									<%--상세페이지로 가기--%>
									<td style="text-align: center;"><a href="onelist.jsp?idx=${k.idx}">${k.subject}</a></td>
									<td>${k.f_name}</td>
									<td>${k.reg}</td>
								</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</tbody>
				<tfoot>
					<tr>
						
					</tr>
				</tfoot>
			</table>
		</form>
	</div>
</body>
</html>