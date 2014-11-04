package com.mvc.web.controller.mvc_17_3_3;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mvc.pojo.Account;
import com.mvc.service.AccountManager;

@Controller
@RequestMapping("/modelAttr")
public class ModelAttributeController {
	
	@Autowired
	private AccountManager accountManager;
	
	@RequestMapping("/")
	public String start() {
		System.out.println("start ... ");
		return "17.3.3/modelAttribute/start";
	}
	
	@ModelAttribute("accounts")
	public List<Account> populateModel(Model model) {
		System.out.println("populateModel .......");
		return accountManager.findAccount();
	}
	
	@RequestMapping("/account/add")
	public String addAccount(@ModelAttribute(value="account") Account account) {
		System.out.println("addAccount");
		accountManager.addAccount(account);
		
		return start();
	}
	


}
