package com.ict.model;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.ict.db.DAO;
import com.ict.db.VO;

public class Del_okCommand implements Command{
@Override
public String exec(HttpServletRequest request, HttpServletResponse response) {
	VO vo = (VO)request.getSession().getAttribute("vo");
	String idx = request.getParameter("idx");
	int result = DAO.getDelete(vo);
	if(result>0){
		String path = request.getServletContext().getRealPath("/upload");
		String f_name = vo.getF_name();
		try {
				File file = new File(path+"/"+new String(f_name.getBytes("utf-8")));
			if(file.exists()) {
				file.delete(); 
			}
		} catch (Exception e) {
		}
		return "view/list.jsp";
		
	}
	return null;
}
}
