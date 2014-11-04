package com.mvc.web.controller.mvc_17_3_3;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.mvc.pojo.Pet;
import com.mvc.service.PetManager;

@Controller
@RequestMapping("/sessionAttr")
@SessionAttributes(value={"pets"})
public class SessionAttributesController {
	
	//buyCart --  pets
	private List<Pet> pets = new ArrayList<Pet>();

	@Autowired
	private PetManager petManager;
	
	@RequestMapping("/")
	public String start() {
		return "17.3.3/sessionAttribute/start";
	}
	
	@ModelAttribute("datas") 
	public List<Pet> initPets(){
		return petManager.getPets();
	}
	
	@ModelAttribute("pets")
	public List<Pet> initCarts(Model model) {
			if(model.containsAttribute("pets")) {
				return pets;
			} else {
				return new ArrayList<Pet>();
			}
	}
	
	@RequestMapping("/pet/add/{petId}")
	public String addPetToCart(@PathVariable("petId") int petId , Model model) {
		
		Pet pet = petManager.getPet(petId);
		
		if(pet != null) {
			pets.add(pet);
		}
		
		model.addAttribute("pets", pets);

		return start();
	}
	
	
	
	
	@RequestMapping("/pet/empty")
	public String clear(SessionStatus status) {
		status.setComplete();
		return "redirect:/index.jsp";
	}
	
	
	
}
