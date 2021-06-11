package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Bye implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String result="view/bye_Result.jsp";
		String[] person = {"손흥민","토트넘","1992년생","강원도"};
		request.setAttribute("person", person);
		return result;
	}
}
