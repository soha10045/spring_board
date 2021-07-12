package com.inni.app.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.inni.app.vo.MemberVO;

@Repository
public class MemberDAO {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public List<MemberVO> selectAll() {
		return sqlSessionTemplate.selectList("MemberMapper.selectAll");
	}
	public MemberVO selectDetail(MemberVO paramVO) {
		return sqlSessionTemplate.selectOne("MemberMapper.selectDetail",paramVO);
	}
	public int insert(MemberVO paramVO) {
		return sqlSessionTemplate.insert("MemberMapper.insert",paramVO);
	}
	public int update(MemberVO paramVO) {
		return sqlSessionTemplate.update("MemberMapper.update",paramVO);
	}
	public int delete(MemberVO paramVO) {
		return sqlSessionTemplate.insert("MemberMapper.delete",paramVO);
	}
	
}
