package com.wq.DAO;

import com.wq.*;
public interface StudentDAO {
//	List<Student> listAllStudent();
//	List<Student> listAllStudentById(String id);
//	List<Student> listAllStudentByName(String name);
	Student getByNameAndPassword(Student u);
	Student getByName(String name);
	Student getById(Integer id);
	void save(Student u);
	void deleteById(Integer id);
}
