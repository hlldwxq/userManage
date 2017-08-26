package com.wq.data;
import java.util.List;

import com.wq.*;
public interface UserRepository {
	List<User> findAll();
	User findByName(String name);
	void save(User u);
	boolean LoginRight(User u);
	boolean Registed(String name);
	void Delete(long id);
}
