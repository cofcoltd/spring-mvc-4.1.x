package com.mvc.web.controller.mvc_17_3_2;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/ant")
public class AntController {
	
	@RequestMapping(value="/")
	public String start(){
		return "17.3.2/ant/start";
	}

	@RequestMapping("/customers/**")
	public void handler01(HttpServletRequest request ) {
		System.out.println("handler 01");
		System.out.println("uri : "+request.getRequestURI());
	}
	
	
	@RequestMapping("/customer?")
	public void handler02(HttpServletRequest request ) {
		System.out.println("handler 02");
		System.out.println("uri : "+request.getRequestURI());
	}
	
	@RequestMapping("/customer/**/{id}")
	public void handler03(@PathVariable("id") int id , HttpServletRequest request ) {
		System.out.println("handler 03");
		System.out.println("uri : "+request.getRequestURI());
		System.out.println("pathVariable id : "+ id);
	}
	
}
