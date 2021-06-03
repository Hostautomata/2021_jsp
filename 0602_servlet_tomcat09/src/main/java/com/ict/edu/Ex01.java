package com.ict.edu;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//서블릿: 자바를 가지고 웹 페이지를 표현하는 기법
//		자바에서 HTML,CSS,JavaScript등을 표현해서 웹페이지로 만들어 표시한다.
//		main없이 실행한다.
//URL mapping: 해당페이지를 웹에서 접근할 수 있는 주소
//				localhost:8090/프로젝트명/URL mapping주소("Ex01")
@WebServlet("/Ex01")
public class Ex01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Ex01() {
        super();
        System.out.println("생성자");
    }

	
	public void init(ServletConfig config) throws ServletException {
		//생성자와 같은 맴버필드의 초기화, 객체생성시 한번 호출됨
		System.out.println("init");
		//자동으로 service호출
	}

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//클라이언트가 정보를 요청할 때 요청방식에따라 알맞는 메서드를 호출하는 역할을 한다.
		//요청방식 : get방식 : doGet()으로 이동 /post방식 : doPost()로 이동후 doGet()으로 이동
		//request: 클라이언트에게 들어온 요청 정보를 가지고 있는 객체
		//response:클라이언트에게 결과를 보여줄 수있는 응답 정보를 가지고 있는 객체
		//클라이언트--request--->서버 | 서버---response--->클라이언트
		//get방식(생략가능)은 정보를 http패킷의 head에 담아서 보낸다.
		// 	주소창에 해당 주소가 보임(검색창)
		//post방식은 정보를 http패킷의 body에 담아서 보내다.
		//  주소창에 해당 주소가 안보임.속도는 get방식보다 느리다. 많은 양을 전달할 때 적합하다.(로그인)
		System.out.println("service");
		if(request.getMethod().equals("get")) {
			doGet(request,response);			
		}else if(request.getMethod().equals("post")) {
			doPost(request,response);
		}
	}
	//서블릿이 자바코드와 html, css, javascript를 섞어서 사용하는 메서드
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet()");
		doPost(request,response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost()");
	}
	
	public void destroy() {
		//해당 프로젝트 톰켓에서 없어지기 직전에 실행하는 메서드 
		System.out.println("destroy");
	}

	



}
