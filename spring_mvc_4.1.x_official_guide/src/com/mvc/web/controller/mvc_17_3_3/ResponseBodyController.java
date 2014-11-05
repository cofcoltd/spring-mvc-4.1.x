package com.mvc.web.controller.mvc_17_3_3;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mvc.pojo.Account;
import com.mvc.service.AccountManager;

@Controller
@RequestMapping("/responseBody")
public class ResponseBodyController {

	@Autowired
	private AccountManager accountManager;

	@RequestMapping("/")
	public String start() {
		return "17.3.3/responseBody/start";
	}

	// string
	@RequestMapping(value = "/account/provideUploadInfo", method = RequestMethod.POST)
	public @ResponseBody
	String provideUploadInfo() {
		return "You can upload a photo // @ResponseBody -- string";
	}

	// json
	@RequestMapping(value = "/account/{accountId}", produces = "application/json", method = RequestMethod.POST)
	public @ResponseBody
	Account getAccount_json(@PathVariable("accountId") int accountId) {
		return accountManager.getAccount(accountId);
	}

	// application/xml 
	@RequestMapping(value = "/account/{accountId}/update", produces = "application/xml" , method = RequestMethod.POST) // produces = "application/xml"
	public @ResponseBody
	Account getAccount_xml(@PathVariable("accountId") int accountId) {
		System.out.println("xml");
		Account account = accountManager.getAccount(accountId);
		return account;
	}

	//ParameterizedTypeReference
	@RequestMapping(value = "/account/map",produces = "application/json", method = RequestMethod.POST)
	public @ResponseBody Map<String, ? extends Object> getMap() {
		
		Map<String , Account> maps = new HashMap<String , Account>();
		int index = 0;
		for (Account acount : accountManager.findAccount()) {
			maps.put( String.valueOf(index++) , acount);
		}
		
		return maps;
	}

}
