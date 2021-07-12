package com.inni.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.inni.app.dao.PersonDAO;
import com.inni.app.vo.Person;

@Service
public class PersonServiceImpl implements PersonService {
	
	@Autowired
	private PersonDAO personDAO;

	@Override
	public List<Person> selectAll() {
		return personDAO.selectAll();
	}

}
