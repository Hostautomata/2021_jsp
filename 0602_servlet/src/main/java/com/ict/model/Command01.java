package com.ict.model;import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Command01 {
	//오늘날짜와 운세
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String msg = "";
		
		int luck2 = (int)(Math.random()*10);
		Calendar now2 = Calendar.getInstance();
		int year2 = now2.get(Calendar.YEAR);
		int month2 = now2.get(Calendar.MONTH);
		int day2 = now2.get(Calendar.DATE);
		System.out.println("<h3>");
		System.out.println("<li>날짜 : "+year2+"년"+month2+"월"+day2+"일"+"의 운세는 : "+luck2+"점입니다.</li>");
		System.out.println("</h3>");
		
		return msg;
	}
}
