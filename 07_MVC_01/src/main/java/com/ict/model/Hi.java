package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Hi implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String result="view/hi_Result.jsp";
		request.setAttribute("country", "대한민국");
		request.setAttribute("city", "서울");
		return result;
	}
}
