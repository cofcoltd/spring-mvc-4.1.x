package com.mvc.web.controller.mvc_17_3_3;

import java.util.List;

import org.apache.commons.lang3.ArrayUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/methodParams")
public class MethodParametersController {

	@RequestMapping("/")
	public String Start() {
		return "17.3.3/methodParameters/start";
	}

	@RequestMapping("/process01")
	public void process01(
			@RequestParam(value = "param", defaultValue = "default messge . . .", required = true) String param) {
		System.out.println("process01-param : " + param);
	}

	@RequestMapping("/process02")
	public void process02(
			@RequestParam(value = "p1") List<String> p1 , 
			@RequestParam(value = "p2") String[] p2
			) {
		System.out.println("process02-List:  "+p1);
		System.out.println("process02-[ ] : " + ArrayUtils.toString(p2));
	}
}
