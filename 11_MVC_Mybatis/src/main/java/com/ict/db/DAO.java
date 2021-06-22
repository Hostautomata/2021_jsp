package com.ict.db;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

public class DAO {
	//MyBatis에서는 SqlSession클래스를 이용해서 
	//mapper.xml의 태그들을 이용해 SQL을 사용한다.
	private static SqlSession ss;
	private synchronized static SqlSession getSession() {
		if(ss==null) {
			//ss=DBService.getFactory().openSession();	//select문
			//ss=DBService.getFactory().openSession(true);//AutoCommit(); 트렌젝션 처리를 못함
			ss=DBService.getFactory().openSession(false);//수동Commit();
		}
		return ss;
	}
	//MyBatis select문은 4가지로 구분된다.
	//결과가 여러가지일 경우 List<VO>		> selectList()
	//결과가 한개일 경우 VO				> selectOne()
	//파라미터 값이 없을 경우
	//파라미터 값이 있을 경우(파라미터가 두개 이상이면 무조건 VO아니면 Map사용해야 함.)
	public static VO getDetail(String idx) {
		VO vo = null;
		vo = getSession().selectOne("detail", idx);
		return vo;
		
	}
	
	public static List<VO> getSelectAll() {
		List<VO> list = new ArrayList<VO>();
		//getSession().sql명령과 같은 메서드 찾기
		//list = getSession().selectList("mapper의 id");//파라미터가 없는 메서드
		//list = getSession().selectList("mapper의 id",파라미터);//파라미터가 없는 메서드
		list = getSession().selectList("list");
		return list;
	}
	
	
	// insert update delete의 결과는 int
	//getSession.insert("mapper의 id,파라미터")
	//commit잊지말자.
	public static int getInsert(VO vo) {
		int result = 0;
		result = getSession().insert("insert",vo);
		//openSession(false)를 했기 때문에 commit을 해야한다.
		ss.commit();
		return result;
	}
	//그림파일은 어떻게 지울것인가?
	public static int getDelete(VO vo) {
			int result = 0;
			result = getSession().delete("delete", vo);
			ss.commit();
			return result;
	}

	public static int getUpdate(VO vo) {
			int result = 0;
			result = getSession().update("update",vo);
			ss.commit();
			return result;
	}
}
