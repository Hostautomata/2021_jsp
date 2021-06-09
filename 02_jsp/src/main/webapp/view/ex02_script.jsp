<%@page import="org.apache.jasper.tagplugins.jstl.core.Import"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	    <%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 스크립트 요소</title>
</head>
<body>
	<%--	
			스크립트요소 : HTML안에서 java코드를 사용가능하게 만든요소들
	 		1. 선언부(<%!내용%>): 변수, 메서드 선언할 때 사용
	 		스크립트릿<% 내용 %> : java코드를 코딩시 사용
	 		3. 표현식(<% 내용%>): 변수값이나 메서드의 결과값을 출력시 사용 나중에 EL,JSTL로 변경
	 		
	 		
	 		**주의사항 : script요소들은 겹쳐서 사용하면 안된다.
	 		
	 		
	 		 --%>
	<h2>0-10까지 java의 for문을 사용해서 출력하자</h2>
	<%
	for (int i = 0; i < 11; i++) {
		//콘솔에 출력하는 것
		//System.out.println();

		//웹페이지, 브라우저에 출력하는 것
		//서블릿 out객체가 존재해서 사용가능
		out.println(i + "&nbsp;&nbsp;");
	}
	%>

	<h2>0-10까지 java의 for문을 사용해서 출력하자</h2>
	<%
	for (int i = 0; i < 11; i++) {
	%>
	<%=i%>
	&nbsp;
	<%
	}
	%>
	<hr>
	<h3>0-10까지의 합을 java for문을 사용해서 출력하자.</h3>
	<%
	int sum = 0;
	for (int i = 0; i < 11; i++) {
		sum = sum + i;
	}
	out.println("합은 " + sum);
	%>
	<hr>
	<h3>0-10까지의 합을 java for문을 사용해서 출력하자.</h3>
	<%
	int sum2 = 0;
	for (int i = 0; i < 11; i++) {
		sum2 = sum2 + i;
	}
	%>
	합은
	<%=sum2%>
	<hr>
	<h3>변수와 메서드를 만들어서 사용하기</h3>

	<%!public int add(int s1, int s2) {
		int res = 0;
		res = s1 + s2;
		return res;
	}

	int result = 0;

	public void sub(int s1, int s2) {
		int res = 0;
		result = s1 - s2;
	}%>
	<p>
		7+5=<%=add(7, 5)%></p>
	<%
	sub(7, 5);
	%>
	<p>
		7-5=<%=result%>>
	</p>
	<hr>
	<h3>날짜와 운수 출력하기</h3>
	<%
	Calendar now = Calendar.getInstance();
	int year = now.get(Calendar.YEAR);
	int month = now.get(Calendar.MONTH)+1;
	int day = now.get(Calendar.DATE);
	int lucky = (int) (Math.random() * 100);
	out.println(year+"년"+month+"월"+day+"일");
	%>
	<%=year%>년<%=month %>월<%=day %>일<%=lucky %>점
	
	
	<hr>
	<h3>5단출력하기</h3>
	<%
	for (int i = 0; i < 11; i++) {
		out.println("i" + "*" + "5" + "=" + (i * 5));
	}
	%>
	<h3>5단출력하기</h3>
	<%
	for (int i = 0; i < 11; i++) {
		%>i*5=<%=i*5%><br><%
	}
	%>
	
	
</body>
</html>