package com.mvc.web.controller.mvc_17_3_3;

import javax.annotation.Generated;

import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Controller;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.support.WebContentGenerator;

@Controller
@RequestMapping("/last")
public class LastModifiedController {

	@RequestMapping("/")
	public String start() {
		return "17.3.3/last-modified/start";
	}
	
	@RequestMapping("/checkServer")
	public String myHandleMethod(WebRequest webRequest, Model model) {

	    long lastModified = System.currentTimeMillis(); // 1. application-specific calculation

	    if (webRequest.checkNotModified(lastModified)) {
	        // 2. shortcut exit - no further processing necessary
	        return null;
	     }
	  
	    // 3. or otherwise further request processing, actually preparing content
	    model.addAttribute("data" , "spring mvc");
	    return start();
	}
	
}
