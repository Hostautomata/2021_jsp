package com.ict.edu;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Ex03")
public class Ex03 extends HttpServlet {
   private static final long serialVersionUID = 1L;
       

    public Ex03() {
        super();
     
    }


   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   
      doPost(request, response);
   }


   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   // 응답 한글 처리
      response.setContentType("text/html; charset=utf-8");
      PrintWriter out = response.getWriter();
      out.println("<!DOCTYPE html>");
      out.println("<html>");
      out.println("<head>");
      out.println("<meta charset='UTF-8'>");
      out.println("<title></title>");
      out.println("</head>");
      out.println("<body>");
      Calendar now = Calendar.getInstance();
      int year = now.get(Calendar.YEAR);
      int month = now.get(Calendar.MONTH)+1;
      int day = now.get(Calendar.DATE);
      int lucky = (int)(Math.random()*101);
      
      out.println("<h2>"+year+"."+month+"."+day+".의 운수는 "+lucky+"% 입니다. </h2>");
      
      out.println("<hr>");
      out.println("<h2>요청 정보 출력</h2>");
      out.println("<ul>");
      out.println("<li> 요청주소 : " +request.getRemoteAddr()+"</li>");
      out.println("<li> 요청주소 : " +request.getRemoteHost()+"</li>");
      out.println("<li> 요청포트 : "+request.getRemotePort()+"</li>");
      out.println("<li> 요청사용자 : "+request.getRemoteUser()+"</li>");
      out.println("<li> 프로젝트주소 : "+request.getContextPath()+"</li>");
      out.println("<li> 파일주소 : "+request.getRequestURI()+"</li>");
      out.println("</ul>");
      out.println("</body>");
      out.println("</html>");
   }

}