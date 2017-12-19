package com.wq.DAO;

import com.wq.*;
public interface StudentDAO {
	Student getByIdAndPassword(Student u);
	Student getByName(String name);
	Student getById(String id);

	void save(Student u);
	void deleteById(String id);
}
