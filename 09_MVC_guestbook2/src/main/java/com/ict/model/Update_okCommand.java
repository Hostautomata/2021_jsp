package com.ict.model;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.DAO;
import com.ict.db.VO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class Update_okCommand implements Command{
@Override
public String exec(HttpServletRequest request, HttpServletResponse response) {
	try {
	//실제 저장위치
	String path = request.getServletContext().getRealPath("/upload");
	MultipartRequest mr;
		mr = new MultipartRequest(request,path,100*1024*1024,"utf-8",new DefaultFileRenamePolicy());
	VO vo = new VO();
	vo.setIdx(mr.getParameter("idx"));
	vo.setName(mr.getParameter("name"));
	vo.setSubject(mr.getParameter("subject"));
	vo.setEmail(mr.getParameter("email"));
	vo.setMain(mr.getParameter("main"));
	vo.setPw(mr.getParameter("pw"));
	String f_name2 = mr.getParameter("f_name2");

	//첨부파일이 있을 때와 없을 때를 구분
	if(mr.getFile("f_name")!=null){
		vo.setF_name(f_name2);
	}else{
		//첨부파일이 있으면 첨부파일을 사용한다.
		vo.setF_name(mr.getFilesystemName("f_name"));
	}

	int result = DAO.getInstance().getUpdate(vo);
	if(result>0){
		return "MyController?cmd=onelist&idx="+vo.getIdx();
	}
	return null;
	} catch (IOException e) {
		e.printStackTrace();
	}
	return null;
}
}
