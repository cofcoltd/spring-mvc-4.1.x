package com.model;

import org.hibernate.validator.constraints.NotEmpty;

public class Admin {

	private int id;
	private String name;
	private String pwd;

	public Admin(String name, String pwd) {
		super();
		this.name = name;
		this.pwd = pwd;
	}

	public Admin() {
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}



}
