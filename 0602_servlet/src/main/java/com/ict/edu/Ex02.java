package com.ict.edu;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/test")
public class Ex02 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 서블릿 : java코드와 html, JavaScript, CSS를 섞어서 사용
		// JSP : HTML, CSS, JavaScript에 Java코드를 섞어서 사용

		// 화면출력을 위한 설정
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE html>\r\n");
		out.println("<html>\r\n");
		out.println("<head>\r\n");
		out.println("<meta charset=\'UTF-8\'>\r\n");
		out.println("<title>제목 태그: h1~h6</title>\r\n");
		out.println("\r\n");
		out.println("</head>\r\n");
		out.println("<body>\r\n");
		out.println("<h1 style=\'font-size:36px;\'>제목태그h1(좀더 큰 글자)</h1>\r\n");
		out.println("<h1 style=\'background-color:yellow;\'>제목태그 h1</h1>\r\n");
		out.println("<h2>제목태그 h2</h2>\r\n");
		out.println("<h3>제목태그 h3</h3>\r\n");
		out.println("<h4>제목태그 h4</h4>\r\n");
		out.println("<h5>제목태그 h5</h5>\r\n");
		out.println("<h6>제목태그 h6</h6>\r\n");
		out.println("<h7>제목태그 h7</h7>\r\n");
		out.println("<h8>제목태그 h8</h8>\r\n");
		out.println("<hr>\r\n");
		out.println("<span style =\'background-color:yellow;\'>HTML&CSS</span>\r\n");
		out.println("<span>JavaScript</span>\r\n");
		out.println("</body>\r\n");
		out.println("</html>");
	}

}
