package com.mvc.web.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.model.AppointmentBook;

@Controller
@RequestMapping("/appointmentBook")
public class AppointmentBookController {
	
	private static Map<String , AppointmentBook> books = new HashMap<String , AppointmentBook>();
	
	static {
		books.put("spring-core", new AppointmentBook(1,"core api" , "2014-01-01" , "bean factory / context"));
		books.put("spring-aop", new AppointmentBook(2,"aop" ,"2014-01-02" , "AspectJ -- Aop Propergation"));
		books.put("spring-mvc", new AppointmentBook(3,"mvc" , "2014-01-03" , "spring mvc ............"));
	}
	
	@RequestMapping(value="/appointmentBooks")
	public String books(Model model) {
		model.addAttribute("books",books);
		return "appointmentBooks";
	}
	
	@RequestMapping(value="/add" , method=RequestMethod.GET)
	public String addBooks(Model model) {
		model.addAttribute(new AppointmentBook());
		System.out.println("add1");
		return "addAppointmentBook";
	}
	
	@RequestMapping(value="/add" , method=RequestMethod.POST)
	public String addBooks( AppointmentBook appointmentBook ) {
		books.put("nickname", appointmentBook);
		System.out.println("add2");
		return "redirect:/appointmentBook/appointmentBooks";
	}
	
	

}
