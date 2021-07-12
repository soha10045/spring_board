package com.inni.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.inni.app.dao.MemberDAO;
import com.inni.app.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDAO memberDAO;

	@Override
	public List<MemberVO> selectAll() {
		// TODO Auto-generated method stub
		return memberDAO.selectAll();
	}

	@Override
	public MemberVO selectDetail(MemberVO paramVO) {
		// TODO Auto-generated method stub
		return memberDAO.selectDetail(paramVO);
	}

	@Override
	public int insert(MemberVO paramVO) {
		// TODO Auto-generated method stub
		return memberDAO.insert(paramVO);
	}

	@Override
	public int update(MemberVO paramVO) {
		// TODO Auto-generated method stub
		return memberDAO.update(paramVO);
	}

	@Override
	public int delete(MemberVO paramVO) {
		// TODO Auto-generated method stub
		return memberDAO.delete(paramVO);
	}
	
	
	
}
