package com.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloController {

	@RequestMapping(value = { "/", "/welcome**" }, method = RequestMethod.GET)
	public ModelAndView welcomePage() {

		ModelAndView mv = new ModelAndView();
		mv.addObject("title", "spring security Hello World");
		mv.addObject("message", "This is welcome page!");
		mv.setViewName("hello");
		
		return mv;
	}

	@RequestMapping(value = "/admin**", method = RequestMethod.GET)
	public ModelAndView adminPage() {
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("title", "Spring Security Hello World");
		mv.addObject("message", "This is protected page!");
		mv.setViewName("admin");
		
		return mv;
	}

}
