package cn.henu.service;

import java.util.List;

import cn.henu.pojo.Teacher;

public interface TeacherService {

	public Teacher login(Teacher teacher);

	public int addTeacher(Teacher teacher);

	public int delTeacher(String name);

	public int updTeacher(Teacher teacher);

	public List<Teacher> getAllTeacher();
	
	public int getManagerCount();

	public int updPwd(Teacher teacher);



}
