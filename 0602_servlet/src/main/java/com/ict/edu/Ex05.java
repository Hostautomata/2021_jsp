package com.ict.edu;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex05")
public class Ex05 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//파라미터 한글처리
		request.setCharacterEncoding("utf-8");
		//브라우저 한글처리
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		//클라이언트가 서버에 정보를 요청하며 필요한 정보를 보낼 수 있다.
		//이러한 요청을 처리하기위해 함께 전달되는 정보를 파라미터라고 한다.
		//파라미터를 받아서 처리한 후 필요한 정보를 클라이언트에게 전송한다.
		//파라미터의 자료형은 기본적으로 String이거나 String[]이다.(같은 값의 이름이 여러개 올때 배열)
		
		//파라미터를 받아서 처리하는 메서드들
		//1. request.getParameter("name") : String => 해당 이름의 값을 추출해서 저장한다.
		//2. request.getParameterValues("name") : String[] 해당 이름에 매칭값을 추출 후 저장(여러개)
		//3. request.getParameterMap(String, String[]) 맵 형식의 파라미터 일때 사용
		//4. request.getParameterNames():Enumeration<String> 열거형 파라미터 일 때
		
		//만약 name과 age가 파라미터값으로 넘어왔을 때 처리하는 방법
		out.println("<h2>서블릿 파라미터 예제</h2>");
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		
		out.println("<h3>");
		out.println("<p>이름 : "+name+"</p>");
		out.println("<p>나이 : "+ age+"</p>");
		out.println("</h3>");
		//만약 s1, s2, op라는 이름으로 숫자 두개와 하나의 연산자가 넘어온다고 가정하자
		String op = request.getParameter("op");
		int su1 = Integer.parseInt(request.getParameter("s1"));
		int su2 = Integer.parseInt(request.getParameter("s2"));
		
		out.println("<hr>");
		out.println("<h3>");
		int result = 0;
		switch (op) {
		
		case "+":  result= su1+su2;break;
		case "-": result= su1-su2;break;
		case "*": result= su1*su2;break;
		case "/": result= su1/su2;break;
		default: break;
		}
		 out.println("<p>결과:"+su1+op+su2+"="+result+"</p>");
		out.println("</h3>");
		out.println("<hr>");
		
	}

}
