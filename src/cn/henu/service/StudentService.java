package cn.henu.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.multipart.MultipartFile;

import cn.henu.pojo.Answer;
import cn.henu.pojo.Student;

public interface StudentService {

	public Student login(Student student);

	public List<Student> selAllStudents(String e_name);

	public int insStudent(Student student);

	public List<Student> selStudentById(String stu_id, String e_name);

	public int saveExcel(MultipartFile file,String e_name, HttpServletRequest req, HttpSession session);

	public int updUnBind(String stu_id);

	public int updStuIp(Student stu);

	public List<Answer> selAllInfo(String stu_id, String exam_name);

	public List<Student> selSubmitStudent(String exam_name);
}
