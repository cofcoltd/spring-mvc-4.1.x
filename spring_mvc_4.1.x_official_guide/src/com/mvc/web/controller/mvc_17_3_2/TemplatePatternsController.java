package com.mvc.web.controller.mvc_17_3_2;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping("/template")
public class TemplatePatternsController {
	
	@RequestMapping("/")
	public String start() {
		return "17.3.2/pathVariable/start";
	}
	
	
	@RequestMapping(value = "/owners/{ownerId}", method = RequestMethod.GET)
	public void findOwner(@PathVariable(value = "ownerId") String ownerId,
			Model model) {

		System.out.println("findOwner . ownerId : " + ownerId);

	}

	@RequestMapping(value = "/owners/{ownerId}/pets/{petId}", method = RequestMethod.GET)
	public void findPet(@PathVariable(value = "ownerId") String ownerId,
			@PathVariable(value = "petId") String petId, Model model) {

	
		System.out.println("findPet . ownerId :  " + ownerId + " ; petId : "	+ petId);

	}
}
