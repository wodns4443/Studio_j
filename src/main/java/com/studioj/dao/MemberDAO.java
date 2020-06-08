package com.studioj.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.studioj.dto.MemberDTO;

@Component
public class MemberDAO {
	private static final String namespace = "com.studioj.mybatis.myMapper";
	@Autowired
	private SqlSession sqlSession;
	
	public int register(MemberDTO dto) {
		int result = sqlSession.insert(namespace + ".register",dto);
		return result;
	}
	public MemberDTO userCheck(String id) {
		return sqlSession.selectOne(namespace + ".userCheck",id);
	}
	public MemberDTO checkId(String tel) {
		return sqlSession.selectOne(namespace + ".checkId",tel);
	}
	public MemberDTO checkPw(String id) {
		return sqlSession.selectOne(namespace + ".checkPw",id);
	}
	public MemberDTO memberInfo(String id) {
		return sqlSession.selectOne(namespace + ".memberInfo",id);
	}
	public int upData(MemberDTO dto) {
		return sqlSession.update(namespace + ".upData",dto);
	}
	public int delete(String id) {
		return sqlSession.delete(namespace + ".delete",id);
	}
	
}
