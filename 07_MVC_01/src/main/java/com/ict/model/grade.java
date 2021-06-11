package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class grade implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String result = "view/grades_result.jsp";
		String name = request.getParameter("name");
		int kor =  Integer.parseInt(request.getParameter("kor"));
		int eng =  Integer.parseInt(request.getParameter("eng"));
		int math =  Integer.parseInt(request.getParameter("math"));
		
		int sum = kor+eng+math;
		int avg = sum/3;
		String hak = "";
		if(avg>=90) {
			hak="A";
		}else if(avg>=80){
			hak="B";
		}else if(avg>=70){
			hak="C";
		}else {
			hak="F";
		}
		
		request.setAttribute("name", name);
		request.setAttribute("kor", kor);
		request.setAttribute("eng", eng);
		request.setAttribute("math", math);
		request.setAttribute("sum", sum);
		request.setAttribute("avg", avg);
		request.setAttribute("hak", hak);
		
		
		return result;
	
	}

}
