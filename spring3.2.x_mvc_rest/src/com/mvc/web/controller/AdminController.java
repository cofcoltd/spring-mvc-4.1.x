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
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.method.annotation.SessionAttributesHandler;

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
		return "admin/login";
	}
	

	@RequestMapping(value="/login" , method=RequestMethod.GET)
	public String login(@ModelAttribute("admin") Admin admin , Model model , SessionStatus status) {
		Admin success = getAdmin(admin.getName(), admin.getPwd());
		
		//SessionAttributesHandler().
		if(success !=null ) {
			admin = success;
			return "redirect:/index.jsp";
		} else {
			status.setComplete();
			//throw new AdminException("invidate admin message . ");
			return "redirect:/index.jsp";
		}
		
	}
	
	@ExceptionHandler(value=(AdminException.class))
	public String handlerException(Exception e , Model model) {
		model.addAttribute("error", e.getMessage());
		return "admin/error";
	}
	
	
	public Admin getAdmin(String name , String pwd) {
		
		Admin flag = null;
		
		for (Admin admin : admins) {
			if(name.equals(admin.getName()) && pwd.equals(admin.getPwd())) {
				flag =  admin;
				break;
			}
		}
		return flag;
	}
	
}
