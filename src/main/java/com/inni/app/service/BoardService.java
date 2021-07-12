package com.inni.app.service;

import java.util.List;


import com.inni.app.vo.BoardVO;

public interface BoardService {

	List<BoardVO>selectAll();
	BoardVO selectDetail(BoardVO paramVO);
	int insert(BoardVO paramVO);
	int update(BoardVO paramVO);
	int delete(BoardVO paramVO);
}
