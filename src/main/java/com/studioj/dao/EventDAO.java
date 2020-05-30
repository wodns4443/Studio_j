package com.studioj.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.studioj.dto.EventDTO;

@Repository
public class EventDAO {
	private static final String enamespace="com.studioj.mybatis.myMapper";
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<EventDTO> event_list(int page){
		return sqlSession.selectList(enamespace+".eventList",page);
	}
	
	public int getTotalPage() {
		return sqlSession.selectOne(enamespace+".eGetTotalPage");
	}
	
	public void uphit(int num) {
		sqlSession.update(enamespace+".eUphit",num);
	}
	public EventDTO eContentView(int num) {
		return sqlSession.selectOne(enamespace+".eContentView",num);
		
	}
	
	
	
	
}
