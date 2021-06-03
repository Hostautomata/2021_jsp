package com.ict.edu;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex13")
public class Ex13 extends HttpServlet {
	private static final long serialVersionUID = 1L;
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			request.setCharacterEncoding("utf-8");
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			
			String name = request.getParameter("name");
			String age = request.getParameter("age");
		
			out.println("<h2>Ex13페이지</h2>");
			out.println("<h3>");
			out.println("<li>이름 : "+name+"</li>");
			out.println("<li>나이 : "+age+"</li>");
			out.println("</h3>");
	}

}
