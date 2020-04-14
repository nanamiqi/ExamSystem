package cn.henu.pojo;

import java.io.Serializable;

public class Answer implements Serializable{

	private static final long serialVersionUID = 1L;

	private int id;
	private String stu_id;
	private String exam_name;
	private String file_name;
	private String file_size;
	private String times;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFile_name() {
		return file_name;
	}
	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}
	public String getFile_size() {
		return file_size;
	}
	public void setFile_size(String file_size) {
		this.file_size = file_size;
	}
	public String getTimes() {
		return times;
	}
	public void setTimes(String times) {
		this.times = times;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	public String getStu_id() {
		return stu_id;
	}
	public void setStu_id(String stu_id) {
		this.stu_id = stu_id;
	}
	public String getExam_name() {
		return exam_name;
	}
	public void setExam_name(String exam_name) {
		this.exam_name = exam_name;
	}
	@Override
	public String toString() {
		return "Answer [id=" + id + ", stu_id=" + stu_id + ", exam_name=" + exam_name + ", file_name=" + file_name
				+ ", file_size=" + file_size + ", times=" + times + "]";
	}
}
