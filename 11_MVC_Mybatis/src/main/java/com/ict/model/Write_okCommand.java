package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.DAO;
import com.ict.db.VO;

public class Write_okCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		VO vo = new VO();
		vo.setName(request.getParameter("name"));
		vo.setSubject(request.getParameter("subject"));
		vo.setMain(request.getParameter("main"));
		vo.setEmail(request.getParameter("email"));
		vo.setPw(request.getParameter("pw"));
			
		int result = DAO.getInsert(vo);
		if(result>0) {
			return "MyController?cmd=list";
		}
		return null;
	}

}
