package com.ict.db;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

public class DAO {
	private static SqlSession ss;
	private synchronized static SqlSession getSession(){
		if(ss == null) {
			ss = DBService.getFactory().openSession(false);
		}
		return ss;
	}
	public static int getCount(){
		int result = 0;
		result = getSession().selectOne("count");
		return result;
	}
	public static List<BVO> getList(int begin, int end){
		List<BVO> list = null;
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("begin", begin);
		map.put("end", end);
		list = getSession().selectList("list", list);
		return list;
	}
	
}
