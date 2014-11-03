package com.mvc.web.controller.mvc_17_3_3;

import org.apache.commons.lang3.ArrayUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/headerAttr")
public class HeaderAttributesController {

	@RequestMapping("/")
	public String start() {
		return "17.3.3/headerAttr/start";
	}

	@RequestMapping("/displayHeaderInfo")
	public void displayHeaderInfo(
			@RequestHeader("Accept-Encoding") String encoding,
			@RequestHeader("Connection") String Connection , 
			@RequestHeader("Accept") String[] accepts
			) {
		
		System.out.println("Accept-Encoding : "+encoding);
		System.out.println("Connection : "+Connection);
		System.out.println("Accepts : "+ArrayUtils.toString(accepts));
		
	}

}
