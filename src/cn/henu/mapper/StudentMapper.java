package cn.henu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import cn.henu.pojo.Answer;
import cn.henu.pojo.Student;

public interface StudentMapper {
	@Select("select * from student where stu_exam=#{stu_exam} and stu_name=#{stu_name} and stu_id=#{stu_id}")
	Student selByStudent(Student student);

	@Select("select * from student where stu_exam=#{param1}")
	List<Student> selAllStudents(String e_name);

	@Insert("insert into student(stu_id,stu_name,stu_class,stu_exam) values(#{stu_id},#{stu_name},#{stu_class},#{stu_exam})")
	int insStudent(Student student);
	
	@Select("select * from student where stu_exam=#{param2} and stu_id like CONCAT('%',#{param1,jdbcType=VARCHAR},'%') ")
	List<Student> selStudentById(String stu_id, String e_name);

	@Update("update student set stu_ip=null where stu_id=#{param1}")
	int updUnBind(String stu_id);

	@Update("update student set stu_ip=#{stu_ip} where stu_id=#{stu_id}")
	int updStuIp(Student stu);

	@Select("select * from answer where stu_id=#{param1} and exam_name=#{param2}")
	List<Answer> selAllInfo(String stu_id, String exam_name);
}
