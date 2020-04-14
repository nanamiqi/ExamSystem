package cn.henu.pojo;

import java.io.Serializable;

public class Exam implements Serializable{
	private static final long serialVersionUID = 1L;
	private String e_name;
	private String e_starttime;
	private String e_teacher;
	private int e_autostart;
	private int e_isend;
	private int e_file;
	private int e_clear;
	private int e_isstart;
	private String e_examination;
	public String getE_name() {
		return e_name;
	}
	public void setE_name(String e_name) {
		this.e_name = e_name;
	}
	public String getE_starttime() {
		return e_starttime;
	}
	public void setE_starttime(String e_starttime) {
		this.e_starttime = e_starttime;
	}
	public String getE_teacher() {
		return e_teacher;
	}
	public void setE_teacher(String e_teacher) {
		this.e_teacher = e_teacher;
	}
	public int getE_autostart() {
		return e_autostart;
	}
	public void setE_autostart(int e_autostart) {
		this.e_autostart = e_autostart;
	}
	public int getE_isend() {
		return e_isend;
	}
	public void setE_isend(int e_isend) {
		this.e_isend = e_isend;
	}
	public int getE_file() {
		return e_file;
	}
	public void setE_file(int e_file) {
		this.e_file = e_file;
	}
	public int getE_clear() {
		return e_clear;
	}
	public void setE_clear(int e_clear) {
		this.e_clear = e_clear;
	}
	public int getE_isstart() {
		return e_isstart;
	}
	public void setE_isstart(int e_isstart) {
		this.e_isstart = e_isstart;
	}
	public String getE_examination() {
		return e_examination;
	}
	public void setE_examination(String e_examination) {
		this.e_examination = e_examination;
	}
	@Override
	public String toString() {
		return "Exam [e_name=" + e_name + ", e_starttime=" + e_starttime + ", e_teacher=" + e_teacher + ", e_autostart="
				+ e_autostart + ", e_isend=" + e_isend + ", e_file=" + e_file + ", e_clear=" + e_clear + ", e_isstart="
				+ e_isstart + ", e_examination=" + e_examination + "]";
	}
	
}
