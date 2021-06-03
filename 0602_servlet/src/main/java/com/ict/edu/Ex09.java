package com.ict.edu;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex09")
public class Ex09 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String[] hobby = request.getParameterValues("hobby");
		String[] web = request.getParameterValues("web");
		
		out.println("<h2>정보출력</h2>");
		out.println("<ul>");
		for (String k : hobby) {
			out.println("<li>"+k+"</li>");
		}
		
		out.println("<hr>");
		for (String k : web) {
			out.println("<li>"+k+"</li>");
		}
		out.println("</ul>");
	}

}
