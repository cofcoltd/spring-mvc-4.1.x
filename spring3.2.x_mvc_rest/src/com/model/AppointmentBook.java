package com.model;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;


public class AppointmentBook {

	private int id;
	
	
	private String name;
	private String time;
	private String content;
	
	public AppointmentBook(){
		
	}

	public AppointmentBook(int id, String name, String time, String content) {
		super();
		this.id = id;
		this.name = name;
		this.time = time;
		this.content = content;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	@NotEmpty(message="books name is not null")
	@Size(min=2,max=10 , message = "invalidate range")
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
	



}
