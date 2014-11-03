package com.mvc.web.controller.mvc_17_3_3;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/cookieValue")
public class CookieValueController {

	@RequestMapping("/")
	public String start() {
		return "17.3.3/cookie/start";
	}
	
	@RequestMapping("/displayJSESSIONID")
	public void displayHeaderInfo(@CookieValue("JSESSIONID") String cookie) {
		System.out.println("JSESSIONID : " +cookie );
	}
}
