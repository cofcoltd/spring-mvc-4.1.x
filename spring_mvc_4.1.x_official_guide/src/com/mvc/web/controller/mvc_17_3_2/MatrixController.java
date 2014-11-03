package com.mvc.web.controller.mvc_17_3_2;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.MatrixVariable;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/matrix")
public class MatrixController {

	@RequestMapping(value = { "/", "/start" })
	public String start() {
		return "17.3.2/matrix/start";
	}

	// GET /owners/42;q=11/pets/21;q=22
	@RequestMapping(value = "/owners/{ownerId}/pets/{petId}")
	public void findPet(@PathVariable("ownerId") int ownerId,
			@PathVariable("petId") int petId,
			@MatrixVariable(value = "q", pathVar = "ownerId") int q1,
			@MatrixVariable(value = "q", pathVar = "petId") int q2) {

		System.out.println("q1 : " + q1);
		System.out.println("q2 : " + q2);

	}

	// owners/42;q=11;r=12/pets/21;q=22;s=23
	@RequestMapping(value = "/find/owners/{ownerId}/pets/{petId}")
	public void findPet(@PathVariable("ownerId") int ownerId,
			@PathVariable("petId") int petId,
			@MatrixVariable Map<String, String> matrixVars,
			@MatrixVariable(pathVar = "petId") Map<String, String> petMatrixVars) {

		System.out.println("matrixVars : " + matrixVars);
		System.out.println("petMatrixVars :  " + petMatrixVars);

	}
	
	@RequestMapping("/pet/compare;{petIds}")
	public void compare(
			@MatrixVariable Map<String,String> matrixVars , 
			@MatrixVariable(pathVar = "petIds") Map<String, String> petMatrixVars
			) {
		
		System.out.println("petMatrixVars : "+petMatrixVars);
		
	}

}
