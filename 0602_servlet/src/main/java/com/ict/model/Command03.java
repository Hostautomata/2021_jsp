package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Command03 implements Command{
	// 이름, 국,영,수를 받아서 이름, 총점, 평균, 학점 구하기
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String msg = "";
		String name = request.getParameter("name");
		int kor = Integer.parseInt(request.getParameter("kor"));
		int eng = Integer.parseInt(request.getParameter("eng"));
		int mat = Integer.parseInt(request.getParameter("mat"));

		int sum = kor + eng + mat;
		double avg = (int) (sum / 3.0 + 10) / 10;
		String hak = "";
		if (avg >= 90) {
			hak = "A";
		} else if (avg >= 80) {
			hak = "B";
		} else if (avg >= 70) {
			hak = "C";
		} else {
			hak = "F";
		}

		System.out.println("<h3><p>이름: " + name + "<p>");
		System.out.println("<p>총점: " + sum + "<p>");
		System.out.println("<p>평균: " + avg + "<p>");
		System.out.println("<p>학점: " + hak + "<p></h3>");

		return msg;
	}
}
