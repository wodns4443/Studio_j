package com.studioj.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.studioj.dto.GalleryBoardDTO;
import com.studioj.dto.GalleryDTO;

@Repository
public class GalleryDAO {
	private static final String gnamespace = "com.studioj.mybatis.myMapper";
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<GalleryDTO> imgReadAll(){
		return sqlSession.selectList(gnamespace+".imgReadAll");
	}
	public GalleryDTO imgRead(int bno) {
		return sqlSession.selectOne(gnamespace+".imgRead",bno);
	}
	public void imgModify(GalleryDTO dto) {
		sqlSession.update(gnamespace+".imgModify",dto);
	}
	public void imgDel(int bno) {
		sqlSession.delete(gnamespace+".imgDel",bno);
	}
	////////////
	public int getMaxBno() {
		int su =0;
		if(sqlSession.selectOne(gnamespace+".getMaxBno")!=null)
			su=sqlSession.selectOne(gnamespace+".getMaxBno");
		
		return su;
	}
	
	public void imgWrite(GalleryBoardDTO bdto) {
		sqlSession.insert(gnamespace+".imgWrite",bdto);
	}
	//upLOad
	public void insertFile(Map<String, Object> map) {
		sqlSession.insert(gnamespace+".insertFile",map);
	}
	
	
	
}
