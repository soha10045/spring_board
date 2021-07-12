package com.inni.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.inni.app.dao.BoardDAO;
import com.inni.app.vo.BoardVO;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardDAO boardDAO;

	@Override
	public List<BoardVO> selectAll() {
		// TODO Auto-generated method stub
		return boardDAO.selectAll();
	}

	@Override
	public BoardVO selectDetail(BoardVO paramVO) {
		// TODO Auto-generated method stub
		return boardDAO.selectDetail(paramVO);
	}

	@Override
	public int insert(BoardVO paramVO) {
		// TODO Auto-generated method stub
		return boardDAO.insert(paramVO);
	}

	@Override
	public int update(BoardVO paramVO) {
		// TODO Auto-generated method stub
		return boardDAO.update(paramVO);
	}

	@Override
	public int delete(BoardVO paramVO) {
		// TODO Auto-generated method stub
		return boardDAO.delete(paramVO);
	}
}
