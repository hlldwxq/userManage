package com.znbq.test;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.znbq.index.entity.LoginForm;


@Service
@Transactional
public class testService {
	
	@Autowired public testDao dao;
	
	@Test
	public void validLogin(LoginForm loginForm)
	{
		//校验密码
		System.out.println(dao.getPasswordByName(loginForm.getUsername()).getPassword());
	}
}
