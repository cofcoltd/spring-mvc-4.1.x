package com.mvc.web.controller.mvc_17_3_2;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/suffix")
public class SuffixController {

	@RequestMapping("/")
	public String start() {
		return "17.3.2/suffix/start";
	}
	
	@RequestMapping("/process/*.pdf")
	public void processSuffix() {
		System.out.println("suffix : /tomas.pdf");
	}
	
	@RequestMapping("/process/person/{personId}.pdf")
	public void processSuffix2(@PathVariable("personId") int personId) {
		System.out.println("suffix : /person.pdf" + " personId : "+personId);
	}
	
}
