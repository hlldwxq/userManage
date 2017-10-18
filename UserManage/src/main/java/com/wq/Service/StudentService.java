package com.wq.Service;

import com.wq.Student;
public interface StudentService {

	boolean CorrectLogin(Student Student);
	boolean Registed(String name);
	Student getById(Integer id);
	void save(Student u);
	Student getByName(String name);
//	List<Student> listAllStudent();
//	List<Student> listStudentBySearch(String keyWord);
//	void deleteById(Integer id);
}
