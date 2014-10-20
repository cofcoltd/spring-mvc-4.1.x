package com.mvc.web.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.exception.AdminException;
import com.model.Admin;

@Controller
@RequestMapping("/admin")
@SessionAttributes(value={"admin"} , types={Admin.class})
public class AdminController {
	Admin admin ;
	private static List<Admin> admins = new ArrayList<Admin>();
	
	static {
		
		Admin tom = new Admin("tom" , "123");
		Admin jack = new Admin("jack" , "123");
		admins.add(tom);
		admins.add(jack);
	}
	
	@ModelAttribute("admin")
	public Admin initAdmin() {
		admin = new Admin();
		return admin;
	}
	
	@RequestMapping(value={"/"} , method=RequestMethod.GET)
	public String login(Model model) {
		model.addAttribute(admin);
		System.out.println("µÇÂ¼Ò³Ãæ");
		return "admin/login";
	}
	

	@RequestMapping(value="/login" , method=RequestMethod.GET)
	public String login(Admin admin , Model model) {
		System.out.println("´¦ÀíµÇÂ¼");
		if(admins.contains(admin)) {
			model.addAttribute("admin" , admin );
			return "redirect:/index.jsp";
		} else {
			throw new AdminException("invidate admin message . ");
		}
		
	}
	
	@ExceptionHandler(value=(AdminException.class))
	public String handlerException(Exception ex , Model model) {
		model.addAttribute("error", ex.getMessage());
		return "admin/error";
	}
	
}
