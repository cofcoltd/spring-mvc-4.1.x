package com.servlet.support;

import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.AsyncContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Part;

public class AsyncFileProcess implements Runnable{
	
	private AsyncContext async;

	
	public AsyncFileProcess(AsyncContext async) {
		this.async = async;
	
	}
	
	@Override
	public void run() {
		
		
		try {
	
			Thread.sleep(3000);
			
			PrintWriter out = async.getResponse().getWriter();
			
			Part part =((HttpServletRequest)async.getRequest()).getPart("img");
			
			part.write(FileSupport.getFileName(part));
			System.out.println("文件写入成功 "+ new Date());
			
			async.complete();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	

}
