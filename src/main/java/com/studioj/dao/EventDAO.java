package com.studioj.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.studioj.dto.EventDTO;
import com.studioj.dto.InquireDTO;

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
	public void modify(EventDTO dto) {
		sqlSession.update(enamespace+".eventModify",dto);
	}
	public void del(int num) {
		sqlSession.delete(enamespace+".eventDelete",num);
	}
	public int getMaxNum() {
		int su=0;
		if(sqlSession.selectOne(enamespace+".eventGetMaxNum")!=null) {
			su=sqlSession.selectOne(enamespace+".eventGetMaxNum");
		}
		return su;
	}
	public void write_save(EventDTO dto) {
		sqlSession.insert(enamespace+".eWriteSave",dto);
	}
	public List<EventDTO> replyList(int num){
		return sqlSession.selectList(enamespace+".eReplyList",num);
	}
	
	public void replyShap(EventDTO dto) {
		sqlSession.update(enamespace+".eReplyShap",dto);
	}
	public void reply(EventDTO dto) {
		sqlSession.insert(enamespace+".eReply",dto);
	}
	public void replyup(int num) {
		sqlSession.update(enamespace+".eReplyup",num);
	}
	
	public void replyDel(EventDTO dto) {
		sqlSession.delete(enamespace+".eReplyDel",dto);
	}
	
	
}
