package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Command02 implements Command{
	// 계산기 구하는 메서드
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String msg = "";

		int s1 = Integer.parseInt(request.getParameter("s1"));
		int s2 = Integer.parseInt(request.getParameter("s2"));
		String cal = request.getParameter("cal");

		int result = 0;
		switch (cal) {

		case "+":
			result = s1 + s2;
			break;
		case "-":
			result = s1 - s2;
			break;
		case "*":
			result = s1 * s2;
			break;
		case "/":
			result = s1 / s2;
			break;
		}
		msg = s1 + cal + s2 + "=" + result;
		System.out.println("<h3>결과:" + s1 + cal + s2 + "=" + result + "</h3>");

		return msg;
	}
}
