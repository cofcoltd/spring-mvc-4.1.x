package com.mvc.web.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.SimpleControllerHandlerAdapter;

import com.model.Customer;

@Controller
@RequestMapping("/customer")
public class CustomerController{
	
	
	
	private static List<Customer> customers = new ArrayList<Customer>();
	
	@RequestMapping(value="/" , method=RequestMethod.GET)
	public String addCustomer() {
		return "customer/addCustomer"; 
	}
	
	@RequestMapping(value="/add" , method=RequestMethod.POST)
	public String addCustomer(Customer customer , Model model) {
		
		customers.add(customer);
		
		model.addAttribute("customers",customers);
		
		return "customer/customers"; 
	}
	
	
//	@InitBinder
//	public void init(WebDataBinder binder) {
//		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
//		//format.setLenient(false);
//		binder.registerCustomEditor(Date.class, new CustomDateEditor(format, false));
//	}
	 
}
