package com.wq.Service;

import com.wq.Student;
public interface StudentService {

	Student CorrectLogin(Student Student);
	boolean Registed(String name);
	Student getById(String id);
	void save(Student u);
	Student getByName(String name);

}
