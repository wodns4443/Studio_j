package com.studioj.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.studioj.dto.InquireDTO;

@Repository
public class InquireDAO {
	private static final String inamespace ="com.studioj.mybatis.myMapper";
	
	@Autowired
	private SqlSession sqlSession;
		
	public List<InquireDTO> inquire_list(int page){
		return sqlSession.selectList(inamespace+".boardlist",page);
	}
	public int getMaxNum() {
		int su=0;
		if(sqlSession.selectOne(inamespace+".getMaxNum")!=null) {
			su=sqlSession.selectOne(inamespace+".getMaxNum");
		}
		return su;
	}
	
	public void write_save(InquireDTO dto) {
		sqlSession.insert(inamespace+".writeSave",dto);
		
	}
	
	public int getTotalPage() {
		return sqlSession.selectOne(inamespace+".getTotalPage");
	}
	
	public InquireDTO contentView(int num) {
		return sqlSession.selectOne(inamespace+".contentView",num);
	}
	
	public void uphit(int num) {
		sqlSession.update(inamespace+".uphit",num);
	}
	public List<InquireDTO> replyList(int num){
		return sqlSession.selectList(inamespace+".replyList",num);
	}
	public void replyShap(InquireDTO dto) {
		sqlSession.update(inamespace+".replyShap",dto);
	}
	public void reply(InquireDTO dto) {
		sqlSession.insert(inamespace+".reply",dto);
	}
	public void replyup(int num) {
		sqlSession.update(inamespace+".replyup",num);
	}
	
	public List<InquireDTO> searchTitle(String str){
		return sqlSession.selectList(inamespace+".searchTitle",str);
	}
	public List<InquireDTO> searchContent(String str){
		return sqlSession.selectList(inamespace+".searchContent",str);
	}
	public List<InquireDTO> searchName(String str){
		return sqlSession.selectList(inamespace+".searchName",str);
	}
	
	public void modify(InquireDTO dto) {
		sqlSession.update(inamespace+".inquireModify",dto);
	}
	public void del(int num) {
		sqlSession.delete(inamespace+".inquireDelete",num);
	}
	
	
	
	
	
}
