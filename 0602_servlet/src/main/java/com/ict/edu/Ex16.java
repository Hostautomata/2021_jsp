package com.ict.edu;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.model.Command;
import com.ict.model.Command01;
import com.ict.model.Command02;
import com.ict.model.Command03;

@WebServlet("/Ex16")
public class Ex16 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		// 일처리가 많아지므로 담당 일처리를 할 자바클래스를 생성한다.

		// 비지니스로직
		//Command01, Command02, Command03이 모두 같은 형태의 메서드를 사용하므로
		//Command라는 인터페이스를 만들어서 사용해 보자.
		String cmd = request.getParameter("cmd");
		
		Command com = null;
		switch (cmd) {
		case "1": com = new Command01();			break;
		case "2": com = new Command02();			break;
		case "3": com = new Command03();			break;
		}
		String msg = com.exec(request, response);
				
		out.println("<h2>결과보기</h2>");
		out.println("<h3>결과는 : "+msg+"</h3>");
		
		
	}

}
