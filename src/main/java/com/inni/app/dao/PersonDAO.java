package com.inni.app.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.inni.app.vo.Person;

@Repository
public class PersonDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public List<Person> selectAll() {
		return sqlSessionTemplate.selectList("PersonMapper.selectAll");
	}
	
}
