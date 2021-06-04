package com.ict.model;import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Command01 implements Command {
	//오늘날짜와 운세
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String msg = "";
		
		int luck = (int)(Math.random()*101);
		Calendar now = Calendar.getInstance();
		int year = now.get(Calendar.YEAR);
		int month = now.get(Calendar.MONTH);
		int day = now.get(Calendar.DATE);
		System.out.println("<h3>");
		System.out.println("<li>날짜 : "+year+"년"+month+"월"+day+"일"+"의 운세는 : "+luck+"점입니다.</li>");
		System.out.println("</h3>");
		
		return msg;
	}
}
