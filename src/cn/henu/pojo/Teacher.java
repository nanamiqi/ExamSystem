package cn.henu.pojo;

import java.io.Serializable;

public class Teacher implements Serializable {
	private static final long serialVersionUID = 1L;
	private String t_username;
	private String t_pwd;
	private String t_name;
	private int t_manager;
	public String getT_username() {
		return t_username;
	}
	public void setT_username(String t_username) {
		this.t_username = t_username;
	}
	public String getT_pwd() {
		return t_pwd;
	}
	public void setT_pwd(String t_pwd) {
		this.t_pwd = t_pwd;
	}
	public String getT_name() {
		return t_name;
	}
	public void setT_name(String t_name) {
		this.t_name = t_name;
	}
	public int getT_manager() {
		return t_manager;
	}
	public void setT_manager(int t_manager) {
		this.t_manager = t_manager;
	}
	@Override
	public String toString() {
		return "Teacher [t_username=" + t_username + ", t_pwd=" + t_pwd + ", t_name=" + t_name + ", t_manager="
				+ t_manager + "]";
	}
}
