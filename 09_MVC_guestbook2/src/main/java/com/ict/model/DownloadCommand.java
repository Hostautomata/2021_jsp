package com.ict.model;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DownloadCommand implements Command{
@Override
public String exec(HttpServletRequest request, HttpServletResponse response) {
	try {
	String path = request.getParameter("path");
	String f_name = request.getParameter("f_name");
	//실제 위치 구하기
	String realpath = request.getServletContext().getRealPath("/"+path);
	
	//다운로드 받을 수 있도록 클라이언트(웹 브라우저)의 문서 타입 변경
	response.setContentType("application/x-msdownload");
	
	//헤더정보에 첨부파일이 존재하는 것으로 변경
		response.setHeader("Content-Disposition","attachment; filename="+URLEncoder.encode(f_name,"utf-8"));
	
	//이제부터 실제 바이트 스트림을 이용해 다운로드
	File file = new File(realpath+"/"+new String(f_name.getBytes("utf-8")));
	int b;
	FileInputStream fis = null;
	BufferedInputStream bis = null;
	
	FileOutputStream fos = null;
	BufferedOutputStream bos = null;
	try{
		fis = new FileInputStream(file);
		bis = new BufferedInputStream(fis);
		//file에 다운 받는 것이 아니라 브라우저에 다운 받는 것임.
		bos = new BufferedOutputStream(response.getOutputStream());
		
		while((b = bis.read())!=-1){
			bos.write(b);
			bos.flush();
		}
		
	}catch(Exception e){
		
		
	}finally{
		try{
			bos.close();
			bis.close();
			fos.close();
			fis.close();
			
		}catch(Exception e){
			
			
		}
		
	}
	return "view/download";
	} catch (UnsupportedEncodingException e1) {
		// TODO Auto-generated catch block
		e1.printStackTrace();
	}
	return null;
}
}
