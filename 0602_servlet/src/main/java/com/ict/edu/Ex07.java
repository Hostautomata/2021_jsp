package com.ict.edu;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex07")
public class Ex07 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		try {
			int s1 = Integer.parseInt(request.getParameter("su1"));
			int s2 = Integer.parseInt(request.getParameter("su2"));
			String cal = request.getParameter("cal");
			
			int result = 0;
			switch (cal) {
			
			case "+":  result= s1+s2;break;
			case "-": result= s1-s2;break;
			case "*": result= s1*s2;break;
			case "/": result= s1/s2;break;
			}
			
			out.println("<h3>결과:"+s1+cal+s2+"="+result+"</h3>");
			
		} catch (Exception e) {
			out.println("<h2>0으로는 나눌수 없습니다.</h2>");
		}
		
	}

}
