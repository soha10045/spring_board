package com.inni.app.service;

import java.util.List;

import com.inni.app.vo.MemberVO;

public interface MemberService {

	List<MemberVO> selectAll();
	MemberVO selectDetail(MemberVO paramVO);
	int insert(MemberVO paramVO);
	int update(MemberVO paramVO);
	int delete(MemberVO paramVO);
}
