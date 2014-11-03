package com.model;

import java.math.BigDecimal;
import java.util.Date;

public class Customer {
	
	private int id;
	private String name;
	private BigDecimal salary;
	private Date birth;
	private boolean ismarry;
	private String skills;
	private String[] address;

	public String[] getAddress() {
		return address;
	}
	public void setAddress(String[] address) {
		this.address = address;
	}
	public String getSkills() {
		return skills;
	}
	public void setSkills(String skills) {
		this.skills = skills;
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
	public BigDecimal getSalary() {
		return salary;
	}
	public void setSalary(BigDecimal salary) {
		this.salary = salary;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	public boolean isIsmarry() {
		return ismarry;
	}
	public void setIsmarry(boolean ismarry) {
		this.ismarry = ismarry;
	}
	
	
	

}
