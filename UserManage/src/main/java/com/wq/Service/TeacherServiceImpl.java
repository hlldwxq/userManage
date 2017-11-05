package com.wq.Service;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.wq.Teacher;
import com.wq.DAO.TeacherDAO;

@Service
public class TeacherServiceImpl implements TeacherService{

	@Resource private TeacherDAO teacherList;
	
	@Override
	public Teacher CorrectLogin(Teacher teacher) {
		return teacherList.getByIdAndPassword(teacher);
	}

	@Override
	public List<Teacher> getExpert() {
		return teacherList.getExpert();
	}

	@Override
	public List<Teacher> getAllTeacher() {
		return teacherList.getAllTeacher();
	}

}
