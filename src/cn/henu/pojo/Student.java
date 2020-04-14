package cn.henu.pojo;

import java.io.Serializable;

public class Student implements Serializable{
	private static final long serialVersionUID = 1L;
	private String stu_id;
	private String stu_name;
	private String stu_class;
	private String stu_exam;
	private String stu_ip;
	private int stu_submit;
	
	public String getStu_id() {
		return stu_id;
	}
	public void setStu_id(String stu_id) {
		this.stu_id = stu_id;
	}
	public String getStu_name() {
		return stu_name;
	}
	public void setStu_name(String stu_name) {
		this.stu_name = stu_name;
	}
	public String getStu_class() {
		return stu_class;
	}
	public void setStu_class(String stu_class) {
		this.stu_class = stu_class;
	}
	public String getStu_exam() {
		return stu_exam;
	}
	public void setStu_exam(String stu_exam) {
		this.stu_exam = stu_exam;
	}
	public String getStu_ip() {
		return stu_ip;
	}
	public void setStu_ip(String stu_ip) {
		this.stu_ip = stu_ip;
	}
	public int getStu_submit() {
		return stu_submit;
	}
	public void setStu_submit(int stu_submit) {
		this.stu_submit = stu_submit;
	}
	@Override
	public String toString() {
		return "Student [stu_id=" + stu_id + ", stu_name=" + stu_name + ", stu_class=" + stu_class + ", stu_exam="
				+ stu_exam + ", stu_ip=" + stu_ip + ", stu_submit=" + stu_submit + "]";
	}
	
}
