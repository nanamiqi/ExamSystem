package cn.henu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import cn.henu.pojo.Teacher;

public interface TeacherMapper {
	@Select("select * from teacher where t_username=#{t_username} and t_pwd=#{t_pwd} and t_manager=#{t_manager}")
	Teacher selByTeacher(Teacher teacher);
	
	@Select("select * from teacher where t_manager=1")
	List<Teacher> selByManager();
	
	@Select("select * from teacher")
	List<Teacher> selAllTeacher();

	@Insert("insert into teacher value(#{t_username},#{t_pwd},#{t_name},#{t_manager})")
	int insTeacher(Teacher teacher);

	@Update("update teacher set t_pwd=#{t_pwd} where t_username=#{t_username}")
	int updPwd(Teacher teacher);

	@Delete("delete from teacher where t_username=#{t_name}")
	int delTeacher(String t_name);

	@Update("update teacher set t_name=#{t_name},t_manager=#{t_manager} where t_username=#{t_username}")
	int updTeacher(Teacher teacher);
	
}
