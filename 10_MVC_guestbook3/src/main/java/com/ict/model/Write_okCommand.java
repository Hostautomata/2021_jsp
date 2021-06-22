package com.ict.model;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.disk.DiskFileItemFactory;

import com.ict.db.DAO;
import com.ict.db.VO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class Write_okCommand implements Command{
@Override
public String exec(HttpServletRequest request, HttpServletResponse response) {
	try {
		//DefaultFileRenamePolicy dfrp = new DefaultFileRenamePolicy(); 
		String path = request.getServletContext().getRealPath("/upload");

		  MultipartRequest mr; mr = new MultipartRequest(request, path,
		  100*1024*1024,"utf-8", new DefaultFileRenamePolicy());
			
		
		VO vo = new VO();
		vo.setName(mr.getParameter("name"));
		vo.setSubject(mr.getParameter("subject"));
		vo.setEmail(mr.getParameter("email"));
		vo.setMain(mr.getParameter("main"));
		vo.setPw(mr.getParameter("pw"));
		
		//첨부파일이 있을 때와 없을 떄를 구분
		if(mr.getFile("f_name")!=null){
			vo.setF_name(mr.getFilesystemName("f_name"));
			
		}else{
			vo.setF_name("");
		}
		int result = DAO.getInstance().getInsert(vo);
		if(result>0){
			return "view/list.jsp";
		}
	} catch (IOException e) {
		e.printStackTrace();
	}
	return null;
}
}
