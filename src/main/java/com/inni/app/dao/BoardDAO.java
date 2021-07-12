package com.inni.app.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.inni.app.vo.BoardVO;

@Repository
public class BoardDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	  
	public List<BoardVO> selectAll(){
		return sqlSessionTemplate.selectList("BoardMapper.selectAll");
	}
	public BoardVO  selectDetail(BoardVO paramVO) {
		return sqlSessionTemplate.selectOne("BoardMapper.selectDetail", paramVO);
	}

	public int insert(BoardVO paramVO) {
		return sqlSessionTemplate.insert("BoardMapper.insert", paramVO);
	}
	
	public int update(BoardVO paramVO) {
		return sqlSessionTemplate.update("BoardMapper.update", paramVO);
	}
	
	public int delete(BoardVO paramVO) {
		return sqlSessionTemplate.delete("BoardMapper.delete", paramVO);
	}
}
