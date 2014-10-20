package com.mvc.web.controller;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang3.ArrayUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.model.Role;

@Controller
@RequestMapping("/role")
public class RoleController {
	
	private static List<Role> roles = new ArrayList<Role>();
	
	static {
		roles.add(new Role(1 ,"add" , "add books"));
		roles.add(new Role(2 ,"remove" , "remove books"));
		roles.add(new Role(3 ,"update" , "modify books"));
		roles.add(new Role(4 , "select" , "display roles"));
	}
	
	@ModelAttribute("roles")
	public List<Role> roles() {
		return roles;
	}
	
	@RequestMapping(value={"/"} , method = RequestMethod.GET)
	public String grantRole() {
		
		return "role/role";
	}
	
	@RequestMapping(value={"/grant"} , method = RequestMethod.POST)
	public String grantRole(Model model ,  @RequestParam(value="roles" , required= true , defaultValue="select") String[] roles) { //List<String>
		System.out.println("you selected role : " + ArrayUtils.toString(roles));
		return "";
	}

	
	
}
