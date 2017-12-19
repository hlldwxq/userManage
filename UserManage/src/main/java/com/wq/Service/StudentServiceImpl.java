package com.wq.Service;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.wq.Student;
import com.wq.DAO.StudentDAO;

@Service
public class StudentServiceImpl implements StudentService{
	
	@Resource private StudentDAO StudentList;

	@Override
	public boolean CorrectLogin(Student Student) {
		return !(StudentList.getByIdAndPassword(Student)==null);
	}

	@Override
	public Student getById(String id) {
		return StudentList.getById(id);
	}

	@Override
	public void save(Student u) {
		StudentList.save(u);
	}
	
	@Override
	public boolean Registed(String name) {
		return !(StudentList.getByName(name)==null);
	}
	
	@Override
	public Student getByName(String name) {
		return StudentList.getByName(name);
	}
}
