package com.ict.edu;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex15")
public class Ex15 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String cmd = request.getParameter("cmd");
		switch (cmd) {
		case "1":	
			out.println("<h2>오늘의 날짜 구하기</h2>");
			Calendar now = Calendar.getInstance();
			int year = now.get(Calendar.YEAR);
			int month = now.get(Calendar.MONTH);
			int day = now.get(Calendar.DATE);
			out.println("<li>날짜 : "+year+"년"+month+"월"+day+"일</li>");
			break;
		case "2":
			int luck = (int)(Math.random()*10);
			out.println("<li>운세는 :"+luck+"점입니다.</li>");
			break;
		case "3":
			int luck2 = (int)(Math.random()*10);
			Calendar now2 = Calendar.getInstance();
			int year2 = now2.get(Calendar.YEAR);
			int month2 = now2.get(Calendar.MONTH);
			int day2 = now2.get(Calendar.DATE);
			out.println("<h3>");
			out.println("<li>날짜 : "+year2+"년"+month2+"월"+day2+"일"+"의 운세는 : "+luck2+"점입니다.</li>");
			out.println("</h3>");
			break;
		}
		
	}

}
