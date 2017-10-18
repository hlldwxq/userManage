package com.wq.Service;

import java.util.List;

import com.wq.Teacher;

public interface TeacherService {
	Teacher CorrectLogin(Teacher teacher);
	public List<Teacher> getExpert();
	public List<Teacher> getAllTeacher();
}
