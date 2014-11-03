package com.mvc.web.controller.mvc_17_3_2;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/cpmt")
public class CPMTController {
	
	@RequestMapping("/")
	public String start() {
		return "17.3.2/cpmt/start";
	}
	
	@RequestMapping(
			value="/process" , 
			method=RequestMethod.POST , 
			headers="Content-Type=application/x-www-form-urlencoded")
	public String processForm(HttpServletRequest request) {
		
		System.out.println("ContentType : "+request.getContentType());
		return null;
	}
	

	@RequestMapping(
			value="/process" , 
			method=RequestMethod.POST , 
			headers="Content-Type=multipart/form-data")
	public String processForm2(HttpServletRequest request) {
		
		System.out.println("ContentType : "+request.getContentType());
		return null;
	}
	
	@RequestMapping(
			value="/process" , 
			method=RequestMethod.POST , 
			consumes={"application/json"}
			)
	public void processForm3(HttpServletRequest request , HttpServletResponse response) {
		
		System.out.println("ContentType : "+request.getContentType());
		
		try {
			response.getWriter().print("thanks for your json . ");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//	//@RequestMapping(produces={"text/html", "application/json"}) £º
	@RequestMapping(
			value="/process" , 
			method=RequestMethod.POST , 
			produces={"application/json"}
			)
	public void processForm4(HttpServletRequest request , HttpServletResponse response) {
		
		System.out.println("Accept : "+request.getContentType());
		
		
		String json = "{'name' : 'admin' , 'pwd' : 'admin123'}"; 
		
		try {
			response.getWriter().print(json);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
