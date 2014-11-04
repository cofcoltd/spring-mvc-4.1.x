package com.mvc.service;

import java.util.ArrayList;
import java.util.List;

import com.mvc.pojo.Pet;

public class PetManager {
	
	private static List<Pet> pets = new ArrayList<Pet>();
	
	static {
		pets.add(new Pet(1, "Alberta"));
		pets.add(new Pet(2, "Delia"));
		pets.add(new Pet(3, "Bonnie"));
		pets.add(new Pet(4, "Cara"));
		pets.add(new Pet(5, "Cathy"));
		pets.add(new Pet(6, "Charlotte"));
		pets.add(new Pet(7, "Daphne"));
	}

	public static List<Pet> getPets() {
		return pets;
	}

	public static void setPets(List<Pet> pets) {
		PetManager.pets = pets;
	}
	
	public Pet getPet(int petId) {
		Pet p = null;
		for (Pet pet : pets) {
			if(petId == pet.getId()) {
				p = pet;
				break;
			}
		}
		return p;
	}
	
	
	

}
