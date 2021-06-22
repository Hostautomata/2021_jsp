package com.ict.model;

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
		return "MyController?cmd=list";
		}
	return null;
}
}
