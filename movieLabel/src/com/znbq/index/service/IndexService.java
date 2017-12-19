package com.znbq.index.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.znbq.index.dao.*;
import com.znbq.index.entity.*;

@Service
@Transactional
public class IndexService {
	
	@Autowired public UserInfoDAO userInfoDao;
	
	public boolean validLogin(LoginForm loginForm)
	{
		LoginForm loginCheck=userInfoDao.getPasswordByName(loginForm.getUsername());
		if(loginCheck==null)System.out.println("none");
		else System.out.println(loginForm.getPassword().equals(loginCheck.getPassword()));
		
		//校验密码
		if(loginCheck!=null&&loginForm.getPassword().equals(loginCheck.getPassword()))
		{
			System.out.println("good");
			return true;
		}
		else
		{
			System.out.println("bad");
			return false;
		}
		//System.out.println(userInfoDao.getPasswordByName("znbq").getPassword());
		//return false;
	}
}
