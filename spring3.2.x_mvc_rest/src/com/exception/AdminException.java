package com.exception;

public class AdminException extends RuntimeException {

	private static final long serialVersionUID = 1532736434281125581L;

	public AdminException() {
		super();
	}
	
	public AdminException(String message) {
		super(message);
	}

}
