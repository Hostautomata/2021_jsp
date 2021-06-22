package com.ict.model;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.DAO;
import com.ict.db.VO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class Update_OkCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		try {
			String cPage = request.getParameter("cPage");
			request.setAttribute("cPage", cPage);
			String path = request.getServletContext().getRealPath("/upload");
			MultipartRequest mr = new MultipartRequest(request, path, 100*1024*1024,"utf-8", new DefaultFileRenamePolicy());
			VO vo = (VO)request.getSession().getAttribute("vo");
			VO vo2 = new VO();
			vo2.setIdx(vo.getIdx());
			vo2.setWriter(mr.getParameter("writer"));
			vo2.setTitle(mr.getParameter("title"));
			vo2.setContent(mr.getParameter("content"));
			
			String old_file_name = mr.getParameter("old_file_name");
			//파일처리
			
			if(mr.getFile("file_name")==null) {
			//없으면 이전파일로
				vo2.setFile_name(old_file_name);
			}else {
			//있으면 지금 파일로
				vo2.setFile_name(mr.getFilesystemName("file_name"));
			}
			int result = DAO.getUpdate(vo2);
			if(result>0) {
				//업데이트 성공 후 업데이트 이전 파일 삭제
				try {
					if(vo.getFile_name().equals(old_file_name)) {
						File file = new File(path+"/"+new String(old_file_name.getBytes("utf-8")));
						if(file.exists()) file.delete();
					}else {
						
					}
				} catch (Exception e) {
				}
				return "MyConteroller?cmd=onelist&idx="+vo.getIdx()+"&cPage="+cPage;
			}
		} catch (Exception e) {
		}
		return null;
	}

}
