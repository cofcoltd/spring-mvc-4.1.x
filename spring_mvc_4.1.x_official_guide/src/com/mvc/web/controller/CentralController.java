package com.mvc.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/central")
public class CentralController {
	
	@RequestMapping("/17.3.2")
	public String mvc_17_3_2() {
		return "17.3.2/main";
	}
	
	@RequestMapping("/17.3.3")
	public String mvc_17_3_3() {
		return "17.3.3/main";
	}

}
