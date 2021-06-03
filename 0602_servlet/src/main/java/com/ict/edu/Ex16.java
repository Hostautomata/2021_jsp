package com.ict.edu;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		String cmd = request.getParameter("cmd");
		switch (cmd) {
		case "1": // 날짜와 운세
			Command01 com1 = new Command01();
			String msg1 = com1.exec(request, response);
			break;
		case "2":
			Command02 com2 = new Command02();
			String msg2 = com2.exec(request, response);
			break;
		case "3":
			Command03 com3 = new Command03();
			String msg3 = com3.exec(request, response);
			break;
		}

	}

}
