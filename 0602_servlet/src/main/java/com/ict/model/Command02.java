package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Command02 {
	// 계산기 구하는 메서드
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String msg = "";
		try {
			int s1 = Integer.parseInt(request.getParameter("su1"));
			int s2 = Integer.parseInt(request.getParameter("su2"));
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

			System.out.println("<h3>결과:" + s1 + cal + s2 + "=" + result + "</h3>");

		} catch (Exception e) {
			System.out.println("<h2>0으로는 나눌수 없습니다.</h2>");
		}

		return msg;
	}
}
