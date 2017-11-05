package com.wq.DAO;

import java.util.List;
import com.wq.Teacher;

public interface TeacherDAO {
	Teacher getByIdAndPassword(Teacher t);
	List<Teacher> getExpert();
	List<Teacher> getTeacherByCollege();
	List<Teacher> getAllTeacher();
}
