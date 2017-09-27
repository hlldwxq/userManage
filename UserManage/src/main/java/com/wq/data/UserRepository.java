package com.wq.data;
import java.util.List;

import com.wq.*;
public interface UserRepository {
	List<User> getAll();
	User findByName(String name);
	User findById(Integer id);
	List<User> findByIdAll(String id);
	List<User> findByNameAll(String name);
	void save(User u);
	boolean LoginRight(User u);
	boolean Registed(String name);
	void deleteById(Integer id);
}
