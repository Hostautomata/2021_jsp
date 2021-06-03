package com.ict.edu;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex12")
public class Ex12 extends HttpServlet {
	private static final long serialVersionUID = 1L;
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			request.setCharacterEncoding("utf-8");
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			
			String name = request.getParameter("name");
			String age = request.getParameter("age");
			//페이지 이동(리다이렉트, 포워딩)
			//	현재페이지를 지나서 작업 한 후 다른페이지로 이동
			//1. 포워드 : 다른페이지로 이동하면서 기존의 request와 response의 정보를 가져간다.
			//				request와 response가 사라지지 않는다.
			//				즉., 파라미터값들이 유지된다.
			//				주소창에 최초 주소가 보인다.
			//사용법 : request.getRequestDispatcher("이동할 주소").forward(request,response);
			//		이동할 주소가 servlet이면 확장자를 사용하지 않는다.
			//		이동할 주소가 html이면 확장자를 사용한다.
			out.println("<h2>Ex12페이지</h2>");
			out.println("<h3>");
			out.println("<li>이름 : "+name+"</li>");
			out.println("<li>나이 : "+age+"</li>");
			out.println("</h3>");
			request.getRequestDispatcher("Ex13").forward(request, response);
			//response는 무조건 client로 이동함.
			//즉, ex10.html->Ex10.java>response.sendRedirect("Ex11");->ex10.html->Ex11.java
			//ID,PW가 틀렸을 때 값을 버려야 하기때문에 사용할수 있음.
			//반면에 getRequestDispatcher는 request와 response값이 유지가 된다.

		
	}

}
