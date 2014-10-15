package com.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloWorldController {

	@RequestMapping(value = "/welcome**" , method = RequestMethod.GET)
	public ModelAndView welcomePage() {

		ModelAndView mv = new ModelAndView();
		mv.addObject("title", "Spring Security Hello World -- Annotation");
		mv.addObject("message", "This is welcome page!");
		mv.setViewName("hello");
		return mv;

	}

	@RequestMapping(value = "/admin**", method = RequestMethod.GET)
	public ModelAndView adminPage() {

		ModelAndView mv = new ModelAndView();
		mv.addObject("title", "Spring Security Hello World -- Annotation");
		mv.addObject("message", "This is protected page - Admin Page!");
		mv.setViewName("admin");

		return mv;

	}

	@RequestMapping(value = "/dba**", method = RequestMethod.GET)
	public ModelAndView dbaPage() {

		ModelAndView mv = new ModelAndView();
		mv.addObject("title", "Spring Security Hello World");
		mv.addObject("message", "This is protected page - Database Page!");
		mv.setViewName("admin");

		return mv;

	}

}
