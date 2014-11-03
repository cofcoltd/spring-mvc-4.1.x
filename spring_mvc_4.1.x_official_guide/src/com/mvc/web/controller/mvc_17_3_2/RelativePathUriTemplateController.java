package com.mvc.web.controller.mvc_17_3_2;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/relative")
public class RelativePathUriTemplateController {
	
	@RequestMapping("/")
	public String start() {
		return "17.3.2/relative/start";
	}

	@RequestMapping(value = "/owners/{ownerId}/pets/{petId}", method = RequestMethod.GET, params = "find")
	public void findPet(
			@PathVariable("ownerId") int ownerId,
			@PathVariable("petId") int petId,
			Model model) {
		
		System.out.println("ok , this is findPet method : "+ownerId + " , "+petId);

	}
	@ExceptionHandler(value={Exception.class})
	@RequestMapping(value = "/owners/{ownerId}/pets/{petId}", method = RequestMethod.GET, params = {"update","type=all"})
	public void updatePet(
			@PathVariable("ownerId") int ownerId,
			@PathVariable("petId") int petId,
			Model model , 
			Exception e) {
		
		System.out.println("ok , this is findPet2 method / params:[find , type=1 ] : "+ownerId +" , "+ petId );

	}

}
