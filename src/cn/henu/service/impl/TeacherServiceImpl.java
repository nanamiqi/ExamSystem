package cn.henu.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.henu.mapper.TeacherMapper;
import cn.henu.pojo.Teacher;
import cn.henu.service.TeacherService;

@Service
public class TeacherServiceImpl implements TeacherService{
	@Resource
	private TeacherMapper teacherMapper;
	
	@Override
	public Teacher login(Teacher teacher) {
		return teacherMapper.selByTeacher(teacher);
	}
	@Override
	public int getManagerCount() {
		System.out.println("123++"+teacherMapper.selByManager().size());
		return teacherMapper.selByManager().size();
	}
	@Override
	public List<Teacher> getAllTeacher() {
		return (List<Teacher>) teacherMapper.selAllTeacher();
	}
	@Override
	public int addTeacher(Teacher teacher) {
		return teacherMapper.insTeacher(teacher);
	}
	@Override
	public int updPwd(Teacher teacher) {
		return teacherMapper.updPwd(teacher);
	}
	@Override
	public int delTeacher(String name) {
		return teacherMapper.delTeacher(name);
	}
	@Override
	public int updTeacher(Teacher teacher) {
		return teacherMapper.updTeacher(teacher);
	}
	
}
