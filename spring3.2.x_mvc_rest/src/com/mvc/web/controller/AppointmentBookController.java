package com.mvc.web.controller;

import java.util.HashMap;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
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
		return "addAppointmentBook";
	}
	
	@RequestMapping(value="/add" , method=RequestMethod.POST)
	public String addBooks(@Valid AppointmentBook appointmentBook , BindingResult result) {
		if(result.hasErrors()) {
			System.out.println("ÓÐ´í");
			return "appointmentBook/add";
		}
		System.out.println("Ã»´í");
		books.put("nickname", appointmentBook);
		return "redirect:/appointmentBook/appointmentBooks";
	}
	
	@RequestMapping(value="/{bookname}" , method=RequestMethod.GET)
	public String getBook(@PathVariable String bookname , Model model) {
		model.addAttribute(new AppointmentBook());
		model.addAttribute(books.get(bookname));
		model.addAttribute("bookname", bookname);
		return "appointmentBook";
	}
	
	@RequestMapping(value="/{bookname}/update" , method=RequestMethod.POST)
	public String updateBook(@PathVariable String bookname ,@Valid AppointmentBook appointmentBook  , Model model ) {
	
		books.put( bookname, appointmentBook);
		return "redirect:/appointmentBook/appointmentBooks";
	}
	
	@RequestMapping(value="/{bookname}/delete" , method=RequestMethod.GET)
	public String removeBook(@PathVariable String bookname ) {
		books.remove(bookname);
		return "redirect:/appointmentBook/appointmentBooks";
	}
	
	

}
