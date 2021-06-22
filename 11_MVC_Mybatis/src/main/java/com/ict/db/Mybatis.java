package com.ict.db;

public class Mybatis {
	/*
		개발자가 지정한 SQL, 저장 프로시저 그리고 몇가지 고급 매핑을 지원하는 퍼시스턴스 프레임워크이다.
		자바 SQL 프레임워크이다.
		MyBatis 다운 후 압축 해제한 후 WEB-INF-lib안에 라이브러리를 넣어준다.
		
		5개의 파일이 필요하다. : DAO, VO, DBService, config.xml, mapper.xml
		-- DAO : DB에 접근해서 검색, 삽입, 삭제, 수정을 할수 있도록 지원하는 객체
		-- VO  : DB정보를 담는 객체
		-- DBService : config.xml을 읽어서 MyBatis가 DB에 접근하고 실행할 수 있도록 도와주는 클래스
		-- config.xml : DB에 접근할 수 있는 환경설정 mapper.xml의 위치 지정해주는 환경 설정 파일
		-- mapper.xml : 실제 DB처리후 결과를 얻어내는 역할을 하는 xml 파일
						DAO에서 mapper.xml을 호출해서 사용한다.
		-- mapper.xml 의 내용
		xml은 태그로 구성되어 있다.
		HTML의 태그를 자기만의 고유태그로 만들어서 사용한다.
		자기만에 고유태 그에게 의미를 부여하기 위해서는 DTD라는 문서를 만들어야 하는데
		MyBatis에 만든 DTD문서를 활용해서 고유태그를 사용한다.
		고유태그에는 <select>, <update>, <delete>, <insert> 태그 등이 있다.
		
		id : DAO에서 mapper를 호출할 때 사용하는 이름.
		parameterType : 파라미터 타입을 작성하면 됨.
		resultType : select문의 결과 타입이다. 90%이상이 VO타입이다. 
		<select id = "" resultType="" parameterType="">
			sql구문 작성(PreparedStatment에서 사용하는 ?대신 #{}를 사용하면 된다.)
		</select>
		insert, update, delete태그는 id, parameterType만 존재, 결과가 숫자이기 때문에 resultType은 없다.
		<insert id = "" parameterType="">
			sql구문 작성 (?대신 #{}를 사용하면 된다.)
		</insert>
		<update id = "" parameterType="">
			sql구문 작성 (?대신 #{}를 사용하면 된다.)
		</update>
		<delete id = "" parameterType="">
			sql구문 작성 (?대신 #{}를 사용하면 된다.)
		</delete>
		
	*/	
}
